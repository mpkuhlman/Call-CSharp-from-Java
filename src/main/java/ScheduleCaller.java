
import net.sf.jni4net.Bridge;
import mschedule.*;
import system.DateTime;
import system.collections.*;

import java.io.IOException;

public class ScheduleCaller {

    public static void main(String[] args) throws IOException {

        Bridge.init();
        Bridge.LoadAndRegisterAssemblyFrom(new java.io.File("MSchedule.j4n.dll"));

        Game ndGame = new Game();
        ndGame.SetGameNumber(2);
        ndGame.SetVenue("Notre Dame Stadium");
        ndGame.SetDate(new DateTime(2014, 9, 6));
        ndGame.SetOpponent("Notre Dame");

        Game mnGame = new Game();
        mnGame.SetGameNumber(5);
        mnGame.SetVenue("Michigan Stadium");
        mnGame.SetDate(new DateTime(2014, 9, 27));
        mnGame.SetOpponent("Minnesota");

        Schedule mSchedule = new Schedule();

        mSchedule.AddToSchedule(ndGame);
        mSchedule.AddToSchedule(mnGame);

        IList homeGames = mSchedule.GetHomeGames();
        IEnumerator enumerator = homeGames.GetEnumerator();
        System.out.println("Home games against:");

        while(enumerator.MoveNext()) {
            Game curGame = (Game) enumerator.getCurrent();
            System.out.println(curGame.getopponent());
        }

        Game game2 = mSchedule.GetGameByNumber(2);
        System.out.println("Game 2 is against " + game2.getopponent());
    }
}
