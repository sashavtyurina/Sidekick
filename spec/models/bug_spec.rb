require 'spec_helper'

describe Bug do
	before {@bug = Bug.new(description:"new description", application_name:"new application_name")}
	subject { @bug }

	it {should respond_to(:description)}
	it {should respond_to(:application_name)}

	it {should be_valid}

	describe "Bug description is not present" do
		before {@bug.description = ""}
		it { should_not be_valid }
	end

	describe "Application name is not specified" do 
		before { @bug.application_name = "" }
		it { should_not be_valid }
	end
end
