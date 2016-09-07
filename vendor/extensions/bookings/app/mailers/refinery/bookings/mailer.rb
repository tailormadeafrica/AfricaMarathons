module Refinery
  module Bookings
    class Mailer < ActionMailer::Base

      def confirmation(booking, request)
        @booking = booking
        mail :subject  => Refinery::Bookings::Setting.confirmation_subject,
             :to       => booking.email,
             :from     => "\"#{Refinery::Core.site_name}\" <no-reply@#{request.domain}>",
             :reply_to => Refinery::Bookings::Setting.notification_recipients.split(',').first
      end

      def notification(booking, request)
        @booking = booking
        mail :subject  => Refinery::Bookings::Setting.notification_subject,
             :to       => Refinery::Bookings::Setting.notification_recipients,
             :from     => "\"#{Refinery::Core.site_name}\" <no-reply@#{request.domain}>"
      end

    end
  end
end
