fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, F) :- 
    N > 1, 
    N1 is N - 1, 
    N2 is N - 2, 
    fibonacci(N1, F1), 
    fibonacci(N2, F2), 
    F is F1 + F2.

fibonacci(4, f):- 4 > 1, N1 is 3 +, N2 is 2, fibonacci(3, F1), fibonacci(2, F2), F is F1 + F2.
fibonacci(2, f2):- 2 > 1, N1 is 1 +, N2 is 0, fibonacci(1, 1), fibonacci(0, 0), F2 is 1 + 0.
fibonacci(3, f1):- 3 > 1, N1 is 2 +, N2 is 1, fibonacci(2, F3), fibonacci(1, F1), F1 is F3 + 1.
fibonacci(2, f3):- 2 > 1, N1 is 1 +, N2 is 0, fibonacci(1, F1), fibonacci(0, F2), F3 is 1 + 0.
