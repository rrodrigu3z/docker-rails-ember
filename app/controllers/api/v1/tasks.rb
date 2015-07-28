module API
  module V1
    class Tasks < Grape::API
      include API::V1::Defaults

      resource :tasks do
        desc "Return all tasks"
        get "", root: :tasks do
          Task.all
        end

        desc "Create a task"
        # params do
        #   requires :title, type: String, desc: "Title of the task"
        #   requires :description, type: String, desc: "Description of the task"
        # end
        post "", root: :tasks do
          Task.create!({
            title: params[:task][:title],
            description: params[:task][:description]
          })
        end

        desc "Return a task"
        params do
          requires :id, type: String, desc: "ID of the task"
        end
        get ":id", root: "task" do
          Task.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
