# Work on the following problems

#################################################################
# WORDS ARRAY
#################################################################

words = %w(We the People of the United States, in Order to form a more
perfect Union establish Justice insure domestic
Tranquility provide for the common defence promote the
general Welfare and secure the Blessings of Liberty to
ourselves and our Posterity do ordain and establish this
Constitution for the United States of America)


  # Write ruby code to return the longest word in the list supplied ( words )
  # Assume each entry in the list implements a length method that returns
  # a Fixnum.
  def longest(list)
   longest = list.sort_by!{|word| word.length}.reverse!
   longest[0]
  end

  # p longest(words)
  # Write ruby code that returns an array with all of the
  # entries from the list of words capitalized (i.e. 'foo' becomes 'Foo').
  def transform(words)
    words.map { |word| word.capitalize}
  end

  # p transform(words)
#################################################################
# NUMBERS ARRAYS
#################################################################

even_nums = [0, 2, 4, 6]
odd_nums = [1, 5, 7, 9]
mixed_nums = [0, 2, 4, 7]

  # Write ruby code that returns true if some of the entries
  # in the list of numbers are odd (test the three given number arrays)
  def some_odd(numbers)
    numbers.any? { |num| num % 2 != 0}
  end

  # p some_odd(even_nums)
  # p some_odd(odd_nums)
  # p some_odd(mixed_nums)
  # Write ruby code that returns true if every entry in the
  # list of numbers are even (test the three given number arrays)
  def every_even(numbers)
    numbers.all? { |num| num % 2 == 0}
  end

  # p every_even(even_nums)
  # p every_even(odd_nums)
  # p every_even(mixed_nums)
  # Write ruby code that returns the sum total of all the numbers in the even_nums array
  def sum_evens(numbers)
    numbers.sum
  end

  # p sum_evens(even_nums)
#################################################################
# STUDENTS ARRAY
#################################################################
students = [
    {name: 'John', grade: 8, gender: 'M'},
    {name: 'Sarah', grade: 12, gender: 'F'},
    {name: 'Bob', grade: 16, gender: 'M'},
    {name: 'Johnny', grade: 2, gender: 'M'},
    {name: 'Ethan', grade: 4, gender: 'M'},
    {name: 'Paula', grade: 8, gender: 'F'},
    {name: 'Donald', grade: 5, gender: 'M'},
    {name: 'Jennifer', grade: 13, gender: 'F'},
    {name: 'Courtney', grade: 15, gender: 'F'},
    {name: 'Jane', grade: 9, gender: 'F'}
]

# create a method called isMale that filters for a gender of 'M' and returns those elements
def is_male(students)
 students.select {|student| student[:gender] == "M"}
end

# p is_male(students)
# create a method called isFemale that filters for a gender of 'F' and returns those elements

def is_female(students)
 students.select {|student| student[:gender] == "F"}
end

# p is_female(students)
# create a method called filterGender that takes in the students array and a callback, which 
# will be one of the previous isMale or isFemale methods.  It will return all elements that 
# meet that condition
is_male = Proc.new {students.select {|student| student[:gender] == "M" }}
is_female = Proc.new {students.select {|student| student[:gender] == "F" }}
def filter_gender(students, callback)
    callback.call(students)
end


# create a variable called allMales that stores the result of calling filterGender and the isMale callback

all_males = filter_gender(students, is_male)
# p all_males
# create a variable called allFemales that stores the result of calling filterGender and the isFemale callback

all_females = filter_gender(students, is_female)
p all_females
#################################################################
# BONUS: DUPLICATE COUNT
#################################################################

colorsArr = [
  { colors: ["blue", "purple", "red"] },
  { colors: ["black", "orange", "blue"] },
  { colors: ["green", "red", "blue"] }
];

# Create a method called countDuplicates that will take in an array of objects. Each object has a color key that contains an array of colors. 

# Colors names are repeated in the array. Return a new object that contains key names of each color and how many times they have been they have been referenced.

# Input: [ {colors: ['blue','purple','red']}, {colors: ['black','orange','blue']}, {colors: ['green','red', 'blue']} ]
# Output: { blue: 3, purple: 1, red: 2, black: 1, orange: 1, green: 1 }