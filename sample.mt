require "stdlib/enumerable.mt"

# A Person is a collection of a name, birthday and age.
deftype Person
  # Create a new Person with the same birthday and age as
  # the given Person.
  defstatic create_twin([1, 2] =: p : Person, name : String)
    %Person{name, p.birthday, p.age}
  end

  def greeting
    "Hello, <(@name + 2_345.50)>"
  end

  def name_parts(thing, _ignored, &block)
    name.each do |_first, *rest, _last|
      block(c)
    end
  end

  include Thing.Methods
  extend Thing.Methods

  def foo()
    raise "woops\nit broke"
  rescue msg : String
    while msg.size <= 10_000_000
      IO.puts(:hi)
      break 100 + 2.345_678
      self.eat
      _thing
    end

    when [a, b] =: [123, 2_456]
      IO.puts("hi")
    else
      false
    end

    a ||= 2
  rescue [1, 2] =: err : String
    _something_else
  rescue
    IO.puts(:catch_all)
  ensure
    false
  end


  def matched(%Thing{name}, [a,b] =: foo, <(a + b)>)
    foo.map{ |_a, &block| a * 2.34 }
  end
end
