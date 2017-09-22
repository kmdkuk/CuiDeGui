def reset
  print "\e[H\e[2J"
end

def get_lines
  size_text = `resize`
  column = size_text.slice(/(?<=LINES=)([0-9]+)/).to_i
end

def draw
  loop do
    screen = ""
    lines = get_lines
    (lines+1).times do |i|
      line_text = yield i
      screen += line_text
      screen += "\n"
    end
    reset
    screen.chomp!
    print screen
  end
end

draw do |line|
  line.to_s
end

