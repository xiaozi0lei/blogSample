class Post < ActiveRecord::Base
  # 关联comment模型
  has_many :comments
  # 验证，文章必须有title，title的最小长度1
  validates :title, presence: true,
                    length: { minimum: 1 }
end
