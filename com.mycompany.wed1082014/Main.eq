
/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class Main : SEScene
{
	SESprite image1;
	SESprite image2;
	SESprite image3;
	SESprite image4;
	SESprite text;
	double transparency;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_sprite_for_color(Color.instance("red"), get_scene_width(),get_scene_height());
		rsc.prepare_image("penguin", "platform_linuxx64", 0.5*get_scene_width(), 0.5*get_scene_height());
		image1 = add_sprite_for_image(SEImage.for_resource("penguin"));
		image1.move(0,0);
		rsc.prepare_image("panda", "panda", 0.5*get_scene_width(), 0.5*get_scene_height());
		image2 = add_sprite_for_image(SEImage.for_resource("panda"));
		image2.move(0.5*get_scene_width(),0);
		rsc.prepare_image("koala", "koala", 0.5*get_scene_width(), 0.5*get_scene_height());
		image3 = add_sprite_for_image(SEImage.for_resource("koala"));
		image3.move(0,0.5*get_scene_height());
		rsc.prepare_image("beagle", "beagle", 0.5*get_scene_width(), 0.5*get_scene_height());
		image4 = add_sprite_for_image(SEImage.for_resource("beagle"));
		image4.move(0.5*get_scene_width(),0.5*get_scene_height());
		rsc.prepare_font("myfont", "arial bold color=blue", 40);
		text = add_sprite_for_text(" ", "myfont");	
	}

	public void on_pointer_press(SEPointerInfo ptr) {
		if(ptr.is_inside(0,0,0.5*get_scene_width(),0.5*get_scene_height())) {
			base.on_pointer_press(ptr);
			text.set_text("PENGUIN");
			text.move(0.25*get_scene_width()-0.5*text.get_width(),0.25*get_scene_height()-0.5*text.get_height());
			image1.set_alpha(0.5);
			image2.set_alpha(1);
			image3.set_alpha(1);
			image4.set_alpha(1);		
		}

		if(ptr.is_inside(0.5*get_scene_width(),0,0.5*get_scene_width(),0.5*get_scene_height())) {
			base.on_pointer_press(ptr);
			text.set_text("PANDA");
			text.move(0.75*get_scene_width()-0.5*text.get_width(),0.25*get_scene_height()-0.5*text.get_height());
			image1.set_alpha(1);
			image2.set_alpha(0.5);
			image3.set_alpha(1);
			image4.set_alpha(1);
		}
		
		if(ptr.is_inside(0,0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			base.on_pointer_press(ptr);
			text.set_text("KOALA");
			text.move(0.25*get_scene_width()-0.5*text.get_width(),0.75*get_scene_height()-0.5*text.get_height());
			image1.set_alpha(1);
			image2.set_alpha(1);
			image3.set_alpha(0.5);
			image4.set_alpha(1);
		}

		if(ptr.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			base.on_pointer_press(ptr);
			text.set_text("BEAGLE");
			text.move(0.75*get_scene_width()-0.5*text.get_width(),0.75*get_scene_height()-0.5*text.get_height());
			image1.set_alpha(1);
			image2.set_alpha(1);
			image3.set_alpha(1);
			image4.set_alpha(0.5);
		}
	}

	public void set_alpha(double alpha) {
		transparency=alpha;
	}
}
