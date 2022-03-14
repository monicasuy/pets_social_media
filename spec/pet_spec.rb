require 'rails_helper'

RSpec.describe Pet, :type => :model do

  let(:user) {
    User.new(first_name: "John",
             last_name: "Smith",
             address: "123 Jane Doe Rd",
             email: "hello@hello.com",
             password: "password")
  }

  subject {
    Pet.new(name: "Nolan",
            description: "Lorem Ipsum",
            breed: "Shiba Inu",
            size: "medium",
            sex: "male",
            user: user,
            id: 1)
  }

  it "is valid with valid attributes" do

    expect(subject).to be_valid
  end
  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a breed" do
    subject.breed = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a sex" do
    subject.sex = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a size" do
    subject.size = nil
    expect(subject).to_not be_valid
  end


  describe "Associations" do
    it { should belong_to(:user).without_validating_presence }
  end


end
