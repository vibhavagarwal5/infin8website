class UserMailer < ApplicationMailer
  def query_mail(name,mail,query)
    @name=name
    @mail=mail
    @query=query
    mail(to: 'infin8-2018@iiitb.org', subject: 'Query from ' + @name)
  end
  def bulk_mail(user, subject, body)
      @user=user
      @subject=subject
      @body=body
      mail(to: @user.email, subject: @subject)
  end
end
