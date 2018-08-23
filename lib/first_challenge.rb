require 'pry'

def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }


#first_method

contacts.each do | person, data |
  if person == "Freddy Mercury"
    data.each do | attribute, value |
      if attribute == :favorite_icecream_flavors
        value.delete_if{|x| x == "strawberry"}
      end
    end
  end

end

#second_method
# contacts["Freddy Mercury"][:favorite_icecream_flavors].delete_if{ |x| x == "strawberry" }

  contacts
binding_pry
end
