class PlayerStats
{
  int kills, damages, assists, dbno;
  String name, survived;
  PlayerStats (int _kills, int _damages, int _assists, int _dbno, String _name, String _survived)
  {
    kills = _kills;
    damages = _damages;
    assists = _assists;
    dbno = _dbno;
    name = _name;
    survived = _survived;
  }

}

class Team
{
  var members = [];
  int rank, totalKills, totalDamage;
  String avgSurvived, avgTraveled, map;

  Team (var _members, int _rank, int _totalKills, int _totalDamage, String _avgSurvived, String _avgTraveled, String _map)
  {
    members = _members;
    rank = _rank;
    totalKills = _totalKills;
    totalDamage = _totalDamage;
    avgSurvived = _avgSurvived;
    avgTraveled = _avgTraveled;
    map = _map;
  }
}

class PlayerProfile
{
  String name, avgSurviveTime;
  var winRatio, topTenRatio, longestKill, headShotRatio, avgRank, kda;
  int mostKills;

  PlayerProfile(String _name, String _avgSurviveTime, var _winRatio, var _topTenRatio, var _longestKill, var _headShotRatio, var _avgRank, var _kda, int _mostKills)
  {
    name = _name;
    avgSurviveTime = _avgSurviveTime;
    winRatio = _winRatio;
    topTenRatio = _topTenRatio;
    longestKill = _longestKill;
    headShotRatio = _headShotRatio;
    avgRank = _avgRank;
    kda = _kda;
    mostKills = _mostKills;
  }

}