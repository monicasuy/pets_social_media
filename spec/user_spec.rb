require 'rails_helper'

RSpec.describe User, :type => :model do

  subject {
    User.new(first_name: "John",
                        last_name: "Smith",
                        address: "123 Jane Doe Rd",
                        email: "hello@hello.com",
                        password: "password",
                        id: 1)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a first name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a last name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without an address" do
    subject.address = nil
    expect(subject).to_not be_valid
  end


  describe "Associations" do
    it { should have_many(:pets).without_validating_presence }
  end


end
