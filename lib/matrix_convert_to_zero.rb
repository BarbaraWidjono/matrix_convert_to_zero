# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.
def matrix_convert_to_0(matrix)
  r = 0
  zeros = []
  while r < matrix.length do

    c = 0
    single_zero_location = []
    while c < matrix[r].length do
      if matrix[r][c] == 0
        single_zero_location << r
        single_zero_location << c
        zeros << single_zero_location
      end

      c += 1
    end

    r += 1
  end
  return zeros
  # raise NotImplementedError
end

def initialize_matrix(rows, columns)
  # create the matrix using the rows and columns
  matrix = Array.new(rows){Array.new(columns)}

  # initialize the matrix
  rows.times do |row|
    columns.times do |column|
      matrix[row][column] = 1
    end
  end

  return matrix
end

test = initialize_matrix(4,4)
test[2][3] = 0

puts "#{test}"

x = matrix_convert_to_0(test)
puts "#{x}"
