class HotRead < ActiveRecord::Base
  validates :url, presence: true

  def self.get_top_ten
    where('updated_at >=?', 24.hours.ago).order('count DESC').limit(10)
  end
end
