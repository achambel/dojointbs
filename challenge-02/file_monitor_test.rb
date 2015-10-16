require 'minitest/autorun'
require_relative 'file_monitor'

class TestFileMonitor < Minitest::Test

	def test_file_not_exists
		assert_raises Errno::ENOENT, 'If file not exists, then IOError' do
			FileMonitor.new('path/to/file')
		end
	end

	def test_file_was_changed
		file_name = 'file.txt'
		filemonitor = FileMonitor.new file_name
		
		File.open(file_name, 'w') { |file| file.write("Modified at #{Time.now}") }
		
		assert(filemonitor.changed?, 'File changed, should be true')
	end

end