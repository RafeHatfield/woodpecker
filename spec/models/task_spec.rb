require 'spec_helper'

describe Task do

  it { should respond_to(:title) }
  it { should respond_to(:start_at) }
  it { should respond_to(:active) }
  it { should respond_to(:recurs_amount) }
  it { should respond_to(:recurs_type) }
  it { should respond_to(:tolerance_amount) }
  it { should respond_to(:tolerance_type) }
  it { should respond_to(:user) }
  it { should respond_to(:user_id) }

  let(:user) { FactoryGirl.build_stubbed(:user) }
  let(:task) { FactoryGirl.build_stubbed(:task, user: user) }

  subject { task }

  its(:user) { should eq user }

  it { should be_valid }

  it "should require a title" do 
    task.title = ''
    should_not be_valid
  end

  it "should require a start datetime" do
  	task.start_at = nil
  	should_not be_valid
  end

  it "should require recurs_amount value" do
  	task.recurs_amount = nil
  	should_not be_valid
  end

  it "should require a recurs_type value" do
  	task.recurs_type = nil
  	should_not be_valid
  end

  it "should require a user" do
  	task.user = nil
  	should_not be_valid
  end
end
