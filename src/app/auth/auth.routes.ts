// angular
import { ModuleWithProviders }          from '@angular/core';
import { Routes, RouterModule }         from '@angular/router';

// app
import { LoginComponent }               from './components/login/login.component';
import { ProfileComponent }             from './components/profile/profile.component';

// services
import { AuthGuard }                    from './auth.service';

export const _AUTH_ROUTES: Routes = [
    //{ path: '', redirectTo: 'login', pathMatch: 'full' },
    { path: 'login', component: LoginComponent },
    { path: 'profile', component: ProfileComponent, canActivate: [AuthGuard] }
    //{ path: 'signup', component: SignupComponent },
    //{ path: 'login-email', component: EmailComponent }
]

export const AUTH_ROUTES: ModuleWithProviders = RouterModule.forChild(_AUTH_ROUTES);

