public with sharing class StudentManager {
  
    public class student{
        public  String name;
        public  Integer marks;
    }

    public static string createStudents(Map<String,Integer> studentsMap){

         List<student> allStudents = New List<student>();

         for(String name:studentsMap.keySet()){
            student s = new student();
            s.name = name;
            s.marks = studentsMap.get(name);
            allStudents.add(s);
         }

         if(allStudents.size()>6){
            return 'Allowed to form a class';
         }

         return 'Dont have enough strenth to form a class';

    }

        public static  string marksAnalyzer(Map<String,Integer> studentsMap){

            List<Integer> marks = studentsMap.values();
            marks.sort();
             Integer max = marks[marks.size()-1];
             System.debug('Max Marks is '+max);
            Integer min = marks[0];
                         System.debug('min Marks is '+min);

             integer sum = 0;
             for(integer i:marks){
                 sum+=i;
             }
             integer avg = math.round(sum/marks.size());
             System.debug('avg Marks is '+avg);
// here students list with marks more then 75

           List<String> studentsWithMoreThen75 = New List<String>();
           for(String name:studentsMap.keySet()){
              if(studentsMap.get(name)>75){
                studentsWithMoreThen75.add(name);
              }
           }
                        System.debug('students With More Then 75 '+studentsWithMoreThen75);


            return '';


    }
}