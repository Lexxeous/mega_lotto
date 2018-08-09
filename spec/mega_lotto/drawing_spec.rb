# frozen_string_literal: true

require "spec_helper"

module MegaLotto
  RSpec.describe Drawing do
    describe "#draw_inject" do
      let(:draw_inject) { MegaLotto::Drawing.new.draw_inject}

      it "returns an array." do
        expect(draw_inject.class).to eq(Array)
      end

      it "returns an array with 5 elements." do
        expect(draw_inject.size).to eq(5)
      end

      it "each element is an integer." do
        draw_inject.each do |drawing|
          expect(drawing).to be_a(Integer)
        end
      end

      it "each element is less than 60." do
        draw_inject.each do |drawing|
          expect(drawing).to be < 60
        end
      end
    end
    describe "#draw_map" do
      let(:draw_map) { MegaLotto::Drawing.new.draw_map}

      it "returns an array." do
        expect(draw_map.class).to eq(Array)
      end

      it "returns an array with 5 elements." do
        expect(draw_map.size).to eq(5)
      end

      it "each element is an integer." do
        draw_map.each do |drawing|
          expect(drawing).to be_a(Integer)
        end
      end

      it "each element is less than 60." do
        draw_map.each do |drawing|
          expect(drawing).to be < 60
        end
      end
    end
    describe "#draw_new" do
      let(:draw_new) { MegaLotto::Drawing.new.draw_new}

      it "returns an array" do
        expect(draw_new.class).to eq(Array)
      end

      it "returns an array with 5 elements." do
        expect(draw_new.size).to eq(5)
      end

      it "each element is an integer." do
        draw_new.each do |drawing|
          expect(drawing).to be_a(Integer)
        end
      end

      it "each element is less than 60." do
        draw_new.each do |drawing|
          expect(drawing).to be < 60
        end
      end
    end
  end
end
