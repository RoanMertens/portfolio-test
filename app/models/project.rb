class Project < ApplicationRecord
  has_many :testemonials, dependent: :destroy
  validates_presence_of :name, :blurb, :location_url, :github_url, :image_url

  def next
    if self.class.last.id > id
      Project.where("id > ?", id).limit(1).first
    else
      self.class.first
    end
  end

  def prev
    if self.class.first.id < id
      Project.where("id < ?", id).reverse_order.limit(1).first
    else
      self.class.last
    end
  end
end
