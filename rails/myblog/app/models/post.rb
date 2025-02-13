class Post < ApplicationRecord
  belongs_to :category
  has_many :taggings
  has_many :tags, through: :taggings

  validates :title, presence: true
  has_rich_text :body

  def all_tags=(tags)
    if tags.blank?
      return
    end

    self.tags = tags.split(",").map do |name|
      unless name.blank?
        Tag.where(name: name.strip).first_or_create!
      end
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end
end
