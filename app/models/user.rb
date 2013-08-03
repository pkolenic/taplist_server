class User < ActiveRecord::Base
  has_secure_password
  before_save { email.downcase! }
  before_validation :format_phone_number
  before_create :create_remember_token

  def full_name
    "#{first_name} #{last_name}"
  end

  # Remove non-digits and preceding 1
  def format_phone_number
    self.phone_number = self.phone_number.to_s.strip

    self.phone_number.gsub!(/\D/, "")

    if self.phone_number.length == 11 && self.phone_number =~ /^1/
    self.phone_number.slice!(0)
    end
  end

  # Validations
  validates :first_name, presence: true, length: { maximum: 25 }
  validates :last_name, presence: true, length: { maximum: 25 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :phone_number, format: { with: /\A\s*1?\W*([2-9][0-8][0-9])\W*([2-9][0-9]{2})\W*([0-9]{4})(\se?x?t?(\d*))?\s*\z/ },
                           allow_blank: true

  validates :password, length: { minimum: 6 }
  
  # Encryption Methods
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
  
  private
    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
