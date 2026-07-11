public with sharing class UserApi {
  
    public static void getUsers(){

        Http http = New Http();
        HttpRequest req = New HttpRequest();
        req.SetHeader('Content-Type','application/json');
        req.SetMethod('GET');
        req.SetEndPoint('https://jsonplaceholder.typicode.com/users');
        HttpResponse res = http.send(req);

        system.debug(res.getStatusCode());
        system.debug(res.getBody());
    }
}