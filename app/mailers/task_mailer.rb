class TaskMailer < ApplicationMailer
  default from: 'notifcations@printrdwn.com'

  def new_task_email
    @task = params[:task]   
    mail(to: @task.requested_by.email, bcc: 'support@perrybrothersoil.com',  subject: 'You have created a new task')
  end

  def update_task_email
    @task = params[:task]
    mail(to: @task.requested_by.email, subject: 'Your task has been Updated')
  end

end
