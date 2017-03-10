// angular
import { Component, OnInit }            from '@angular/core';
import { Router }                       from '@angular/router';

// services
import { AuthService }                  from '../../auth.service';

// app
//import { moveIn, fallIn, moveInLeft }   from '../../router.animations';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.scss'],
  //animations: [moveIn(), fallIn(), moveInLeft()],
  //host: {'[@moveIn]': ''}
})
export class ProfileComponent implements OnInit {

    name: string = "Stranger";
    error: any;
    state: string = '';
    
    constructor(public authService: AuthService, private router: Router) {
        this.name = authService.name;
    }

    ngOnInit() {
    }

    logout() {
        this.authService.logout().then((success) => {
            this.router.navigateByUrl('/login');
        }).catch((err) => {
            this.error = err;
        });
    }

}
