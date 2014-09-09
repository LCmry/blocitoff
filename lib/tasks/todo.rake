task delete_todos: :environment do 
  Todo.where("created_at <= ?", Time.now - 5.days).destroy_all
end