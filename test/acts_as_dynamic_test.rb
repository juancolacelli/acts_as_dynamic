# <libraries>

  require "test/minitest_helper"

# </libraries>

describe ActsAsDynamic do

  before do

    # Person
    class Person

      # ActsAsDynamic
      acts_as_dynamic

      # <instance methods>

        # Complete name
        def complete_name
          [self.name, self.last_name].join " "
        end

      # </instance methods>

    end

  end

  it "must create attributes called name and lastname in Person class" do

    # Instance with name
    person = Person.new(:name => "Chuck", :last_name => "Norris")
    # Is he Chuck?
    person.complete_name.must_equal "Chuck Norris"

  end

  it "must create an attribute called age in Person class" do

    # Instance without attributes
    person = Person.new
    # Nice age :)
    person.age = 18
    # He has 18 years?
    person.age.must_equal 18

  end

end
