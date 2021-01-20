class UserPlantSerializer < ActiveModel::Serializer
  
  belongs_to :user 
  has_many :user_likes, through: :likes, source: :user

  attributes :id, :user_id, :user_icon, :user_name, :user_fav, :monograph_id, :common_name, :plant_name, :personality, :insight, :story_notes, :difficulty, :sunlight, :moisture

end
