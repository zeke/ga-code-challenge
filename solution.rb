require 'date'
require 'ostruct'

students = []

files = [
  OpenStruct.new(
    name: 'comma',
    delimiter: ',',
    keys: %w(last_name first_name campus favorite_color date_of_birth)),
  OpenStruct.new(
    name: 'dollar',
    delimiter: '$',
    keys: %w(last_name first_name middle_initial campus date_of_birth favorite_color)),
  OpenStruct.new(
    name: 'pipe',
     delimiter: '|',
     keys: %w(last_name first_name middle_initial campus favorite_color date_of_birth))
]

files.each do |file|
  File.readlines("data/#{file.name}.txt").each do |line|
    parts = line.split(file.delimiter).map(&:strip)
    student = OpenStruct.new
    file.keys.each_with_index do |key, index|
      value = parts[index]

      case key.to_sym
        when :date_of_birth
          value.gsub!("-", "/")
          student.date_of_birth_as_date = DateTime.strptime(value, "%m/%d/%Y")
        when :campus
          value = "Los Angeles" if value == "LA"
          value = "New York City" if value == "NYC"
          value = "San Francisco" if value == "SF"
        end
      student[key] = value
    end
    students << student
  end
end

sortings = [
  students.sort_by {|s| [s.campus, s.last_name]},
  students.sort_by(&:date_of_birth_as_date),
  students.sort_by(&:last_name).reverse
]

output = sortings.each_with_index.map do |result, index|
  [
    "Output #{index+1}:",
    result.map do |student|
      %w(last_name first_name campus date_of_birth favorite_color)
        .map{|key| student[key] }
        .join(' ')
    end
  ].flatten.join("\n")
end.join("\n\n")

p output.is_a? String
p output.size > 100
p output == File.read('expected_output.txt').chomp
