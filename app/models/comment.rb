class Comment < ActiveRecord::Base
  attr_accessible :app_id, :comment, :email, :first_name, :last_name
end
