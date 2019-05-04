package c4.ext;
import c4.base.C4Dialog;

public privileged aspect EndGame {

	void around(C4Dialog chip): this(chip) && execution(void C4Dialog.makeMove(..)) {
		System.out.println("Current player is: " + chip.player.name());
		proceed(chip);
		System.out.println("Current player is: " + chip.player);
		System.out.println("Checking win condition");

		if (chip.board.isWonBy(chip.player) && chip.player.name().equals("Red")) {
			System.out.println("LINK WINS!!!!!!");
			chip.showMessage(" Link wins!!!");

			System.out.println("Is game over:?" + chip.board.isGameOver());

			// return;
		} else if (chip.board.isWonBy(chip.player) && chip.player.name().equals("Blue")) {
			System.out.println("Gannon wins");
			chip.showMessage("Ganon wins!!!");
//			if (chip.board.isGameOver()) {
//
//			} else {
//				proceed(chip);
//			}

//			proceed(chip);
//			System.out.println("Is game over:?" + chip.board.isGameOver());
			// return;
		}
//		proceed(chip);
	}
}