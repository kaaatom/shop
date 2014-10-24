ActionMailer::Base.smtp_settings = {
	:address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => "anythingworks",
    :user_name            => "kaaatom@gmail.com",
    :password             => "rjirf2597",
    :authentication       => "plain",
    :enable_starttls_auto => true
    }