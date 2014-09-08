class Thing < ActiveRecord::Base
  include RankedModel
  ranks :row_order
end
