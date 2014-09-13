desc "Deletes To-Dos every 7 days"
task delete_todos: :environment do 
  Todo.where("created_at <= ?", Time.now - 7.days).destroy_all
end