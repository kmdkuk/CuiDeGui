def reset
  puts "\e[H\e[2J"
end

def get_column
  size_text = `resize`
  column = size_text.slice(/(?<=COLUMNS=)([0-9]+)/).to_i
end

p "abc test"

reset

size_text = `resize`

p size_text

p get_column

