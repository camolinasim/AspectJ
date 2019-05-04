package c4.ext;
import java.io.File;

import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;

import c4.base.C4Dialog;
public privileged aspect AddSound {
	
	before(): execution(void C4Dialog.configureUI()) {
		playAudio("C:\\Users\\Cris\\Music\\GreatFairyFountainForC4.wav");
	}
		
after(C4Dialog dialog): this(dialog) && execution(void C4Dialog.makeMove(..)){
	
	if(dialog.board.isGameOver())  playAudio("C:\\Users\\Cris\\Desktop\\ZGameOver.wav");
	
	else if(dialog.player.name().equals("Blue")) 	playAudio("C:\\Users\\Cris\\Music\\token.wav");
	
		else playAudio("C:\\Users\\Cris\\Music\\token2.wav");
	

}




	public static void playAudio(String filepath) {
	try {
			
			File tokenSound = new File(filepath);
		        Clip clip = AudioSystem.getClip();
		        AudioInputStream ais = AudioSystem.getAudioInputStream(tokenSound);
		        clip.open(ais);
		        clip.start();
		        
		}catch(Exception e) { 
			System.out.println("error" + e);
			}
		
	}
}
