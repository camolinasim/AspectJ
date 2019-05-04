package c4.ext;
import java.io.File;
import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;

import c4.model.Board;
import c4.model.Player;
public aspect UserTokenSound {

 
	pointcut discDropped(): execution(int Board.dropInSlot(int, Player));
	after():  discDropped() {	
		try {
			
			File backgroundMusic = new File("C:\\Users\\Cris\\Music\\token2.wav");
		        Clip clip = AudioSystem.getClip();
		        AudioInputStream ais = AudioSystem.getAudioInputStream(backgroundMusic);
		        clip.open(ais);
		        clip.start();
		        
		}catch(Exception e) { 
			System.out.println("error" + e);
			}
		
	}
}