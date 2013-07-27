require 'active_support/concern'

module PhoneNumberValidator
  extend ActiveSupport::Concern

  included do
    validates :phone, :format => { :with => /^\s*1?\W*([2-9][0-8][0-9])\W*([2-9][0-9]{2})\W*([0-9]{4})(\se?x?t?(\d*))?\s*$/, :allow_blank => true }
    before_validation :format_phone_number#, :if => :phone_number_changed?

    # Remove non-digits and preceding 1
    def format_phone_number
      self.phone_number = self.phone_number.to_s.strip

      self.phone_number.gsub!(/\D/, "")

      if self.phone_number.length == 11 && self.phone_number =~ /^1/
        self.phone_number.slice!(0)
      end
    end
  end
end
