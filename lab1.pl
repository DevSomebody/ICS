% ����� � ��p������� �����. ��p�� � ��p��� �����. ��������� � p���� �����. ����, P���p � ���� � ������; P���p � p����, � ���� � �����. ��� ��������, ����p��� ������� ��� � ����, ����� p����������. ��� ������� ����� ��p���� � ��p�������� ���������. ���� ������� ����� �������� �������� �����, ����p�� �� �������� �������������� ����.

cat(butsy).
cat(corny).
cat(mactavity).
dog(flash).
dog(rover).
dog(spot).

color(butsy, brown).
color(corny, black).
color(mactavity, orange).
color(rover, orange).
color(spot, white).

color(flash, spotted).

% ��� ��������, ����p��� ������� ��� � ����, ����� p����������. ���
% ������� ����� ��p���� � ��p�������� ���������. ���� ������� �����
% �������� �������� �����, ����p�� �� �������� �������������� ����.

has(tom, X) :- cat(X), (color(X, black); color(X, brown)).
has(kate, Y) :- dog(Y), not(has(tom,Y)), \+ color(Y, white).

% ���� ������� ���������, ���� ���� �� ������� ����� � ���� ���� �� ����� p����������.

has(alan, mactavity) :- not(has(kate, butsy)), not(has(_,spot)).

% /-----------/
% /--�������--/
% /-----------/

% ����� �������� �� ����� ������?
(cat(Animal); dog(Animal)), not(has(_, Animal)).

% ������� ���� ����� � ������� �� ����.
dog(Animal), color(Animal, Color).

% ������� ���� ��������, ����p��� ������� ���.
(dog(Animal); cat(Animal)), has(tom, Animal).

% ��p�������� ���� ����� �����.
dog(Animal), has(Kate, Animal).
