class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  #confirmable은 유저인증
  #lockable은 회원 정지 ex)비번 3회 입력 오류
  #timeoutable은 일정 시간 뒤 자동 로그아웃
  #omniauthable은 fb, google 로그인 관련
  
  has_many :comments
end
