require 'rails_helper'

RSpec.describe "home/index", type: :view do
  before(:each) do
    assign(:home, [
      Home.create!(),
      Home.create!()
    ])
  end

  it "renders a list of home" do
    render
  end
end
