require 'spec_helper'

describe "order_tasks/index" do
  before(:each) do
    assign(:order_tasks, [
      stub_model(OrderTask),
      stub_model(OrderTask)
    ])
  end

  it "renders a list of order_tasks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
