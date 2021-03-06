class Auction < ActiveRecord::Base
	belongs_to :user
	has_many :bids
	has_many :users, :through => :bids
	has_many :images, dependent: :destroy
	has_many :notifications
	belongs_to :location



	validates :name, presence: true
	validates :duration, presence: true,
											 numericality: {only_integer: true, greater_than: 0}
	validates :start_price, presence: true,
													numericality: {only_integer: true, greater_than: 0}
	validates :location_id, presence: true												


	def remainder
		deadline = self.created_at + self.duration.hours
		remainder = deadline - Time.zone.now
		remainder.to_i
	end

	def completed?
		self.remainder <= 0				 	
	end

	def current_price
		if self.bids.first == nil || self.bids.first.amount == nil
			 self.start_price
		else
			self.bids.where.not("amount" => nil).last.amount
		end		
	end

	def winner
		self.bids.where.not("amount" => nil).last.user if self.completed? && self.bids.first != nil
	end

	def leader
		return "" if self.bids.empty? || self.bids.first.amount == nil
		return self.winner if self.completed?
		self.bids.where.not("amount" => nil).last.user if !self.completed? && self.bids.first != nil
	end

	def self.search(query)
		where('name LIKE ?',"%#{query}%")
	end
end
