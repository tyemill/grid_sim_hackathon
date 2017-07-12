class Poll < ActiveRecord::Base
  has_many :options
  accepts_nested_attributes_for :options

  def options_for_poll
    collection = options.where(poll_id: id)
    collection.any? ? collection : options.build
  end
end
