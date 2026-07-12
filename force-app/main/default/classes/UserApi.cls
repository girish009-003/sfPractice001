public with sharing class UserApi {
  
    public static void getUsers(){

        Http http = New Http();
        HttpRequest req = New HttpRequest();
        req.SetHeader('Content-Type','application/json');
        req.SetMethod('GET');
        req.SetEndPoint('https://jsonplaceholder.typicode.com/users');
        HttpResponse res = http.send(req);
        if(res.getStatusCode()==200){
            String resBody = res.getBody();
            List<UsersWrapper> data = (List<UsersWrapper>)JSON.deserialize(resBody, List<UsersWrapper>.class);

             //UsersWrapper data = (UsersWrapper)JSON.deserialize(resBody, UsersWrapper.class);
             System.debug('data' + data);
        }
        system.debug(res.getBody());
    }

    public static void createUser(){
        String body = '{"userId": 10,"id": 94,"title": "qui qui voluptates illo iste minima","body": "aspernatur expedita soluta quo ab ut similique\nexpedita dolores amet\nsed temporibus distinctio magnam saepe deleniti\nomnis facilis nam ipsum natus sint similique omnis"}';
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.SetHeader('accept','application/json');
        req.SetMethod('POST');
        req.SetBody(body);
        req.SetEndPoint('https://jsonplaceholder.typicode.com/posts');
        HttpResponse res = http.send(req);
          system.debug(res.getStatusCode());
        system.debug(res.getBody());
    }
}