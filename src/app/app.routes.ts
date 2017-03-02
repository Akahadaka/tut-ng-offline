// angular
import { ModuleWithProviders }          from '@angular/core';
import { Routes, RouterModule }         from '@angular/router';

// services
//import { AuthGuard }                    from './auth.service';

// app
import { AppComponent }                 from './app.component';

export const _APP_ROUTES: Routes = [
    { path: '', redirectTo: 'login', pathMatch: 'full' },
    //{ path: 'members', component: MembersComponent }//, canActivate: [AuthGuard] }
]

export const APP_ROUTES: ModuleWithProviders = RouterModule.forRoot(_APP_ROUTES);
