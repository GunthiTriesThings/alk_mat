disp('Első metszéspont keresése az -1 kezdőponttal')
newton(@fgv, @dfgv, -1, 10^-4);
disp('3. lépés után a közelítő megoldás: -1.241143')

disp('Első metszéspont keresése az 2 kezdőponttal')
newton(@fgv, @dfgv, 2, 10^-4);
disp('3. lépés után a közelítő megoldás: 2.211438')