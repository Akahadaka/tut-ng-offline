// angular
import { BrowserModule }                from '@angular/platform-browser';
import { NgModule }                     from '@angular/core';
import { FormsModule }                  from '@angular/forms';
import { HttpModule }                   from '@angular/http';
import { MaterialModule }               from '@angular/material';
import { FlexLayoutModule }             from '@angular/flex-layout';

// libraries
import { AngularFireModule }            from 'angularfire2';
import { AngularFireOfflineModule }     from 'angularfire2-offline';

// app modules
import { AuthModule }                   from './auth/auth.module';

// app routes
import { APP_ROUTES }                   from './app.routes';

// app
import { AppComponent }                 from './app.component';

// Firebase
//import * as firebaseConfig from '../firebase.config.json';
export const firebaseConfig = {
    apiKey: "AIzaSyCLwojHKZZ8dz7N3QM1ov-Gil6dZtywk5s",
    authDomain: "tut-ng-offline.firebaseapp.com",
    databaseURL: "https://tut-ng-offline.firebaseio.com",
    storageBucket: "tut-ng-offline.appspot.com",
    messagingSenderId: "662991814038"
}

@NgModule({
    declarations: [
        AppComponent
    ],
    imports: [
        BrowserModule,
        FormsModule,
        HttpModule,
        AngularFireModule.initializeApp(firebaseConfig),
        AngularFireOfflineModule,
        AuthModule,
        APP_ROUTES,
        MaterialModule.forRoot(),
        FlexLayoutModule.forRoot()
    ],
    providers: [],
    bootstrap: [
        AppComponent
    ]
})
export class AppModule { }
