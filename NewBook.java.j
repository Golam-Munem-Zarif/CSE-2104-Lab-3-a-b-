package com.mycompany.newbook;

import java.util.Scanner;

public class NewBook {

    static Scanner input = new Scanner(System.in);
    static String genre;
    static int totalBooks = 0;

    String title;
    String author;
    int year;

    public NewBook(String genre, String title, String writer, int year) {
        NewBook.genre = genre;
        this.title = title;
        this.author = author;
        this.year = year;
        totalBooks++;
    }

    public void displayDetails() {
        System.out.println("Title: " + title);
        System.out.println("Author: " + author);
        System.out.println("Year: " + year);
        System.out.println("Genre: " + genre);
    }

    public static void displayTotalBooks() {
        System.out.println("Total Books: " + totalBooks);
    }

    public static void main(String[] args) {
        System.out.println("Enter the genre: ");
        genre = input.nextLine();

        System.out.println("Enter the number of books: ");
        int numberOfBooks = input.nextInt();
        input.nextLine(); 

        NewBook[] books = new NewBook[numberOfBooks];

        for (int i = 0; i < numberOfBooks; i++) {
            System.out.println("Enter details for book " + (i + 1));

            System.out.println("Enter title: ");
            String title = input.nextLine();

            System.out.println("Enter author: ");
            String author = input.nextLine();

            System.out.println("Enter year: ");
            int year = input.nextInt();
            input.nextLine();

            books[i] = new NewBook(genre, title, author, year);
        }

        for (NewBook book : books) {
            book.displayDetails();
            System.out.println();
        }
        
        NewBook.displayTotalBooks();
    }
}
