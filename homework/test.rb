#
# ruby -r "./test.rb" -e "TestClass.test_function 'hi'"
#
class TestClass
    def self.test_function(someVar)
        puts "variable : " + someVar
    end
end