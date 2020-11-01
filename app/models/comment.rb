class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_attributes=(user_atts)
    self.user = User.find_or_create_by(username: user_atts[:username]) unless user_atts[:username].blank?
  end

  # def user_attributes=(user_atts)
  #   if !user_atts[:username].blank?
  #     self.user = User.find_or_create_by(username: user_atts[:username]
  #   end
  # end


end
