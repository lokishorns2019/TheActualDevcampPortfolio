User.create!(
    email: "lokishorns2019@gmail.com",
    password: "BobaFett2019",
    password_confirmation: "BobaFett2019",
    name: "Admin User",
    roles: "site_admin"
    )
    
puts "1 Admin user created"

User.create!(
    email: "test@test.com",
    password: "thunda",
    password_confirmation: "thunda",
    name: "Regular User"
    )
    
puts "1 regular user created"


1.times do |topic|
    Topic.create!(
        title: "Just for fun"    
    )
end

1.times do |topic|
    Topic.create!(
        title: "Coding"    
    )
end

1.times do |topic|
    Topic.create!(
        title: "Ruby"    
    )
end

puts "3 Topics created"

1.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Hello there.",
    topic_id: Topic.last.id
  )
end

puts "1 blog posts created"

1.times do |skill|
    Skill.create!(
        title: "c#",
        percent_utilized: 30
    )
end

1.times do |skill|
    Skill.create!(
        title: "Ruby on Rails",
        percent_utilized: 40
    )
end

1.times do |skill|
    Skill.create!(
        title: "html",
        percent_utilized: 12
    )
end

1.times do |skill|
    Skill.create!(
        title: "css",
        percent_utilized: 10
    )
end

1.times do |skill|
    Skill.create!(
        title: "javascript",
        percent_utilized: 8
    )
end

puts "5 skills created"

1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "By: Thor Madsen",
        body: "What fjkdsal fhdslhs hahaha g elit, sed do eiusmod tempor.",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200"
    )
end

puts "1 portfolio items created"

1.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology #{technology}",
    )
end

puts "3 technologies created"
