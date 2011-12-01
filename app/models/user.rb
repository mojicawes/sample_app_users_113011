class User < ActiveRecord::Base
  attr_accessible :name, :email
  
  email_regexp = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, :presence => true,
                   :length => { :maximum => 50}
  
  validates :email, :presence => true,
                    :format   => { :with => email_regexp},
                    :uniqueness => {:case_sensitive => false}
                    
  has_many :groups, :foreign_key => "follower_id", 
                    :dependent => destroy
                    
  has_many :microposts
                    
  def following?    
  end
  
  def follow!
  end
  
  def unfollow!
  end

end
