class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
 
   before_save :send_text
  def send_text
  	self.text = self.title if text.blank?
  end
  
  after_save :send_message
  def send_message
		puts 'saved successfull' 
  end
end
