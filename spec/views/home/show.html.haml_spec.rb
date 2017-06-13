require 'rails_helper'

RSpec.describe "home/show", type: :view do
  before(:each) do
    @home = assign(:home, Home.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
