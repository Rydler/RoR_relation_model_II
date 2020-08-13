class Pet < ApplicationRecord
  has_many :pet_histories
  belongs_to :client

  def history_count
    pet_histories.count
  end

  def avg_weight
    pet_histories.average(:weight)
  end

  def avg_height
    pet_histories.average(:heigth)
  end

  def max_weight
    pet_histories.pluck(:weight).max
  end

  def max_height
    pet_histories.pluck(:heigth).max
  end

end
