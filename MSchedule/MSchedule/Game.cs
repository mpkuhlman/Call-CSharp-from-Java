using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MSchedule
{
    public class Game
    {
        public int gameNumber { get; private set; }
        public DateTime date { get; private set; }
        public string opponent { get; private set; }
        public string venue { get; private set; }

        public Game() { }
        public Game(int number, DateTime theDate, string opp, string theVenue)
        {
            gameNumber = number;
            date = theDate;
            opponent = opp;
            venue = theVenue;
        }

        public void SetGameNumber(int number)
        {
            gameNumber = number;
        }

        public void SetDate(DateTime date)
        {
            this.date = date;
        }

        public void SetOpponent(string opp)
        {
            opponent = opp;
        }

        public void SetVenue(string venue)
        {
            this.venue = venue;
        }
    }
}
