# frozen_string_literal: true

cheatsheet do
  title 'Terraform'
  docset_file_name 'Terraform'
  keyword 'terraform'

  introduction <<-'INTRO'
  Terraform is a tool for building, changing, and versioning infrastructure
  safely and efficiently.

  Terraform can manage existing and popular service providers as well as
  custom in-house solutions.
  INTRO

  category do
    id 'apply'

    entry do
      notes <<-'NOTES'
      Builds or changes infrastructure according to Terraform configuration
      files in `DIR`.

      By default, apply scans the current directory for the configuration
      and applies the changes appropriately. However, a path to another
      configuration or an execution plan can be provided.

      Execution plans can be used to only execute a pre-determined
      set of actions.
      NOTES
    end

    entry do
      command '-auto-approve'
      name 'Skip interactive approval of plan before applying.'
    end

    entry do
      command '-backup=path'
      name <<-'NAME'
      Path to backup the existing state file before modifying.
      Defaults to the `-state-out` path with `.backup` extension.
      Set to `-` to disable backup.
      NAME
    end

    entry do
      command '-compact-warnings'
      name <<-'NAME'
      If Terraform produces any warnings that are not
      accompanied by errors, show them in a more compact
      form that includes only the summary messages.
      NAME
    end

    entry do
      command '-lock=true'
      name 'Lock the state file when locking is supported.'
    end

    entry do
      command '-lock-timeout=0s'
      name 'Duration to retry a state lock.'
    end

    entry do
      command '-input=true'
      name 'Ask for input for variables if not directly set.'
    end

    entry do
      command '-no-color'
      name 'If specified, output won\'t contain any color.'
    end

    entry do
      command '-parallelism=n'
      name 'Limit the number of parallel resource operations.'
    end

    entry do
      command '-refresh=true'
      name <<-'NAME'
      Update state prior to checking for differences. This
      has no effect if a plan file is given to apply.
      NAME
    end

    entry do
      command '-state=path'
      name <<-'NAME'
      Path to read and save state (unless state-out
      is specified). Defaults to `terraform.tfstate`
      NAME
    end

    entry do
      command '-state-out=path'
      name <<-'NAME'
      Path to write state to that is different than
      `-state`. This can be used to preserve the old
      state.
      NAME
    end

    entry do
      command '-target=resource'
      name <<-'NAME'
      Resource to target. Operation will be limited to this
      resource and its dependencies. This flag can be used
      multiple times
      NAME
    end

    entry do
      command '-var \'foo=bar\''
      name <<-'NAME'
      Set a variable in the Terraform configuration. This
      flag can be set multiple times.
      NAME
    end

    entry do
      command '-var-file=foo'
      name <<-'NAME'
      Set variables in the Terraform configuration from
      a file. If "terraform.tfvars" or any `.auto.tfvars`
      files are present, they will be automatically loaded.
      NAME
    end
  end
end
