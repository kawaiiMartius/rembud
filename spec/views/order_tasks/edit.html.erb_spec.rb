require 'spec_helper'

describe "order_tasks/edit" do
  before(:each) do
    @order_task = assign(:order_task, stub_model(OrderTask))
  end

  it "renders the edit order_task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", order_task_path(@order_task), "post" do
    end
  end
end
