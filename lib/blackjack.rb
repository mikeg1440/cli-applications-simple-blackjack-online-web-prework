def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1..11
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  display_card_total((deal_card+deal_card))
end

def hit?(card_total)
  prompt_user
  
  resp = get_user_input
  
  if resp.downcase == "s"
    return card_total
  elsif resp.downcase == "h"
    card_total += deal_card
  else
    puts "Please enter a valid command"
  end
  
  card_total
end

def invalid_command
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner1
  
  welcome
  
  card_total = initial_round
  
  
  until card_total >= 21 do
    
    resp = prompt_user
    
    if resp.downcase == "h"
      card_total += deal_card
    end
  
  end  
  
end
    
