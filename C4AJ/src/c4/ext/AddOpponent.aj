package c4.ext;
import java.awt.Color;

import c4.base.C4Dialog;
import c4.base.ColorPlayer;
public privileged aspect AddOpponent {

	ColorPlayer Red = new ColorPlayer("Red", Color.RED);
	ColorPlayer Blue = new ColorPlayer("Blue", Color.BLUE);
	
	after(C4Dialog chip): this(chip) && execution(void C4Dialog.makeMove(..))
	{
		if(chip.player.name.equals("Blue")) {
			chip.player = Red;
			
		}
		else if(chip.player.name().equals("Red")){
			chip.player = Blue;
			chip.showMessage(chip.player.name() + " player's turn");
		}
	}
}
