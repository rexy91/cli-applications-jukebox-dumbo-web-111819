
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end


def play(my_songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  
  if (1..9).to_a.index(input.to_i) != nil
    puts "Playing #{my_songs[input.to_i - 1]}"
  elsif my_songs.index(input) != nil
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def prompt
  puts "Please enter a command:"
  gets.chomp
end


def run(my_songs)
  input = prompt
  
  while input != "exit"
    if input == "list"
      list(my_songs)
      input = prompt
    elsif input == "play"
      play(my_songs)
      input = prompt
    elsif input == "help"
      help
      input = prompt
    elsif input == "exit"
      puts "/Please enter a command:/"
    else
      puts "Invalid command"
      help
      input = prompt
    end
  end
  
  exit_jukebox
end

#run(songs)

# def annoying_program()
#   puts "What is your name?: "
#   input = gets.chomp()
  
#   while input != "ahamed"
#     puts "What is your name?: "
#     input = gets.chomp()
#   end 
  
#   "Goodday #{input}!"
# end

# annoying_program()


