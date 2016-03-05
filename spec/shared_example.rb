require "spec_helper"

RSpec.shared_examples "shared example" do |parameter|
  # Same behavior is triggered also with either `def something; 'some value'; end`
  # or `define_method(:something) { 'some value' }`
  let(:something) { parameter }

  it "uses the given parameter" do
    expect("passing").to eq(parameter)
  end

  it "uses the given parameter slowly" do
    sleep 1
    expect("passing").to eq(parameter)
  end
end
