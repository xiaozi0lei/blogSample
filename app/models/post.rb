class Post < ActiveRecord::Base

  # 关联comment模型
  has_many :comments, dependent: :destroy
  # 验证，文章必须有title，title的最小长度1
  validates :title, presence: true,
                    length: { minimum: 1 }

  acts_as_taggable
  acts_as_taggable_on :tags

end
