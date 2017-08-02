User.create!(
    email: "test@test.com",
    password: "thunda",
    password_confirmation: "thunda",
    name: "Admin User",
    roles: "site_admin"
    )
    
puts "1 Admin user created"

User.create!(
    email: "test2@test.com",
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
        body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?",
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

3.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology #{technology}",
    )
end

puts "3 technologies created"
