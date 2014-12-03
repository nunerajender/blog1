class Article < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #devise :database_authenticatable, :registerable,
        # :recoverable, :rememberable, :trackable, :validatable
has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end
