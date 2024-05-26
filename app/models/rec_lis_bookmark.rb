class RecLisBookmark < ApplicationRecord
  belongs_to :rec_lis_list
  belongs_to :rec_lis_recipe
end
