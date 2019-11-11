class User
    attr_accessor :name, :email
  
    def initialize(attributes = {})
      @name  = attributes[:name]
      @email = attributes[:email]
    end
  
    def formatted_email
      "#{@name} <#{@email}>"
    end
  end

  user = User.new(name: "Michael Hartl", email: "mhartl@example.com")



