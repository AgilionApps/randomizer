module Randomizer
  class Command
    def run
      puts "\nEnter your MailChimp API key.\n"
      key = gets.chomp
      m   = Mailchimp.new(key)

      list   = choose_list(m)
      max    = m.get_list_size(list)
      number = choose_number(m, max)

      m.print_random_subscribers(list, number)
    end

    def choose_list(m)
      puts "\nPlease choose a list.\n"
      puts m.get_formated_lists
      choice = gets.chomp

      while choice.to_i > m.get_number_of_lists
        puts "\nNot a valid list choice, please try again\n"
        puts m.get_formated_lists
        choice = gets.chomp
      end

      list = m.get_list_from_choice(choice)
    end

    def choose_number(m, max)
      puts "\nHow many random email addresses do you want?\n"
      number = gets.chomp

      while number.to_i > max
        puts "\nYou chose a number greater than your list size choose a small number.\n"
        number = gets.chomp
      end

      number.to_i
    end
  end
end
