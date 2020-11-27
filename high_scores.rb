# high_scores.rb
# PEDAC practice #6

# Problem
# Examples/Test Cases
# Data Structure
# Algorithm
# Code

# coding with intent


# Problem & Examples
#####################
# Manage a game player's High Score list.

# Your task is to build a high-score component of the classic Frogger game, one of the highest selling and addictive games of all time, and a classic of the arcade era. Your task is to write methods that return the highest score from the list, the last added score and the three highest scores.

# In this exercise you're going to instantiate a class and add some instance methods. http://ruby-for-beginners.rubymonstas.org/writing_classes/initializers.html

# A HighScore accepts an array with one or more numbers, each representing one 'game score'. The Array class can offer inspiration for working with arrays. https://ruby-doc.org/core-2.5.1/Array.html


# Data Structure
##################
# input --  an array of integers representing scores
# output --  variable as this is a class with multiple methods

# Algorithm
###############
# create separate methods for each of the required features

# Code
#########
class HighScores
  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    self.scores[-1]
  end

  def personal_best
    self.scores.max
  end

  def personal_top_three
    if self.scores.length >= 3
      self.scores.sort[-3..-1].reverse
    else
      self.scores.sort.reverse
    end
  end

  def latest_is_personal_best?
    self.latest == self.personal_best
  end
end

scores = [30, 50, 20, 70]
expected = [30, 50, 20, 70]
p HighScores.new(scores).scores == expected

scores = [100, 0, 90, 30]
expected = 30
p HighScores.new(scores).latest == expected

scores = [40, 100, 70]
expected = 100
p HighScores.new(scores).personal_best == expected

scores = [10, 30, 90, 30, 100, 20, 10, 0, 30, 40, 40, 70, 70]
expected = [100, 90, 70]
p HighScores.new(scores).personal_top_three == expected

scores = [20, 10, 30]
expected = [30, 20, 10]
p HighScores.new(scores).personal_top_three == expected

scores = [40, 20, 40, 30]
expected = [40, 40, 30]
p HighScores.new(scores).personal_top_three == expected

scores = [30, 70]
expected = [70, 30]
p HighScores.new(scores).personal_top_three == expected

scores = [40]
expected = [40]
p HighScores.new(scores).personal_top_three == expected

scores = [100, 40, 10, 70]
p HighScores.new(scores).latest_is_personal_best? == false

scores = [70, 40, 10, 100]
p HighScores.new(scores).latest_is_personal_best? == true
