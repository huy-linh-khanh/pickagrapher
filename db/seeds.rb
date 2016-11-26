def create_categories
  Category.create(
    [
      Category.new(name: 'Wedding', unit_name: 'day')
    ]
  )
end

def create_users
  User.create(
    [
      User.new(
        name: 'Huy Pham',
        email: 'henry.huypham@gmail.com',
        password: '123123123'
      ),
      User.new(
        name: 'Tang Tang',
        email: 'tangtang@gmail.com',
        password: '123123123'
      )
    ]
  )
end

def create_photographers
  users = User.all

  users.each do |user|
    
  end
  Photographer.create(
    [
      
    ]
  )
end
