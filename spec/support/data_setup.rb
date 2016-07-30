class DataSetup

  def people_and_groups_setup
    john = User.new(email: 'john@beatles.com', password: 'rock!1965')
    paul = User.new(email: 'paul@beatles.com', password: 'rock!1965')
    george = User.new(email: 'george@beatles.com', password: 'rock!1965')
    ringo = User.new(email: 'ringo@beatles.com', password: 'rock!1965')
    beatles = Group.new(title: 'The Beatles')
    beatles.users << john << paul << george << ringo
    linda = User.new(email: 'linda@wings.com', password: 'rock!1970')
    wings = Group.new(title: 'Wings')
    wings.users << paul << linda
    wings.save
    beatles.save
    paul.save
    return [beatles, wings, paul, ringo]
  end
end
