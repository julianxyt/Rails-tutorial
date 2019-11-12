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

=begin root 'static_pages#home'
  get 'static_pages/home', to: 'static_pages#home'
  get 'static_pages/help', to: 'static_pages#help'
  get 'static_pages/about', to: 'static_pages#about'
  get 'static_pages/contact', to: 'static_pages#contact' =end

