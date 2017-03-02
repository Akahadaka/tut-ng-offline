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

@NgModule({
    declarations: [
        LoginComponent
    ],
    imports: [
        CommonModule,
        AUTH_ROUTES,
        MaterialModule,
        FlexLayoutModule
    ],
    providers: [
        AuthService
    ]
})
export class AuthModule { }
