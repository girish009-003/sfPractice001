public with sharing class FutureDemo {
   
    @future
    public static void sendWelcomeEmail(String email){

        system.debug('Sending welcome email to '+email);

    }

    // how to invoke in other class
    FutureDemo.sendWelcomeEmail('test@test.com')
}