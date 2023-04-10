% Author:
% Date: 2023-04-04

% keponakan(X, Y) , menikah(X, Y) :- not(sah(menikah(X, Y)).
negate(sah(menikah(X,Y))) :- keponakan(X,Y), menikah(X,Y).
menikah(wati, andi).
anakkandung(wati, budi).
saudarakembar(budi, andi).
saudarakandung(X, Y) :- saudarakembar(X,Y).
% saudarakembar(X, Y) :- saudarakandung(X,Y).
% anakkandung(X,Y) , saudarakandung(Y,Z) :- keponakan(X,Z).
keponakan(X,Z) :- anakkandung(X,Y), saudarakandung(Y,Z).