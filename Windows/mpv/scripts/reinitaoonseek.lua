require "mp.msg"
require "mp.options"

local options = {
	enable = true,          -- enable or disable the functionality
}

read_options(options)

-- just load forced subs
function control_audio()
	if options.enable then
               --disable the sound for a short while ... then re-enable

		local out = mp.get_property("current-ao")
		mp.set_property("ao","null")
		
		local time = mp.get_time()
		while time + 0.4 > mp.get_time() and mp.get_property_bool("eof-reached") == false 
		do end
		
		mp.set_property("ao",out)			
	end
end

mp.register_event("seek", control_audio)