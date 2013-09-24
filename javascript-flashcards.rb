# Pattern for Q and A:
# q = "The exception object passed to #raise"
# a = "$!"
def continue?
  print "Enter any key to continue or 'x' to exit: "
  response = gets.chomp().downcase
  if response == 'x'
    return true
  else
    return false
  end
end

question_pool = [
    "A statement used to group zero or more statements and is delimited by a pair of curly brackets.",
  "Terminates the current loop, switch, or label statement and transfers program control to the statement following the terminated statement.",
  "Declares a read-only named constant.",
  "Terminates execution of the statements in the current iteration of the current or labelled loop, and continues execution of the loop with the next iteration.",
  "Invokes any available debugging functionality. If no debugging functionality is available, this statement has no effect.",
  "Creates a loop that executes a specified statement until the test condition evaluates to false. The condition is evaluated after executing the statement, resulting in the specified statement executing at least once.",
  "Allows a signed script to provide properties, functions, and objects to other signed or unsigned scripts. This feature is not in ECMA-262, Edition 3.",
  "Creates a loop that consists of three optional expressions, enclosed in parentheses and separated by semicolons, followed by a statement executed in the loop.",
  "Iterates a specified variable over all values of object's properties. For each distinct property, a specified statement is executed.",
  "Iterates over the enumerable properties of an object, in arbitrary order. For each distinct property, statements can be executed.",
  "Iterates over iterable objects (including arrays, array-like objects, iterators and generators), invoking a custom iteration hook with statements to be executed for the value of each distinct property.",
  "Declares a function with the specified parameters.",
  "Executes a statement if a specified condition is true. If the condition is false, another statement can be executed.",
  "Allows a script to import properties, functions, and objects from a signed script that has exported the information. This feature is not in ECMA 262, Edition 3.",
  "Provides a statement with an identifier that you can refer to using a break or continue statement.",
  "Declares a block scope local variable, optionally initializing it to a value.",
  "Specifies the value to be returned by a function.",
  "Evaluates an expression, matching the expression's value to a case label, and executes statements associated with that case.",
  "Throws a user-defined exception.",
  "Marks a block of statements to try, and specifies a response, should an exception be thrown.",
  "Declares a variable, optionally initializing it to a value.",
  "Creates a loop that executes a specified statement as long as the test condition evaluates to true. The condition is evaluated before executing the statement."
]

answer_pool = [
  "block",
  "break",
  "const",
  "continue",
  "debugger",
  "do...while",
  "export",
  "for",
  "for each...in",
  "for...in",
  "for...of",
  "function",
  "if...else",
  "import",
  "label",
  "let",
  "return",
  "switch",
  "throw",
  "try...catch",
  "var",
  "while",
  "with"
 ]

puts "*** Test your knowledge of JavaScript statements!***"
puts "Vocabulary based on documentation from Mozilla Developer Network"
puts "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference"


exit_app = false

while exit_app == false
  #pick a random question
  num = Random.rand(question_pool.length)

  question = question_pool[num]
  answer = answer_pool[num]
  puts ''
  puts "Q: " + question
  print "A: "
  response = gets.chomp()
  if response == answer
    puts "Correct"
  else
    puts "Incorrect. The answer is: #{answer}"
  end

  exit_app = continue?

end