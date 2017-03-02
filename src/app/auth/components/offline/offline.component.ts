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

    offline: Observable<boolean>;

    constructor(public snackBar: MdSnackBar) { 
        this.offline = Observable.merge(
            Observable.of(navigator.onLine),
            Observable.fromEvent(window, 'online').map(() => false),
            Observable.fromEvent(window, 'offline').map(() => true)
        );
    }

    ngOnInit() {
    }

}
