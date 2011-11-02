module Randomizer
  class Mailchimp
    def initialize(key)
      @h = Hominid::API.new(key)
    end

    def get_lists
      @h.lists["data"]
    end

    def get_formated_lists
      get_lists.each_with_index { |d, i| return "#{i + 1} #{d["name"]}" }
    end

    def get_number_of_lists
      get_lists.size
    end

    def get_list_size(list)
      get_subscribers(list).size
    end

    def get_list_from_choice(choice)
      get_lists[choice.to_i - 1]["id"]
    end

    def get_subscribers(list)
      @h.list_members(list, "subscribed")["data"]
    end

    def print_random_subscribers(list, number)
      subscribers = get_subscribers(list)

      number.times do
        puts "\n#{subscribers[rand(get_list_size(list))]["email"]}\n"
      end
    end
  end
end
