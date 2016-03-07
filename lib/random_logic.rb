require "random_logic/version"

module RandomLogic

  # Inverse value
  def self.inverse(value)
    1.0 - value
  end

  # Random number of addition
  # Bias the value in the center
  def self.add
    rand + rand / 2
  end

  # Random number of multiplication
  # Bias the value near 0
  def self.multiply
    rand * rand
  end

  # Inversion of random number of multiplication
  # Bias the value near 1
  def self.multiply_inverse
    inverse(rand * rand)
  end

  # The square of the random number
  # Further increasing the proportion of the value near 0
  def self.square
    r = rand * rand
    r * r
  end

  # Inversion of the square of the random number
  # Further increasing the proportion of the value near 1
  def self.square_inverse
    inverse(square)
  end

  # Random number of square root
  # Increase linearly frequency of occurrence from 0.0 to 1.0.
  def self.sqrt
    Math.sqrt rand
  end

  # Inversion of random number of square root
  # Increase linearly frequency of occurrence from 1.0 to 0.0.
  def self.sqrt_inverse
    inverse(sqrt)
  end

  # Normal random number
  def self.normal
    value = Math.sqrt(-2.0 * Math.log(rand)) * Math.sin(2.0 * Math::PI * rand)
    (value + 3) / 6
  end

  # Normal random with re-try logic when the random value was lower than 0 or higher than 1
  def self.normal_rand
    while (true) do
      value = normal
      return value if (0 <= value && value < 1)
    end
  end

end
