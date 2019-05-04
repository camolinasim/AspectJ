package c4.ext;

import c4.base.BoardPanel;
import c4.base.C4Dialog;

public privileged aspect ending {
	
	 after(BoardPanel chip, C4Dialog c4): 
		 target(chip) && args(c4)&& execution(void C4Dialog.makeMove(..))  {
		 if(c4.board.isGameOver() && c4.board.isWonBy(chip.player)) {
			 
		 }
}
}
