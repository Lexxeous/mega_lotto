# frozen_string_literal: true

require "benchmark"

module MegaLotto
  class Drawing
    NUMBERS = 5

    def draw_inject
      NUMBERS.times.inject([]) do |arr, _i|
        arr << single_draw
      end
    end

    def draw_map
      (1..NUMBERS).map { single_draw }
    end

    def draw_new
      Array.new(NUMBERS) { single_draw }
    end

    private

    def single_draw
      rand(0...60)
    end
  end

  N = 500_000
  ml = MegaLotto::Drawing.new
  Benchmark.bm do |x|
    x.report("inject:") { N.times { ml.draw_inject } }
    x.report("   map:") { N.times { ml.draw_map } }
    x.report("   new:") { N.times { ml.draw_new } }
  end
end
