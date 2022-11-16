class UserProfileSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email, :age, :gender, :bio, :image_upload, :user_id
end
