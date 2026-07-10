public with sharing class NumberAnalyzer {
    
    public static List<String> analyzeNumbers(integer n){
        List<String> numberAnalysis = New List<String>();
        Integer i;
        for(i=1;i<=n;i++) {
            if( math.mod(i, 3)==0){
                numberAnalysis.add('Fizz');
            }
            
            else if( math.mod(i, 5)==0){
                numberAnalysis.add('Buzz');
            }
            
            else if( math.mod(i, 3)==0 && math.mod(i, 5)==0){
                numberAnalysis.add('FizzBuzz');
            }
            else{
                numberAnalysis.add(string.ValueOf(i));
            }
        }
        
        if(!numberAnalysis.isEmpty()){
            return numberAnalysis;
        }
        
        return null;
    }
}