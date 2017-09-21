def reset
  print "\e[H\e[2J"
end

def get_lines
  size_text = `resize`
  column = size_text.slice(/(?<=LINES=)([0-9]+)/).to_i
end

reset

