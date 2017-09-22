def reset
  print "\e[H\e[2J"
end

def get_lines
  size_text = `resize`
  column = size_text.slice(/(?<=LINES=)([0-9]+)/).to_i
end

screen = ""
loop do
  screen = ""
  Lines = get_lines
  (Lines + 1).times do |i|
    screen += "#{i}\n"
  end
  screen.chomp!
  reset
  print screen
  # sleep 1
end

