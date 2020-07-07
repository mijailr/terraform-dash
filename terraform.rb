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
      name '-auto-approve'
      notes 'Skip interactive approval of plan before applying.'
    end

    entry do
      name '-backup=path'
      notes <<-'NOTES'
      Path to backup the existing state file before modifying.
      Defaults to the `-state-out` path with `.backup` extension.
      Set to `-` to disable backup.
      NOTES
    end

    entry do
      name '-compact-warnings'
      notes <<-'NOTES'
      If Terraform produces any warnings that are not
      accompanied by errors, show them in a more compact
      form that includes only the summary messages.
      NOTES
    end

    entry do
      name '-lock=true'
      notes 'Lock the state file when locking is supported.'
    end

    entry do
      name '-lock-timeout=0s'
      notes 'Duration to retry a state lock.'
    end

    entry do
      name '-input=true'
      notes 'Ask for input for variables if not directly set.'
    end

    entry do
      name '-no-color'
      notes 'If specified, output won\'t contain any color.'
    end

    entry do
      name '-parallelism=n'
      notes 'Limit the number of parallel resource operations.'
    end

    entry do
      name '-refresh=true'
      notes <<-'NOTES'
      Update state prior to checking for differences. This
      has no effect if a plan file is given to apply.
      NOTES
    end

    entry do
      name '-state=path'
      notes <<-'NOTES'
      Path to read and save state (unless state-out
      is specified). Defaults to `terraform.tfstate`
      NOTES
    end

    entry do
      name '-state-out=path'
      notes <<-'NOTES'
      Path to write state to that is different than
      `-state`. This can be used to preserve the old
      state.
      NOTES
    end

    entry do
      name '-target=resource'
      notes <<-'NOTES'
      Resource to target. Operation will be limited to this
      resource and its dependencies. This flag can be used
      multiple times
      NOTES
    end

    entry do
      name '-var \'foo=bar\''
      notes <<-'NOTES'
      Set a variable in the Terraform configuration. This
      flag can be set multiple times.
      NOTES
    end

    entry do
      name '-var-file=foo'
      notes <<-'NOTES'
      Set variables in the Terraform configuration from
      a file. If "terraform.tfvars" or any `.auto.tfvars`
      files are present, they will be automatically loaded.
      NOTES
    end
  end
end
