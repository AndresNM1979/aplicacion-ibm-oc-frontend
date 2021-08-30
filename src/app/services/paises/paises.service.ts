import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class PaisesService {

  private API_SERVER = "http://aplicacion-ibm-oc-frontend-git:8080/pais/";

  constructor(
    private httpClient: HttpClient
  ) { }


  public getAllPaises(): Observable<any>{
    return this.httpClient.get(this.API_SERVER);
  }

}
