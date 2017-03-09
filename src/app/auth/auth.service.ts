// angular
import { Injectable, OnDestroy }        from '@angular/core';
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
    private _snackBarRef: any;
    private _auth: Subscription
    private _online: Subscription;

    public online: Observable<boolean>;
    //private _offline = new BehaviorSubject<any>(this.online);

    constructor(public snackBar: MdSnackBar, public af: AngularFire) {
        // Get User details
        this._auth = this.af.auth.subscribe((user) => {
            if (user){
                this._user = user;
            }
        });

        // Check if online
        this.online = Observable.merge(
                Observable.of(navigator.onLine),
                Observable.fromEvent(window, 'online').map(() => true),
                Observable.fromEvent(window, 'offline').map(() => false)
            );
             //console.log(o);
        //});
        //this._offline.next(this.online);
            this._online = this.online.subscribe((online) => {
                if (this._snackBarRef && online) { 
                    this._snackBarRef.dismiss();
                } else if (!online) {
                    this._snackBarRef = this.snackBar.openFromComponent(OfflineComponent);
                }
            });
    }

    get name() {
        return this._user.auth.displayName;
    }

    /*get connected(): Observable<any> {
        console.log(this._offline);
        return this._offline.asObservable();
        //return this._online;
    }*/

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

    // @TODO Unsubscribe from Observables
    ngOnDestroy() {
        this._online.unsubscribe();
        this._auth.unsubscribe();
    }

}

