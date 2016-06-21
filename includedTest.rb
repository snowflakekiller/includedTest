module MyModule
  def self.included(base)
    base.extend(ClassMethods) #extends ClassMethods when included in class
  end

  def hellofrominstance
    puts "hello from #{self}"
  end

  # ClassMethods
  module ClassMethods
    def hellofromclass
      puts "Hello from #{self}"
    end
  end
end

class Blah
  include MyModule #included is fired here, base is the current self which is class Blah
end

Blah.hellofromclass # self is the class

Blah.new.hellofrominstance # self is the instance object 
