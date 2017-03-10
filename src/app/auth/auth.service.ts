// angular
import { Injectable, OnDestroy }        from '@angular/core';
import { Router, CanActivate }          from '@angular/router';
import { ActivatedRouteSnapshot }       from '@angular/router';
import { RouterStateSnapshot }          from '@angular/router';
import { MdSnackBar }                   from '@angular/material';

// libraries
import { AngularFire }                  from 'angularfire2';
import { AuthProviders, AuthMethods }   from 'angularfire2';
import { Observable }                   from 'rxjs/Observable';
import { Subscription }                 from 'rxjs/Subscription';
//import { Subject }                      from 'rxjs/Subject';
//import { BehaviorSubject }              from 'rxjs/Rx';
//import 'rxjs/Rx';

// app
import { OfflineComponent }             from './components/offline/offline.component';

@Injectable()
export class AuthService {

    private _user: any;
    //private _snackBarRef: any;
    
    private _auth: Subscription
    private _online: Subscription;

    //private _online$: Observable<boolean>;

    constructor(public snackBar: MdSnackBar, public af: AngularFire) {

       this.initOfflineSnackBarMessage();

    }

    set user(user: any) {
        this._user = user;
    }

    get name() {
        return (this._user) ? this._user.auth.displayName : "Stranger";
    }

    get authorised() {
        console.log(this._auth);
        console.log(this._user);
        return (this._user);
    }

    get token() {
        return (this._user) ? this._user.auth.getToken() : null;
    }

    initOfflineSnackBarMessage(){

        let online$: Observable<boolean>;
        let snackBarRef: any;
        
        // Monitor when online
        online$ = Observable.merge(
            Observable.of(navigator.onLine),
            Observable.fromEvent(window, 'online').map(() => true),
            Observable.fromEvent(window, 'offline').map(() => false)
        );
       
        // Display message when offline
        this._online = online$.subscribe((online) => {
            if (snackBarRef && online) { 
                snackBarRef.dismiss();
            } else if (!online) {
                snackBarRef = this.snackBar.openFromComponent(OfflineComponent);
            }
        });
    }

    loginFacebook(): firebase.Promise<any> {
        return this.af.auth.login({
            provider: AuthProviders.Facebook,
            method: AuthMethods.Popup
        });
    }
    
    loginGoogle(): firebase.Promise<any> {
        return this.af.auth.login({
            provider: AuthProviders.Google,
            method: AuthMethods.Popup
        });
    }

    logout(): firebase.Promise<any> {
        return this.af.auth.logout();
    }

    // Unsubscribe from Observables
    // May not be necessary for global
    ngOnDestroy() {
        this._online.unsubscribe();
        this._auth.unsubscribe();
    }

}

@Injectable()
export class AuthGuard implements CanActivate {

    constructor(private router: Router, private af: AngularFire, private authService: AuthService) { }

    canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot): Observable<boolean> {
        return this.af.auth.map((user) => {
            if (user) {
                this.authService.user = user;
                return true;
            } else {
                return false; 
            }
        }).first();
    } 
}
