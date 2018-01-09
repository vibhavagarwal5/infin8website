class UserMailer < ApplicationMailer
  def query_mail(name,mail,query)
    @name=name
    @mail=mail
    @query=query
    mail(to: 'vishesh.ruparelia@iiitb.org', subject: 'Query from ' + @name)
  end
end
