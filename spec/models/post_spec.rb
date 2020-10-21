require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:test_user){
    User.create(email: 'test@test.com', password: 'password', name: 'test')
  }

  context "validations" do
    subject { described_class.new }

    it "is valid with valid attributes" do
      subject.title = "Anything"
      subject.body = "Anything"
      subject.user = test_user
      expect(subject).to be_valid
    end

    it "is invalid with invalid attributes" do
      subject.title = ""
      subject.body = ""
      expect(subject).to be_invalid
    end
  end
end
