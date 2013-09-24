#Pattern for Q and A:
#q = "any character except newline"
#a = "."
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
  "any character except newline",
  "any single character of set",
  "any single character NOT of set",
  "0 or more previous regular expression",
  "0 or more previous regular expression (non-greedy)",
  "1 or more previous regular expression",
  "1 or more previous regular expression (non-greedy)",
  "0 or 1 previous regular expression",
  "alternation",
  "grouping regular expressions",
  "beginning of a line or string",
  "end of a line or string",
  "at least m but most n previous regular expression",
  "at least m but most n previous regular expression ",
  "nth previous captured group",
  "whole match",
  "pre-match",
  "post-match",
  "highest group matched",
  "beginning of a string",
  "backspace(0x08)(inside[]only)",
  "word boundary(outside[]only)",
  "non-word boundary",
  "digit, same as[0-9]",
  "non-digit",
  "non-whitespace character",
  "whitespace character[ \\t\\n\\r\\f]",
  "non-word character",
  "word character[0-9A-Za-z_]",
  "end of a string",
  "end of a string, or before newline at the end",
  "comment",
  "grouping without backreferences",
  "zero-width positive look-ahead assertion",
  "zero-width negative look-ahead assertion",
  "nested anchored sub-regexp. stops backtracking",
  "turns on/off imx options for rest of regexp",
  "turns on/off imx options, localized in group",
  "zero-width positive look-behind assertion",
  "zero-width negative look-behind assertion"
]

answer_pool = [
  ".",
  "[ ]",
  "[^ ]",
  "*",
  "*?",
  "+",
  "+?",
  "?",
  "|",
  "( )",
  "^",
  "$",
  "{m,n}",
  "{m,n}(non-greedy)",
  "\\1-9",
  "\\&",
  "\\`",
  "\\'",
  "\\+",
  "\\A",
  "\\b",
  "\\b",
  "\\B",
  "\\d",
  "\\D",
  "\\S",
  "\\s",
  "\\W",
  "\\w",
  "\\z",
  "\\Z",
  "(?#)",
  "(?:)",
  "(?=)",
  "(?!)",
  "(?>)",
  "(?imx-imx)",
  "(?imx-imx:re)",
  "(?<=)",
  "(?<!)"
]

puts "*** Test your knowledge of Regular Expressions***"
puts "Based on Ruby QuickRef from ZenSpider.com"


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