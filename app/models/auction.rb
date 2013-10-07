class Auction < ActiveRecord::Base
	belongs_to :user
	has_many :bids
	has_many :users, :through => :bids

	validates :name, presence: true
	validates :duration, presence: true,
											 numericality: {only_integer: true, greater_than: 0}
	validates :start_price, presence: true,
													numericality: {only_integer: true, greater_than: 0}


	def remainder
		deadline = self.created_at + self.duration.hours
		remainder = deadline - DateTime.now
		remainder.to_i
	end

	def time_remaining(remainder)
		Time.at(remainder).utc.strftime("%H:%M:%S")				 	
	end

	def completed?(remainder)
		remainder <= 0				 	
	end

	def current_price
		if self.bids.first.amount == nil
			 self.start_price
		else
			self.bids.where.not("amount" => nil).last.amount
		end		
	end
end
