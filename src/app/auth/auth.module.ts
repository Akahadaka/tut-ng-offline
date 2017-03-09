// angular
import { NgModule }                     from '@angular/core';
import { CommonModule }                 from '@angular/common';
import { MaterialModule }               from '@angular/material';
import { FlexLayoutModule }             from '@angular/flex-layout';

// app services
import { AuthService }                  from './auth.service';

// app routes
import { AUTH_ROUTES }                  from './auth.routes';

// app
import { LoginComponent }               from './components/login/login.component';
import { OfflineComponent }             from './components/offline/offline.component';

@NgModule({
    declarations: [
        LoginComponent,
        OfflineComponent
    ],
    imports: [
        CommonModule,
        AUTH_ROUTES,
        MaterialModule,
        FlexLayoutModule
    ],
    exports: [
       LoginComponent,
       OfflineComponent
    ],
    providers: [
        AuthService
    ],
    entryComponents: [
        OfflineComponent
    ]
})
export class AuthModule { }
