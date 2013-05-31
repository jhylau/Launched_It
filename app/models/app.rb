class App < ActiveRecord::Base
  attr_accessible :codebase_url, :description, :email, :title, :url
end
