require "stdlib/enumerable.mt"

# A Person is a collection of a name, birthday and age.
deftype Person
  # Create a new Person with the same birthday and age as
  # the given Person.
  defstatic create_twin([1, 2] =: p : Person, name : String)
    %Person{name, p.birthday, p.age}
  end

  def greeting
    "Hello, " + @name
  end

  def name_parts(thing, _ignored, &block)
    name.each do |_first, *rest, _last|
      block(c)
    end
  end

  include Thing.Methods

  def foo()
    raise "woops"
  rescue msg : String
    while msg.size <= 10.0_000_000
      IO.puts(:hi)
      break 1 + 2
      self
      _thing
    end

    when [a,b] =: [1,2]
      IO.puts("hi")
    else
      false
    end

    a ||= 2
  rescue [1,2] =: err : String
    _something_else
  rescue
    IO.puts(:catch_all)
  ensure
    false
  end


  def matched(%Thing{name}, [a,b] =: foo, <(a + b)>)
    foo.map{ |a| a * 2 }
  end
end
