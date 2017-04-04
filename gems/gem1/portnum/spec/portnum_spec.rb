require "spec_helper"

RSpec.describe Portnum do
  it "has a version number" do
    expect(Portnum::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
