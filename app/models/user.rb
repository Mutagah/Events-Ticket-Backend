class User < ApplicationRecord
    
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 8 }
  
    has_secure_password

    has_one :user_profile, dependent: :destroy
    has_many :events
    after_create :profile

    attribute :role, :string, default: "user"

    ROLES = %w{user organizer admin }
    
    ROLES.each do |role_name|
        define_method "#{role_name}?" do 
          role == role_name  
        end
    end

    def profile
      UserProfile.create(
        email: self.email,
        user_id: self.id
      )
    end  
    
end
