# Class
class Class

  # <class methods>

    # Acts as dynamic
    def acts_as_dynamic
      # ActsAsDynamic
      include ActsAsDynamic::Base

      # ActiveModel
      require "active_model"
      include ActiveModel::Validations
      include ActiveModel::Serialization
      extend ActiveModel::Naming
    end

  # </class methods>

end
