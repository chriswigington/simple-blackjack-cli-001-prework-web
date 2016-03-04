def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(cards)
  # code #display_card_total here
  puts "Your cards add up to #{cards}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
end

def end_game(count)
  # code #end_game here
  puts "Sorry, you hit #{count}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(cards)
  # code hit? here
  prompt_user
  answer = get_user_input
  if answer == "h"
    sum = cards + deal_card
    return sum
  elsif answer == "s"
    return cards
  else 
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  cards = initial_round
  until cards > 21
    cards = hit?(cards)
    display_card_total(cards)
  end
  end_game(cards)
end
    
