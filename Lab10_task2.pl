user(Leena, 1234).
user(Lara, 3333).
user(Lama, 4567).

login :-
    attempt_login(3).

attempt_login(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl, !.

attempt_login(Attempts) :-
    Attempts > 0,
    write('Enter username (followed by a period): '),
    read(Username),
    write('Enter password (followed by a period): '),
    read(Password),
    check_credentials(Username, Password, Attempts).

check_credentials(Username, Password, _) :-
    user(Username, Password),
    write('Login Successful'), nl, !.

check_credentials(_, _, Attempts) :-
    write('Login Unsuccessful'), nl,
    Remaining is Attempts - 1,
    attempt_login(Remaining).
