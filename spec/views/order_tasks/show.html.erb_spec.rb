require 'spec_helper'

describe "order_tasks/show" do
  before(:each) do
    @order_task = assign(:order_task, stub_model(OrderTask))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
