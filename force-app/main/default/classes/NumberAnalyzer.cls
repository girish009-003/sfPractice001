public with sharing class NumberAnalyzer {
    
    public static List<String> analyzeNumbers(integer n){
        List<String> numberAnalysis = New List<String>();
        Integer i;
        for(i=1;i<=n;i++) {
         if (Math.mod(i, 3) == 0 && Math.mod(i, 5) == 0) {
    numberAnalysis.add('FizzBuzz');
}
else if (Math.mod(i, 3) == 0) {
    numberAnalysis.add('Fizz');
}
else if (Math.mod(i, 5) == 0) {
    numberAnalysis.add('Buzz');
}
else {
    numberAnalysis.add(String.valueOf(i));
}
        }
        
        if(!numberAnalysis.isEmpty()){
            return numberAnalysis;
        }
        
        return numberAnalysis;
    }
}