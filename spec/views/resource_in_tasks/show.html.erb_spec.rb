require 'spec_helper'

describe "resource_in_tasks/show" do
  before(:each) do
    @resource_in_task = assign(:resource_in_task, stub_model(ResourceInTask))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
