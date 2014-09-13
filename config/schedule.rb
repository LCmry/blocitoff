set :environment, "development"
set :output, {:error => "log/cron_error_log.log", :standard => "log/cron_log.log"}

every :day, at: '3:00 am' do
  rake "delete_todos"
end
