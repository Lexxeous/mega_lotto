# frozen_string_literal: true

RSpec.describe MegaLotto do
  describe "#version" do
    it "has a version number." do
      expect(MegaLotto::VERSION).not_to be nil
    end
  end
end
