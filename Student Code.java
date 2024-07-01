package com.mycompany.student;
public class Student {

   
    static String university = "University of Liberal Arts of Bangladesh";
    static int totalStudents = 0;

    
    int id;
    String name;
    String department;
    double cgpa;

   
    public Student(int id, String name, String department, double cgpa) {
        this.id = id;
        this.name = name;
        this.department = department;
        this.cgpa = cgpa;
        totalStudents++; 
    }

    
    public void displayDetails() {
        System.out.println("Student ID: " + id);
        System.out.println("Name: " + name);
        System.out.println("Department: " + department);
        System.out.println("CGPA: " + cgpa);
        System.out.println("University: " + university);
    }

    
    public static void displayTotalStudents() {
        System.out.println("Total Students: " + totalStudents);
    }

    public static void main(String[] args) {
       
        Student student1 = new Student(223014062, "Kauser Ahmed", "CSE", 3.96);
        Student student2 = new Student(223014092, "Saiful Islam", "CSE", 4.00);
        Student student3 = new Student(223014046, "Maruf Hossain", "CSE", 3.85);

       
        student1.displayDetails();
        System.out.println();
        student2.displayDetails();
        System.out.println();
        student3.displayDetails();
        System.out.println();

        
        Student.displayTotalStudents();
    }
}


