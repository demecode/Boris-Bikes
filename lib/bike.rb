class Bike

def initialize
  puts "hello world"
	#instance variable which is available on all methods below
	fix
end

def working?
	@working
end


def break
	@working = false
end

def fix
	@working = true
end



end
