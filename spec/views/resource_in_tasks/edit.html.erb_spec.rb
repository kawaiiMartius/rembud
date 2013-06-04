require 'spec_helper'

describe "resource_in_tasks/edit" do
  before(:each) do
    @resource_in_task = assign(:resource_in_task, stub_model(ResourceInTask))
  end

  it "renders the edit resource_in_task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", resource_in_task_path(@resource_in_task), "post" do
    end
  end
end
