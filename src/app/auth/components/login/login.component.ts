// angular
import { Component, OnInit }            from '@angular/core';
import { HostBinding }                  from '@angular/core';
import { Router }                       from '@angular/router';
import { DomSanitizer }                 from '@angular/platform-browser';
import { MdIconRegistry }               from '@angular/material'

// libraries
import { AngularFire }                  from 'angularfire2';
import { AuthProviders, AuthMethods }   from 'angularfire2';

// app service
import { AuthService }                  from '../../auth.service';

// app
//import { moveIn }                       from '../../router.animations';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss'],
  //animations: [moveIn()],
  //host: {'[@moveIn]': ''}
})
export class LoginComponent implements OnInit {

    error: any;

    constructor(
        public authService: AuthService, 
        private router: Router,
        private mdIconRegistry: MdIconRegistry,
        private sanitizer: DomSanitizer
    ) {
        // SVG Icons
        mdIconRegistry.addSvgIcon('login-page-lock', 
            sanitizer.bypassSecurityTrustResourceUrl('/assets/images/lock.svg')
        );

        mdIconRegistry.addSvgIcon('sign-in-with-google', 
            sanitizer.bypassSecurityTrustResourceUrl('/assets/images/google.svg')
        );
    }

/*
    constructor(public af: AngularFire, private router: Router) {
        this.af.auth.subscribe(auth => {
            if (auth) {
                this.router.navigateByUrl('/members');
            } 
        });
    }

    loginFacebook() {
        this.af.auth.login({
            provider: AuthProviders.Facebook,
            method: AuthMethods.Popup
        }).then((success) => {
            this.router.navigate(['/members']);
        }).catch((err) => {
            this.error = err;
        });
    }
    
    loginGoogle() {
        this.af.auth.login({
            provider: AuthProviders.Google,
            method: AuthMethods.Popup
        }).then((success) => {
            this.router.navigate(['/members']);
        }).catch((err) => {
            this.error = err;
        });
    }
*/

    ngOnInit() {
    }

}
