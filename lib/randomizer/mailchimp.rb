module Randomizer
  class Mailchimp
    def initialize(key)
      h = Hominid::API.new(key)
    end

    def get_lists
      h.lists
    end
  end
end
