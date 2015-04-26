
"Beautiful Ruby, convenient Rails"

############################################################

"Adam Niedzielski"
"CEO @SundayCoding"
"Web Developer @goodylabs"

"blog: http://adamniedzielski.github.io"
"twitter: @niedzielskiadam"

############################################################

"The goal of Ruby is to make programmers happy."

"Yukihiro “Matz” Matsumoto, the Creator of Ruby"

############################################################

str = "this is a string"
array = ["first", "second", "third"]
hash = { "key" => "value", "next_one" => "its value" }

############################################################

str = "the,quick,brown,fox,jumps,over,the,lazy,dog"
str.split(',').join(' ').gsub("the", "a").upcase

############################################################

def generate_password(length)
  ('a'..'z').to_a.shuffle.first(length).join
end

############################################################

str = "lorem ipsum"
if str.end_with?("ipsum")
  str.capitalize!
end

str.capitalize! if str.end_with?("ipsum")

############################################################

small_numbers = []
[78, 32, 44, 1, 7, 23, 56, 98, 45].each do |number|
  small_numbers.push(number) if number < 50
end

############################################################

class User

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end
end

john = User.new("john")
john.name

class User

  def initialize(name)
    @name = name
  end

  attr_accessor :name
end

############################################################

user.class
user.class.class
user.class.class.class

############################################################

[78, 32, 44, 1, 7, 23, 56, 98, 45].map do |number|
  number * 2
end

["John", "Kate", "George", "Victoria"].map do |name|
  name[0].downcase
end

[78, 32, 44, 1, 7, 23, 56, 98, 45].select do |number|
  number < 50
end

############################################################

def show_case(value)
  case value
  when "test"
    puts "test string"
  when 1..10
    puts "between 1 and 10"
  when /\Afoo/
    puts "starts with foo"
  when String
    puts "another string"
  else
    puts "something else"
  end
end

############################################################

"It's time for Ruby on Rails!"

############################################################

nil.present?
"".present?
[].present?

############################################################

10.minutes.ago
3.days.from_now.beginning_of_day + 2.hours

############################################################

Time.zone.name
5.hours.ago
5.hours.ago.in_time_zone("Warsaw")

############################################################

["John", "Kate", nil, "Robert"].map do |name|
  name.downcase
end

# blows up with NoMethodError: undefined method `downcase' for nil:NilClass

["John", "Kate", nil, "Robert"].map do |name|
  name.try(:downcase)
end

############################################################

2.kilobytes
3.megabytes

############################################################

4567.to_s(:human)
1500000.to_s(:human)

############################################################

21.ordinalize
45.ordinalize

############################################################

[1, 2, 3, 4, 5, 6, 7, 8].in_groups_of(3)
[1, 2, 3, 4, 5, 6, 7, 8].in_groups(2)

############################################################

"apple".pluralize
"fish".pluralize

############################################################

"THANK YOU!"
