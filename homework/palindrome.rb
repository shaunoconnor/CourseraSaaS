#
# ruby -r "./palindrome.rb" -e "Palindrome.new.check_palindromic 'hi ih' "
#
class Palindrome
  def check_palindromic(variable)
  	if variable.reverse == variable # Is the string the same when reversed? 
    	puts "#{ variable } is a palindrome."
  	else # The string is not a palindrome
    	puts "#{ variable } is not a palindrome."
  	end
	end
end  