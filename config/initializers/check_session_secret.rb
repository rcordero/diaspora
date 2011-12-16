if heroku?
  puts "heroku app detected, using secret token from env"
  Rails.application.config.secret_token = ENV['SECRET_TOKEN'] 
else !File.exists?( File.join(Rails.root, 'config', 'initializers', 'secret_token.rb'))
  `rake generate:secret_token`
   require  File.join(Rails.root, 'config', 'initializers', 'secret_token.rb')
end
