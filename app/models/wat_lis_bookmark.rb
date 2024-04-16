class WatLisBookmark < ApplicationRecord
  belongs_to :wat_lis_movie
  belongs_to :wat_lis_list
end
