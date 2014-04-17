Rails.application.routes.draw do
  mount RedisAnalytics::Dashboard::Engine => "/dashboard"
  root :to => Proc.new { |env| [200, {'Content-Type' => 'text/html'}, ["You have been dummied!"]] }
end
