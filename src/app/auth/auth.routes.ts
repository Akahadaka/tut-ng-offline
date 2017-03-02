// angular
import { ModuleWithProviders }          from '@angular/core';
import { Routes, RouterModule }         from '@angular/router';

// app
import { LoginComponent }               from './components/login/login.component';

export const _AUTH_ROUTES: Routes = [
    //{ path: '', redirectTo: 'login', pathMatch: 'full' },
    { path: 'login', component: LoginComponent },
    //{ path: 'signup', component: SignupComponent },
    //{ path: 'login-email', component: EmailComponent },
    //{ path: 'members', component: MembersComponent }//, canActivate: [AuthGuard] }

]

export const AUTH_ROUTES: ModuleWithProviders = RouterModule.forChild(_AUTH_ROUTES);

