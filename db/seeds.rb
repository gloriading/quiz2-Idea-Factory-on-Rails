PASSWORD = '123'

Review.destroy_all
Idea.destroy_all
User.destroy_all

# super_user is the user we can trust (for testing)
super_user = User.create(
  first_name: 'Jon',
  last_name: 'Snow',
  email: '123@gmail.com',
  password: PASSWORD
)

10.times.each do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name

  User.create(
    first_name: first_name,
    last_name: last_name,
    email: "#{first_name.downcase}.#{last_name.downcase}@example.com",
    password: PASSWORD
  )
end

users = User.all
puts Cowsay.say("Create #{users.count} users", :tux)
# ------------------------------------------------------------------------------
100.times do
  Idea.create(
    title: Faker::Coffee.blend_name,
    description: Faker::Lorem.paragraph
  )
end

ideas = Idea.all
puts Cowsay.say("Create #{ideas.count} ideas", :ghostbusters)
#-----------------------------------------------------add `user` after association
ideas.each do |idea|
  rand(1..5).times.each do
    Review.create(
      body: Faker::TheFreshPrinceOfBelAir.quote,
      idea: idea
    )
  end
end

reviews = Review.all

puts Cowsay.say("Create #{reviews.count} reviews", :moose)
