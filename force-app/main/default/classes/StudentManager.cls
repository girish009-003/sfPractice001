public with sharing class StudentManager {
  
    public class Student{
        public  String name;
        public  Integer marks;
    }



 public static List<Student> createStudents() {
     Student s1 = new Student();
     s1.name = 'Sham';
     s1.marks = 60;

     Student s2 = new Student();
     s2.name = 'Ram';
     s2.marks = 80;

     Student s3 = new Student();
     s3.name = 'Maxi';
     s3.marks = 84;

     Student s4 = new Student();
     s4.name = 'Jhon';
     s4.marks = 78;

     Student s5 = new Student();
     s5.name = 'Autur';
     s5.marks = 55;

     Student s6 = new Student();
     s6.name = 'Girish';
     s6.marks = 90;

    return New List<Student>{s1,s2,s3,s4,s5,s6};

 }         

 public static Map<String,Integer> createStudentMap(List<Student> students){
    Map<String,Integer> studentsMap = New Map<String,Integer>();

    for(Student s:students){
        studentsMap.put(s.name,s.marks);
    }


    return studentsMap;


 }  
  public static void analyzeMarks(Map<String,Integer> studentsMap)  {

    List<Integer> marks = studentsMap.values();
    marks.sort();

    Decimal maxMarks = marks[marks.size()-1];
    Decimal minMarks = marks[0];
    Decimal sum = 0;
    List<String> studentsWithMarksAbove75 = New List<String>();
    for(String name:studentsMap.keySet()){
      sum+= studentsMap.get(name);
      if( studentsMap.get(name)>75){
        studentsWithMarksAbove75.add(name);
      }

    }
    Decimal avg = sum/marks.size();

    System.debug('Max Marks is '+maxMarks);
    System.debug('Min Marks is '+minMarks);
    System.debug('Avg '+avg);
    System.debug('studentsWithMarksAbove75'+studentsWithMarksAbove75);


}         
  public static void run()  {

    List<Student> students = createStudents();
    Map<String,Integer> studentsMap = createStudentMap(students);
    analyzeMarks(studentsMap);

  }             

}