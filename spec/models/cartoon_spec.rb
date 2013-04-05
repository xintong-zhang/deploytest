require 'spec_helper'

describe Cartoon do
  before { @cartoon = Cartoon.new(name:"Belle", url:"Belle.png")}
  subject {@cartoon}
  it {should respond_to (:name)}
  it {should respond_to (:url)}

end
