require 'spec_helper'

describe User do

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password)}
  it { should respond_to(:password_confirmation)}
  it { should respond_to(:encrypted_password)}
  it { should respond_to(:tasks)}

  let(:user) { FactoryGirl.build_stubbed(:user) }

  context "with valid attributes" do

    subject { user }
    
    it { should be_valid }

    it 'should require an email address' do
      subject.email = ''
      subject.should_not be_valid
    end

    it 'should require a name' do
    	subject.name = ''
    	subject.should_not be_valid
    end

    context "#email validation" do
      it 'should accept valid email addresses' do
        addresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
        addresses.each do |address|
          subject.email = address
          subject.should be_valid
        end
      end

      it 'should reject invalid email addresses' do
        addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
        addresses.each do |address|
          subject.email = address
          subject.should_not be_valid
        end
      end

      it 'should reject duplicate email addresses' do
        user1 = User.create(name: 'Test User', email: 'test2@test.com', password: 'password', password_confirmation: 'password')
        user2 = User.new(name: 'Test User', email: 'test2@test.com', password: 'password', password_confirmation: 'password')
        user2.should_not be_valid
      end

      it 'should reject email addresses identical up to case' do
        user1 = User.create(name: 'Test User', email: 'test2@test.com', password: 'password', password_confirmation: 'password')
        user2 = User.new(name: 'Test User', email: 'TEST2@TEST.COM', password: 'password', password_confirmation: 'password')
        user2.should_not be_valid
      end
    end

    describe 'password validations' do

      it 'should require a password' do
        subject.password = ''
        subject.password_confirmation = ''
        subject.should_not be_valid
      end

      it 'should require a matching password confirmation' do
        subject.password = 'something_else'
        subject.should_not be_valid
      end

      it 'should reject short passwords' do
        short = 'a' * 7
        subject.password = short
        subject.password_confirmation = short
        subject.should_not be_valid
      end
    end
  end


end
