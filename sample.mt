# A Person is a collection of a name, birthday and age.
deftype Person
  # Create a new Person with the same birthday and age as
  # the given Person.
  defstatic create_twin(p : Person, name : String)
    %Person{name, p.birthday, p.age}
  end

  def greeting
    "Hello, " + @name
  end

  def name_parts(thing, &block)
    name.each do |c|
      block(c)
    end
  end
end
