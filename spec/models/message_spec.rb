require 'spec_helper'

describe Message do

  before { @message = Message.new(phone_number: "111111111111", content: "hi. this is a test",flag:true, cartoon_id: nil, location:"testloc") }
  subject { @message}

  it {should respond_to (:phone_number)} 
  it {should respond_to (:content)}
  it {should respond_to (:flag)}
  it {should respond_to (:cartoon_id)}
  it {should be_valid}
  it {should respond_to (:location)}  
  describe "when phone number is not present" do
    before { @message.phone_number = " "}
    it {should_not be_valid}
  end
  describe "when message content is not present" do
    before { @message.content = " "}
    it {should_not be_valid}
 end

  describe "when phone_number length is invalid" do
   it "should be invalid" do
     phone_numbers = ["0", "10", "11", "222", "3333", "44444", "666666", "7777777", "88888888", "999999999", "11111111111", "2222222222222"]
     phone_numbers.each do |p|
       @message.phone_number = p
       @message.should_not be_valid
     end
   end
  end


end
