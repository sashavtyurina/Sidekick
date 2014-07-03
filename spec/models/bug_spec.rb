require 'spec_helper'

describe Bug do
	before {@bug = Bug.new(description:"new description", application_name:"new application_name")}
	subject { @bug }

	it {should respond_to(:description)}
	it {should respond_to(:application_name)}
end
