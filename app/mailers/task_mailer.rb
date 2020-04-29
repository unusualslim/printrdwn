class TaskMailer < ApplicationMailer
  default from: 'notifcations@printrdwn.com'

  def new_task_email
    @task = params[:task]   
    mail(to: @task.user.email, bcc: 'support@perrybrothersoil.com',  subject: 'You have created a new Support Case')
  end

  def update_case_email
    @task = params[:task]
    mail(to: @task.user.email, subject: 'Your Support Case has been Updated')
  end

end
