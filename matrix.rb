# matrix.rb
# PEDAC practice #39

# Problem
# Examples/Test Cases
# Data Structure
# Algorithm
# Code


# Problem & Examples
#####################
# Introduction

# Given a string representing a matrix of numbers, return the rows and columns of that matrix.

# So given a string with embedded newlines like:

# 9 8 7
# 5 3 2
# 6 6 7

# representing this matrix:

#     0  1  2
#   |---------
# 0 | 9  8  7
# 1 | 5  3  2
# 2 | 6  6  7

# your code should be able to spit out:

#     A list of the rows, reading each row left-to-right while moving top-to-bottom across the rows,
#     A list of the columns, reading each column top-to-bottom while moving from left-to-right.

# The rows for our example matrix:

#     9, 8, 7
#     5, 3, 2
#     6, 6, 7

# And its columns:

#     9, 5, 6
#     8, 3, 6
#     7, 2, 7



# Data Structure
##################
# input -- a string representing a matrix of numbers
# output -- the rows and columns of that matrix
  # a list of the rows, reading each row left to right and top to bottom
  # a list of the columns, reading each column top to bottom and left to right


# Algorithm
###############
# rows method:
  # split string into rows separated by "\n" and map each row to split by spaces between values (' ') and then convert each string into an integer.
# columns method:
  # transpose rows method output


# Code
#########
class Matrix
  def initialize(matrix_string)
    @matrix_string = matrix_string
  end

  def matrix_string
    @matrix_string
  end

  def rows
    rows_array = matrix_string.split("\n").map { |row| row.split(' ').map(&:to_i)}
  end

  def columns
    columns_array = rows.transpose
  end
end

# Test Cases
#############
matrix = Matrix.new("1 2\n10 20")
p matrix.rows[0] == [1, 2]

matrix = Matrix.new("9 7\n8 6")
p matrix.rows[0] == [9, 7]

matrix = Matrix.new("1 2 3\n4 5 6\n7 8 9\n 8 7 6")
p matrix.columns[0] == [1, 4, 7, 8]

matrix = Matrix.new("89 1903 3\n18 3 1\n9 4 800")
p matrix.columns[1] == [1903, 3, 4]
