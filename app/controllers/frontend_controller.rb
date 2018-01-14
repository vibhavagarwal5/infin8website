class FrontendController<ApplicationController
  def index
    @user=current_user
    @a=[]
    if(@user!=nil)
      @b=@user.id
      i=0
      Reg.where(:user_id=>@user.id).each do |reg|

        @a[i]=reg.event_id
        print @a[i]
        i+=1
      end

    end
  end

  def sendmail
    @name=params[:name]
    @email=params[:email]
    @message=params[:message]
    flash[:notice]='We have recorded your response, we will get back to you later!'
    UserMailer.query_mail(@name,@email,@message).deliver
    redirect_to root_path
  end

end
