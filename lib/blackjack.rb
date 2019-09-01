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
  card_total = deal_card() + deal_card()
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  
  resp = get_user_input
  
  until resp.downcase == "h" || resp.downcase == "s" do
    
    prompt_user
    
    if resp.downcase == "s"
      return card_total
    elsif resp.downcase == "h"
      puts "TOTAL: #{card_total}"
      card_total += deal_card()
      puts "TOTAL AFTER: #{card_total}"
    else
      invalid_command
    end
    
  end  
  
  card_total
end

def invalid_command
  puts "Please enter a valid command"
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
    
    
puts initial_round
