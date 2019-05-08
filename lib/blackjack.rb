def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_deal = deal_card
  second_deal = deal_card
  sum = first_deal + second_deal
  display_card_total(sum)
  sum
end

def hit?(current_total)
  prompt_user
  input = get_user_input
  if input == "h"
    new_deal = deal_card
    current_total += new_deal
  elsif input == "s"
    current_total
  else
    invalid_command
    prompt_user
  end
  current_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_total = initial_round
  while current_total < 21 do
    current_total = hit?(current_total)
    display_card_total(current_total)
  end
  end_game(current_total)
end
