require 'minitest/spec'
require 'minitest/autorun'
require_relative 'solution'

output = Solution.run
$stdout.puts output

describe 'output' do
  it 'is a string' do
    output.must_be_instance_of String
  end

  it 'is not empty' do
    output.size.must_be :>, 100
  end

  it 'is equal to expected output' do
    output.must_equal File.read('expected_output.txt').chomp
  end
end
