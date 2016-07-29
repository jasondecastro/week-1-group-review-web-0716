# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
require 'pry'
class User
  attr_accessor :name, :photos

  def initialize(name)
    @name = name
    @photos = []
  end
  
end

class Photo
  attr_reader :user

  def initialize
    @comments = []
  end

  def user=(user)
    @user = user
    user.photos << self
  end

  def comments
    @comments
  end

  def make_comment(comment)
    @comments << Comment.new(comment)
  end

end

class Comment
  @@all = []

  def initialize(comment_string)
    @@all << comment_string
  end

  def self.all
    @@all
  end
end

photo = Photo.new
user = User.new("Sophie")
photo.user = user 
photo.user.name
# => "Sophie"
user.photos
binding.pry
# => [<photo 1>]


photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]

Comment.all
