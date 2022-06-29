
#define GAP (200)
#define VEL	(5)

class pipe {
	private:
	uint8_t *image[];
	
	public:
	pipe ( uint8_t *image ) {
		
	}
}

class Pipes {

	private:
	uint16_t x, height, top, bottom;
	uint16_t PIPE_TOP, PIPE_BOTTOM;
	bool passed;
	
	public:
	Pipe ( int x ) {
		this->x = x;
		this->bottom = 0;
		
		this->PIPE_TOP;
		this->PIPE_BOTTOM;
		
		this->passed = false;
		this->set_height()
	}
	
	void set_height ( void ) {
			this->height = rand() % 400 + 50;
			this->top = this->height - self->PIPE_TOP.get_height()
	}
}