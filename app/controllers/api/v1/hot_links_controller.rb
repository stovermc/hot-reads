class Api::V1::HotLinksController < ApplicationController
  def create
    @link = HotRead.find_by(params['url'])
    create_or_count(@link)
  end
  private
    def link_params
      params.permit(:url)
    end

    def create_or_count(link)
      if link.nil?
        new_hot_read = HotRead.create(url: link_params, count: 1)
        render json: HotRead.get_recent
      else
        add_count = link.count + 1
        link.update_attributes(count: add_count)
        render HotRead.get_recent
    end
end
