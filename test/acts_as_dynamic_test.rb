# <libraries>

  # Path patch
  $:.unshift(Dir.pwd)
  $:.unshift(Dir.pwd + "/lib")

  # Minitest
  require "test/minitest_helper"

# </libraries>

describe ActsAsDynamic do

  before do

    # Person
    class Person

      # <libraries>

        # ActsAsDynamic
        acts_as_dynamic

      # </libraries>

      # <validations>

        validates_presence_of :name

      # </validations>

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

  it "must have a name to be valid" do

    # Instance without attributes
    person = Person.new
    # Invalid
    assert person.invalid?
    # Name assignation
    person.name = "Chuck"
    # Valid
    assert person.valid?

  end

  it "must respond to model_name and param_key (usefull at Ruby on Rails forms)" do
    # Model name
    Person.model_name.must_equal "Person"
    # Param key
    Person.model_name.param_key.must_equal "person"
  end

end
