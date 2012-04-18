# ActsAsDynamic
module ActsAsDynamic

  # Base
  module Base

    # <methods>

      # Builder
      def initialize args = {}
        (args || {}).each_pair do |attribute, value|
          self.send "#{attribute}=", value
        end
        self
      end

      # Metaclass
      def metaclass
        class << self
          self
        end
      end

      # Method missing
      def method_missing(attribute, value = "")
        # Assignation?
        if attribute.to_s["="]
          # Adding attribute
          metaclass.send :attr_accessor, attribute.to_s[/[^=]+/]
          self.send attribute, value
        else
          nil
        end
      end

    # </methods>

  end

end
