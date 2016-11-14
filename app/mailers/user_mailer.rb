class UserMailer < ApplicationMailer
default from: 'hello@jungle.com'


def notification_email(order)
  @order = order
  # @url  = 'http://example.com/login' (from example page)
  mail(to: @order.email, subject: "This is Confirmation for Order ({@order.id})")
  end
end

