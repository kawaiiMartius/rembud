require 'spec_helper'

describe "resource_in_tasks/new" do
  before(:each) do
    assign(:resource_in_task, stub_model(ResourceInTask).as_new_record)
  end

  it "renders new resource_in_task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", resource_in_tasks_path, "post" do
    end
  end
end
