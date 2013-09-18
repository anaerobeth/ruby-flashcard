#Pattern for Q and A:
#q = "The exception object passed to #raise"
#a = "$!"
def continue?
  print "Do you want to continue? (Y/N): "
  response = gets.chomp().downcase
  if response == 'y'
    exit_app = false
  elsif response == 'n'
    exit_app = true
  end
    return exit_app
end

question_pool = [
  "Send the prefix key (C-b) through to the application",
"Rotate the panes in the current window forwards",
"Suspend the tmux client",
"Break the current pane out of the window",
"Split the current pane into two, top and bottom",
"List all paste buffers",
"Rename the current session",
"Split the current pane into two, left and right",
"Kill the current window",
"Prompt for a window index to select",
"Rename the current window",
"Delete the most recently copied buffer of text",
"Prompt for an index to move the current window",
"Select windows 0 to 9",
"Enter the tmux command prompt",
"Move to the previously active pane",
"Choose which buffer to paste interactively from a list",
"List all key bindings",
"Choose a client to detach",
"Enter copy mode to copy text or view the history",
"Paste the most recently copied buffer of text",
"Create a new window",
"Detach the current client",
"Prompt to search for text in open windows",
"Display some information about the current window",
"Move to the previously selected window",
"Change to the next window",
"Select the next pane in the current window",
"Change to the previous window",
"Briefly display pane indexes",
"Force redraw of the attached client",
"Select a new session for the attached client",
"interactively",
"Switch the attached client back to the last session",
"Show the time",
"Choose the current window interactively",
"Kill the current pane",
"Swap the current pane with the previous pane",
"Swap the current pane with the next pane",
"Show previous messages from tmux, if any",
"Move to the next window with a bell or activity marker",
"Rotate the panes in the current window backwards",
"Move to the previous window with a bell or activity marker"

]

answer_pool = ["C-b",
"C-o",
"C-z",
"!",
"\"",
"#",
"$",
"%",
"&",
"'",
",",
"-",
".",
"0 to 9",
":",
";",
"=",
"?",
"D",
"[",
"]",
"c",
"d",
"f",
"i",
"l",
"n",
"o",
"p",
"q",
"r",
"s",
" ",
"L",
"t",
"w",
"x",
"{",
"}",
"~",
"M-n",
"M-o",
"M-p"
]

puts "*** Test your knowledge of Ruby Globals!***"
puts "Based on the manual pages from http://www.openbsd.org/"


exit_app = false

while exit_app == false
  #pick a random question
  num = Random.rand(question_pool.length)

  question = question_pool[num]
  answer = answer_pool[num]
  puts ''
  puts "Q: What tmux key binding does the following: " + question
  print "A: "
  response = gets.chomp()
  if response == answer
    puts "Correct"
  else
    puts "Incorrect. The answer is: #{answer}"
  end

  exit_app = continue?

end