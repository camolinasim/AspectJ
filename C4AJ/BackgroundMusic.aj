package c4.ext;

import java.io.File;

import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;




import c4.base.C4Dialog;
public privileged aspect BackgroundMusic{
	before(C4Dialog dialog): this(dialog) && execution(void C4Dialog.configureUI()) {
		try {
			
			File backgroundMusic = new File("C:\\Users\\Cris\\Music\\GreatFairyFountainForC4.wav");
		        Clip clip = AudioSystem.getClip();
		        AudioInputStream ais = AudioSystem.getAudioInputStream(backgroundMusic);
		        clip.open(ais);
		        
		     
		        clip.loop(Clip.LOOP_CONTINUOUSLY);
		        
		        if()
		      //do while
		    	//  if(dialog.board.isGameOver())
		     //  clip.stop();
		      } //while end
		}catch(Exception e) { 
			System.out.println("error" + e);
			} //catch end
		
		
		
	}
		}//advice end

	

	

