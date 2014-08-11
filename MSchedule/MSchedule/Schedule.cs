using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MSchedule
{
    public class Schedule
    {
        private IList<Game> games;

        public Schedule()
        {
            games = new List<Game>();
        }

        public IList<Game> GetSchedule()
        {
            return games;
        }

        public IList GetHomeGames()
        {
            return games.Where(h => h.venue == "Michigan Stadium").ToList();
        }

        public Game GetGameByNumber(int number)
        {
            return games.First(g => g.gameNumber == number);
        }

        public void AddToSchedule(Game game)
        {
            games.Add(game);
        }
    }
}
