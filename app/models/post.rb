class Post < ActiveRecord::Base
    require 'carrierwave/orm/activerecord'    
    has_many :comments
    has_and_belongs_to_many :hashtags
    accepts_nested_attributes_for :hashtags # form_for 안에서 hashtag와 관련된 내용을 만들겠다.
    mount_uploader :image_url, ImageUploader
    
end
