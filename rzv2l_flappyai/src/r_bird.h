#define MAX_ROTATIONS 	(25)
#define ANIMATION_TIME 	(5)
#define ROT_VEL			(20)

#define BIRD_IMAGES extern uint8_t *birds[];
class Bird {
	private:
	uint8_t *birdimages[] = BIRD_IMAGES
	uint16_t x,y,tilt,vel, height, img_count;
	uint8_t *img = birdimages[0][0];
	
	public:
	Bird ( uint8_t x, uint8_t y ) {
		this->x = x;
		this->y = y;
		this->tilt = 0;
		this->tick_count = 0;
		this->vel = 0
		this->height = y;
		this->img_count = 0
		
	}
	
	/*
		Make Bird Jump
	*/
	void jump ( void ) {
	
		this->vel = -10.5;
		this->tick_count = 0
		this->height = this->y
	}
	
	void move ( void ) {
		float displacement = 0.0;
		
		this->tick_count += 1;
		
		// For Downward acceleration
		displacement = this->vel*( this->tick_count) + 0.5*(3)*(this->tick_count)**2;
		
		// Terminal Velocity
		if ( displacement >= 16 )
			displacement = (displacement/abs(displacement)) * 16.0;
			
		if ( displacement < 0 )
			displacement-= 2.0;
			
		this->y = this->y + (uint16_t)displacement;
		
		if ( displacement < 0 || this->y < this->height + 50 )
			if ( this->tilt < MAX_ROTATION )
				this->tilt = MAX_ROTATION
			else if ( this->tilt > -96 )
				this->tilt -= ROT_VEL
		
	}
	
	uint8_t* draw ( void ) {
	
		this->img_count += 1;
		
		// For Animation of Bird, Loop through three images
		if ( this->img_count <= ANIMATION_TIME )
			this->img = this->birdimages[0]
		else if ( this->img_count <= ANIMATION_TIME*2 )
			this->img = this->birdimages[1]
		else if ( this->img_count <= ANIMATION_TIME*3 )
			this->img = this->birdimages[2]
		else if ( this->img_count <= ANIMATION_TIME*4 )
			this->img = this->birdimages[1]
		else if ( this->img_count <= ANIMATION_TIME*4 + 1 )
			this->img = this->birdimages[0]
			
		// If Bird is nose diving it isn't flapping
		if ( this->tilt <= -80 ) {
			this->img = this->birdimages[1];
			this->img_count = ANIMATION*2;
		}
		
		// TILT THE BIRD
		// TODO
	}
	
	
	
	
	
}


