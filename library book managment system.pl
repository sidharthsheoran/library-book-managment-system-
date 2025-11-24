% --- Books Database ---
book(101, 'Foundation', asimov).
book(102, '1984', orwell).
book(103, 'Brave New World', huxley).
book(104, 'The Hobbit', tolkien).

% --- Members Database ---
member(alice).
member(bob).
member(charlie).

% --- Borrowing Records: borrowed(Member, BookID) ---
borrowed(alice, 101).
borrowed(bob, 103).

% --- Rule: Is book available? ---
book_available(BookID) :-
    book(BookID, _, _),
    \+ borrowed(_, BookID).

% --- Rule: Who has borrowed a particular book? ---
who_borrowed(BookID, Member) :-
    borrowed(Member, BookID).

% --- Rule: List all books borrowed by a member ---
books_borrowed_by(Member, BookID, Title) :-
    borrowed(Member, BookID),
    book(BookID, Title, _).

% --- Rule: List all available books ---
list_available_books(BookID, Title) :-
    book_available(BookID),
    book(BookID, Title, _).

% --- Rule: List all borrowing records ---
borrowing_record(Member, BookID, Title) :-
    borrowed(Member, BookID),
    book(BookID, Title, _).
