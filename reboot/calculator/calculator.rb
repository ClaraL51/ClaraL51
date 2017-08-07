# refactor your code

def calculate(first_number, second_number, operator)
  # compute and return result
  return first_number + second_number if operator == "+"
  return first_number - second_number if operator == "-"
  return first_number * second_number if operator == "*"
  return first_number / second_number if operator == "/"
  return "error"
end
