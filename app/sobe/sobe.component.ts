import { Component, Directive } from 'angular2/core';
import {Http, HTTP_PROVIDERS, Headers} from 'angular2/http';
import {Router} from 'angular2/router';
import 'rxjs/Rx';
import {FORM_DIRECTIVES, FORM_BINDINGS} from 'angular2/common';
import {SearchPipe} from '../pipe/search';
import {SearchPipe2} from '../pipe/search2';

@Component({
  selector: 'Sobe',
  templateUrl: 'app/sobe/sobe.html',
  pipes: [SearchPipe, SearchPipe2]
})

export class SobeComponent {

  router: Router;
  http: Http;
  kreveti: String = "";
  m2: String = "";

  sobe: Object[];
  constructor(router: Router, http: Http) {
    this.router = router;
    this.http = http;

    var headers = new Headers();

    http.get('http://localhost/MetHotels/sobejson.php', { headers: headers })
      .map(res => res.json())
      .subscribe(sobe => { this.sobe = sobe; });
  }
}