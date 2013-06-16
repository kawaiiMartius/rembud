require 'spec_helper'

describe "resource_in_tasks/index" do
  before(:each) do
    assign(:resource_in_tasks, [
      stub_model(ResourceInTask),
      stub_model(ResourceInTask)
    ])
    assign(:)
  end

  it "renders a list of resource_in_tasks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
