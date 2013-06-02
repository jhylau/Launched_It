class Comment < ActiveRecord::Base
  attr_accessible :app_id, :comment, :email, :first_name, :last_name

  validates_presence_of :comment
  validates_presence_of :email
  validates_presence_of :first_name
  validates_presence_of :last_name

  validates :comment, length:{ minimum: 1, too_short: "You need to enter a comment"}
  validates :first_name, length:{ minimum: 2, too_short: "Name must be atleast 2 characters"}
  validates :last_name, length:{minimum: 2, too_short: "Name must be atleast 2 characters"}


  belongs_to :app
end
