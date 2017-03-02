// angular
import { Injectable } from '@angular/core';

// libraries
import { AngularFire }                  from 'angularfire2';
import { AuthProviders, AuthMethods }   from 'angularfire2';

@Injectable()
export class AuthService {

    constructor(public af: AngularFire) { }


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
}

