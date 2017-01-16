require 'random_data'
50.times do
    Post.create!(
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph
    )
end

posts = Post.all

100.times do
    Comment.create!(
        post: posts.sample,
        body: RandomData.random_paragraph
    )
end

#Add unique Post
unique_post = Post.find_or_create_by(title: "This is my unique post", body: "This is the body for my unique post")

#Add unique Comment
Comment.find_or_create_by(
    post: unique_post,
    body: "This is the comment for my unique post"
)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"