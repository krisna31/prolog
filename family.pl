% Author:
% Date: 2023-04-04

%anak(eko, anto).
ayah(anto, eko).
%anak(anto, andi).
ayah(andi, anto).
ibu(ani, anto).
ibu(ina, eko).
ayah(andi, doni).
ayah(anto, eka).
ibu(ani, doni).
ibu(ina, eka).

% kakek(X,Y) :- anak(Y,Z), anak(Z,X).
kakek(X,Y) :- ayah(X,Z), ayah(Z,Y).
cucu(X,Y) :- kakek(Y,X).

pasangan(X,Y) :- ayah(X, Anak), ibu(Y, Anak).
pasangan(X,Y) :- ayah(Y, Anak), ibu(X, Anak).

saudarakandung(X, Y) :- ayah(Ayah, X), ayah(Ayah, Y), ibu(Ibu, X), ibu(Ibu, Y) .

keponakan(X,Y) :- ayah(_ayah, X), saudarakandung(_ayah, Y).

ipar(X,Y) :- pasangan(X, _saudara), saudarakandung(_saudara, Y).