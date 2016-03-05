require "spec_helper"

require_relative "./shared_example"

describe "Formatter Examples" do
  context "Failing tests" do
    it "fails" do
      expect("Some text").to eq("Some other text")
    end

    it "fails slowly" do
      sleep 1
      expect("Some slow text").to eq("Some other slow text")
    end
  end

  context "Passing tests" do
    it "passes quickly" do
      expect("Some text").to eq("Some text")
    end

    it "passes slowly" do
      sleep 1
      expect("Some text").to eq("Some text")
    end
  end

  describe "Shared Examples" do
    include_examples "shared example", "passing"
    include_examples "shared example", "not passing"
  end
end
