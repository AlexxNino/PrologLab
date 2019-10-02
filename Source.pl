:- dynamic precipitation/0,raining/0,snowing/0,freezing/0.
precipitation:-snowing.
precipitation:-raining.
snowing.
snowing:-freezing,precipitation.
raining:- \+freezing,precipitation.
freezing:- snowing.
returns.

mammal(horse).
mammal(human).
arms(human,2).
arms(horse,0).
legs(X,4):-mammal(X),arms(X,0).
legs(X,2):-mammal(x),arms(X,2).
mammal(X):-legs(X,2),!,arms(X,2).
mammal(X):-legs(X,4).
arms(X,2):-mammal(X),legs(X,2).
arms(X,0):-mammal(X),legs(X,2).

parent(jill,bill).
parent(sarah,bill).
parent(sam,jill).
parent(ana,jill).
parent(jan,sarah).
parent(smith,sarah).
grandparent(A,C):- parent(A,X),parent(X,C).
sibling(A,B):- parent(A,X),parent(B,X),not(A=B).
cousin(A,B):- parent(A,X),parent(B,Y),sibling(X,Y),not(A=B).

gcd(X, Y,G) :- X = Y,G=X.
gcd(X, Y,G) :- X < Y, Y1 is Y - X, gcd(X, Y1,G).
gcd(X, Y,G) :- X > Y, gcd(Y, X,G).

last([X]):-
        write("\nLast = "),
        write(X).
    last([Y|Tail]):-
        last(Tail).


