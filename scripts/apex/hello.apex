// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
Map<String,Integer> students = New Map<String,Integer>();
students.put('ram',50);
students.put('sham',90);
students.put('maxi',60);
students.put('Jhon',40);
students.put('Athur',80)
UserApi.createUser();