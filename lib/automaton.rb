#~ require 'automaton/automaton' # Load c extension files

# Animation should be designed such that draw calls are irrelevant
# It only knows that it holds image data, and associated time data.
module Automaton
	# Set of frames to be played.
	class Sequence
		
	end
	
	# Transition from one Sequence to another, perhaps playing some Sequence in the process
	class Transition
		
	end
	
	# Play the animation, processing state transitions as necessary
	class Animation
		def initialize(gameobject)
			@gameobject = gameobject
		end
		
		def update(next_state)
			
		end
	end
end

Animation::Player.new do
	sequence :idle do
		frames @frames[20]
		loop true
		key 0, 1000 # frame number, frame duration
	end
	
	sequence :run do
		frames	*@frames[10..17]
		loop true
		
		# frame number, frame duration
		key 0 do
			duration		1000
			opacity			100
			rotation		0
			offset_x		0
			offset_y		0
		end
		
		key 1 do
			duration		1000
			opacity			100
		end
		
		key 2 do
			duration		1000
			opacity			100
		end
		
		key 3 do
			duration		1000
			opacity			100
		end
		
		key 4 do
			duration		1000
			opacity			100
		end
		
		key 5 do
			duration		1000
			opacity			100
		end
		
		key 6 do
			duration		1000
			opacity			100
		end
		
		key 7 do
			duration		1000
			opacity			100
		end
	end
	
	sequence :hit_the_ground do
		frames @frames[]
		loop false
		
		preserve_count # method: The frame counter will carry over from the previous state
	end
	
	sequence :attack do
		frames *@frames[0..1]
		loop false
	end
	
	transition :from => :idle, :to => :run do
		# Define conditional here
		# Use braces instead of do-end for better semantics
		trigger { @gameobject.body.v.y > move_threshold } 
		
		play :hit_the_ground
	end
end
