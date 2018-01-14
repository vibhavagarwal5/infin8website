class UserMailer < ApplicationMailer
  def query_mail(name,mail,query)
    @name=name
    @mail=mail
    @query=query
    mail(to: 'no.reply.zense@gmail.com', subject: 'Query from ' + @name)
  end
end
