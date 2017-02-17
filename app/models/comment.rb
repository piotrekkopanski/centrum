class Comment < ActiveRecord::Base
  belongs_to :invoice
end
