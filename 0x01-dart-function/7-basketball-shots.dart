int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  var teamOne = 0;
  var teamTwo = 0;

  teamA.forEach((key, value) {
    if (key == 'Free throws')
      teamOne += value;
    else if (key == '2 pointer')
      teamOne += value * 2;
    else if (key == '3 pointer') teamOne += value * 3;
  });

  teamB.forEach((key, value) {
    if (key == 'Free throws')
      teamTwo += value;
    else if (key == '2 pointer')
      teamTwo += value * 2;
    else if (key == '3 pointer') teamTwo += value * 3;
  });

  if (teamOne > teamTwo)
    return 1;
  else if (teamOne == teamTwo)
    return 0;
  else
    return 2;
}