class App < ActiveRecord::Base
  attr_accessible :codebase_url, :description, :email, :title, :url

  has_many :comments

  validates_presence_of :codebase_url
  validates_presence_of :description
  validates_presence_of :email
  validates_presence_of :title
  validates_presence_of :url


  validates_uniqueness_of :title
  validates_uniqueness_of :codebase_url
  validates_uniqueness_of :url 

  validates_format_of :email, with: /@/

  
end
