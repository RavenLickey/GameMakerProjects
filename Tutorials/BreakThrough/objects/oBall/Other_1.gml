// @description Bounce Or Die
		// Check if the ball is "colliding" with the left or right side of the room
		if bbox_left < 0 || bbox_right > room_width
		    {
		    // Make sure the ball stays within the room bounds
		    x = clamp(x, sprite_get_xoffset(sprite_index), room_width - sprite_get_xoffset(sprite_index));
		    // Reverse the horizontal component of the speed vector
		    hspeed *= -1;
		    }
		// Check if the ball is "colliding" with the top of the room
		if bbox_top < 0
		    {
		    // Reverse the vertical component of the speed vector
		    vspeed *= -1;
		    }
		else
		    {
		    // Check if the ball is leaving the bottom of the room
		    if bbox_bottom > room_height
		        {
		        // The ball is leaving the room, so create a new one and destroy this one
		        instance_create_layer(xstart, ystart, layer, oBall);
		        instance_destroy();
		        }
		    }
		// With each bounce, increase the ball speed up to a maximum of 12px per step
		if speed < 12 speed += 0.1;
		audio_play_sound(sndBounce, 0, false);
		direction += 2 - random(4);
	