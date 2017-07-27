class Api::V1::LinksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @link = HotRead.find_by(link_params)
    create_or_count(@link)
  end

  private
    def link_params
      params.permit(:url)
    end

    def create_or_count(link)
      if link.nil?
        new_hot_read = HotRead.create(url: link_params[:url], count: 1)
        render json: HotRead.get_top_ten
      else
        add_count = link.count + 1
        link.update_attributes(count: add_count)
        render json: HotRead.get_top_ten
      end
    end
end
