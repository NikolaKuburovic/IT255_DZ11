import {Component} from 'angular2/core';
import {RouteConfig, ROUTER_DIRECTIVES} from 'angular2/router';
import { MainPageComponent } from './mainpage/mainpage.component';
import { AboutUsComponent } from './aboutus/aboutus.component';
import { SobeComponent } from './sobe/sobe.component';
import { RegSobaComponent } from './regsoba/regsoba.component';
import { RegHotelComponent } from './reghotel/reghotel.component';
import {Pipe} from 'angular2/core';
@Component({
    selector: 'moja-aplikacija',
    templateUrl: 'app/router.html',
    directives: [ROUTER_DIRECTIVES]
})
@RouteConfig([
    { path: '/', name: 'MainPage', component: MainPageComponent, useAsDefault: true },
    { path: '/aboutus', name: 'AboutUs', component: AboutUsComponent },
    { path: '/sobe', name: 'Sobe', component: SobeComponent },
    { path: '/regsoba', name: 'RegSoba', component: RegSobaComponent },
    { path: '/reghotel', name: 'RegHotel', component: RegHotelComponent }
])
export class AppComponent {
}