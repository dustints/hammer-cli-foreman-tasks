module HammerCLIForemanTasks
  class Task < HammerCLIForeman::Command

    resource :foreman_tasks

    class ProgressCommand < HammerCLIForeman::Command

      include HammerCLIForemanTasks::Helper

      action :show
      build_options

      command_name "progress"
      desc "Show the progress of the task"

      def execute
        task_progress(option_id)
        HammerCLI::EX_OK
      end

    end

    autoload_subcommands
  end

  HammerCLI::MainCommand.subcommand 'task', "Tasks related actions.", Task
end
