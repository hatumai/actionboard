require 'rails_helper'

RSpec.describe User, type: :model do

    context "validations" do
      subject { described_class.new }

      it "is valid with valid attributes" do
        subject.name = "Anything"
        subject.email = "Anything@test.com"
        subject.password = "Anything"
        expect(subject).to be_valid
      end

      it "is invalid with invalid attributes" do
        subject.name = ""
        subject.email = "Anything@test.com"
        subject.password = "Anything"
        expect(subject).to be_invalid
      end
    end
  end