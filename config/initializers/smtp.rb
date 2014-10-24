ActionMailer::Base.smtp_settings = {
	:address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => "scarselli",
    :user_name            => "diamondsscarselli@gmail.com",
    :password             => "Cfycrhbn1",
    :authentication       => "plain",
    :enable_starttls_auto => true
    }