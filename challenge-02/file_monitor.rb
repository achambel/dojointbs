class FileMonitor
	
	def initialize(file_path)
		@file = File.new(file_path)
		@last_mtime = @file.mtime 
	end

	def changed?
		@file.mtime > @last_mtime
	end

end