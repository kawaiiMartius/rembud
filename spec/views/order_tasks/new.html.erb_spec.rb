require 'spec_helper'

describe "order_tasks/new" do
  before(:each) do
    assign(:order_task, stub_model(OrderTask).as_new_record)
  end

  it "renders new order_task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", order_tasks_path, "post" do
    end
  end
end
