# frozen_string_literal: true

class User < ApplicationRecord
  include FactoryBot::Syntax::Methods
  validates_presence_of :userID
  validates_presence_of :surName
  validates_presence_of :name 
end
