System.register(['angular2/core', 'angular2/common', 'angular2/http', 'rxjs/Rx', 'angular2/router'], function(exports_1, context_1) {
    "use strict";
    var __moduleName = context_1 && context_1.id;
    var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
        var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
        if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
        else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
        return c > 3 && r && Object.defineProperty(target, key, r), r;
    };
    var __metadata = (this && this.__metadata) || function (k, v) {
        if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
    };
    var core_1, common_1, http_1, router_1;
    var RegSobaComponent;
    return {
        setters:[
            function (core_1_1) {
                core_1 = core_1_1;
            },
            function (common_1_1) {
                common_1 = common_1_1;
            },
            function (http_1_1) {
                http_1 = http_1_1;
            },
            function (_1) {},
            function (router_1_1) {
                router_1 = router_1_1;
            }],
        execute: function() {
            RegSobaComponent = (function () {
                function RegSobaComponent(builder, http, router) {
                    this.http = http;
                    this.router = router;
                    this.registerForm = builder.group({
                        ime: ["", common_1.Validators.required],
                        sprat: ["", common_1.Validators.required],
                        kreveti: ["", common_1.Validators.required],
                        m2: ["", common_1.Validators.required],
                        tv: ["", common_1.Validators.required],
                        internet: ["", common_1.Validators.required],
                        djakuzi: ["", common_1.Validators.required],
                        rezervacija: ["", common_1.Validators.required],
                    });
                }
                RegSobaComponent.prototype.dodajSobu = function () {
                    var _this = this;
                    var data = "&ime=" + this.registerForm.value.ime + "&sprat=" + this.registerForm.value.sprat +
                        "&kreveti=" + this.registerForm.value.kreveti + "&m2=" + this.registerForm.value.m2 +
                        "&tv=" + this.registerForm.value.tv + "&internet=" + this.registerForm.value.internet +
                        "&djakuzi=" + this.registerForm.value.djakuzi + "&rezervacija=" + this.registerForm.value.rezervacija;
                    var headers = new http_1.Headers();
                    headers.append('Content-Type', 'application/x-www-form-urlencoded');
                    this.http.post('http://localhost/MetHotels/regsoba.php', data, { headers: headers })
                        .map(function (res) { return res; })
                        .subscribe(function (data) { return _this.postResponse = data; }, function (err) { return alert(JSON.stringify(err)); }, function () {
                        if (_this.postResponse._body == "ok") {
                            alert("Uspesno dodavanje sobe");
                            _this.router.parent.navigate(['./MainPage']);
                        }
                        else {
                            alert("Neuspesno dodavanje sobe");
                        }
                    });
                };
                RegSobaComponent = __decorate([
                    core_1.Component({
                        selector: 'RegSoba',
                        templateUrl: 'app/regsoba/regsoba.html',
                        directives: [common_1.FORM_DIRECTIVES],
                        viewBindings: [common_1.FORM_BINDINGS]
                    }), 
                    __metadata('design:paramtypes', [common_1.FormBuilder, http_1.Http, router_1.Router])
                ], RegSobaComponent);
                return RegSobaComponent;
            }());
            exports_1("RegSobaComponent", RegSobaComponent);
        }
    }
});
//# sourceMappingURL=regsoba.component.js.map