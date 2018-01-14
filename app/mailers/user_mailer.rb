class UserMailer < ApplicationMailer
  def query_mail(name,mail,query)
    @name=name
    @mail=mail
    @query=query
    mail(to: 'lakshay.infin8@iiitb.org', subject: 'Query from ' + @name, cc: 'vishesh.ruparelia@iiitb.org')
  end
  def bulk_mail(user, subject, body)
      @user=user
      @subject=subject
      @body=body
      mail(to: @user.email, subject: @subject)
  end
end
