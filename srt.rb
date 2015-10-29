require 'pry'

class SubRip

	attr_accessor :time_range
	
	def initialize id_entry, time_range, subtitle
		@id_entry = id_entry
		@time_range = []
		@subtitle = subtitle
	end

end

class SubRipHandler

	def initialize source
		@source = source
	end

	def readFile
		@source = IO.read(@source)
	end

end

srh = SubRipHandler.new "subtitle.srt"
srh.readFile

binding.pry


