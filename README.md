# library-book-managment-system.

## Overview

This project implements a simple library book management system using Prolog. It manages books, members, and borrowing records, allowing users to query book availability and track borrowing transactions declaratively.

---

## Features

- Stores book and member data
- Tracks which member borrowed which book
- Lists available and borrowed books
- Enables book availability and member-borrowed search

---

## How to Use (in SWISH Prolog Online)

1. **Open SWISH Prolog**
   - Visit [https://swish.swi-prolog.org](https://swish.swi-prolog.org)

2. **Paste or Upload the Code**
   - Paste the Prolog code or upload `library_management.pl` in SWISH

3. **Try These Queries**
   - List all books:
     ```
     QUERY:?-book(BookID, Title, Author).
     ```
   - List members:
     ```
     QUERY:?-member(Member).
     ```
   - List available books:
     ```
     QUERY:?-list_available_books(BookID, Title).
     ```
   - Who borrowed a book?
     ```
     QUERY:?-who_borrowed(101, Member).
     ```
   - Books borrowed by a member:
     ```
     QUERY:?-books_borrowed_by(alice, BookID, Title).
     ```
   - All borrowing records:
     ```
     QUERY:?-borrowing_record(Member, BookID, Title).
     ```
   - Is a book available?
     ```
     QUERY:?-book_available(104).
     ```
4. **Review and Save**
   - View results in SWISH. Save and export results/screenshots for documentation.

---

## Author

Name: SIDHARTH ,
REG.NO.: 25BCG10007 ,
Course: FUNDAMENTALS IN AI AND ML

---



