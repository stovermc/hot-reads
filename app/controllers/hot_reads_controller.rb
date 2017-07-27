class HotReadsController < ApplicationController
  def index
    @hot_reads = HotRead.get_top_ten
  end
end
