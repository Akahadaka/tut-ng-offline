// angular
import { Component, OnInit }    from '@angular/core';
import { MdSnackBar }           from '@angular/material';

// libraries
import { Observable }           from 'rxjs/Observable';
import { Subscription }         from 'rxjs/Subscription';
import 'rxjs/Rx';

@Component({
    selector: 'app-offline',
    templateUrl: './offline.component.html',
    styleUrls: ['./offline.component.scss']
})
export class OfflineComponent implements OnInit {

    online: Observable<boolean>;

    constructor(public snackBar: MdSnackBar) { 
        this.online = Observable.merge(
            Observable.of(navigator.onLine),
            Observable.fromEvent(window, 'online').map(() => true),
            Observable.fromEvent(window, 'offline').map(() => false)
        );
    }

    ngOnInit() {
    }

}
