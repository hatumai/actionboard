require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:test_user){
    User.create(email: 'test@test.com', password: 'password', name: 'test')
  }
  let(:commentable){
    Post.create(user_id: test_user.id, title: 'test', body: 'test')
  }

  context "validations" do
    subject { described_class.new }

    it "is valid with valid attributes" do
      subject.body = "Anything"
      subject.user = test_user
      subject.commentable = commentable
      expect(subject).to be_valid
    end

    it "is invalid with invalid attributes" do
      subject.body = ""
      expect(subject).to be_invalid
    end
  end
end
