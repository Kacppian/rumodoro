class Pomodoro
	def initialize()
		@elapsed = 0
	end

	def start(duration=25, sound_path="./sound.mp3")
		target_time = Time.now + (duration * 60)
		curr_time = Time.now
		while curr_time < target_time
			@elapsed = (target_time - curr_time)

		    	m = sprintf('%02i', ((@elapsed.to_i % 3600) / 60))
    			s = sprintf('%02i', (@elapsed.to_i % 60))	
			print "Keep at it! - #{m} mins #{s} secs more to go" + "\r"
			$stdout.flush
			
			sleep(1)
			curr_time = Time.now
		end
		system("mpg123 -q #{sound_path}")
	end
end
