require 'spec_helper'

describe App do 
  let(:application) {App.new}
  let(:previous_count) {App.count}
  let(:app) { FactoryGirl.create(:app) }


  it 'creates a new instance of app' do 
    previous_count = App.count
    app
    expect(App.count).to eql(previous_count + 1)
  end

  it 'will not create a new instance if codebase_url is missing' do 
    previous_count = App.count
    FactoryGirl.build(:app, codebase_url: '')
    expect(App.count).to eql(previous_count)
  end

  it 'will not create a new instance of app if email is missing' do
    previous_count = App.count
    FactoryGirl.build(:app, email: '')
    expect(App.count).to eql(previous_count)
  end

  it 'will not create a new app if title is missing' do
    previous_count
    FactoryGirl.build(:app, title: '')
    expect(App.count).to eql(previous_count)

  end
end

describe Comment do 
  let(:comment) { FactoryGirl.create(:comment) }

  it 'creates a new instance of comment' do 
    previous_count = Comment.count
    comment
    expect(Comment.count).to eql(previous_count + 1)
  end
  it 'will not create a new comment if comment section is missing' do
    previous_count = Comment.count
    FactoryGirl.build(:comment, comment: '')
    expect(Comment.count).to eql(previous_count)
  end
  it 'wil not create a new comment if email is not valid' do
    previous_count = Comment.count
    FactoryGirl.build(:comment, email: 'oiwfioj#gmail.com')
    expect(Comment.count).to eql(previous_count)
  end
end



