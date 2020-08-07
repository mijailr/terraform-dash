# frozen_string_literal: true

cheatsheet do
  title "Terraform"
  docset_file_name "Terraform"
  keyword "terraform"

  introduction <<-'INTRO'
  Terraform is a tool for building, changing, and versioning infrastructure
  safely and efficiently.

  Terraform can manage existing and popular service providers as well as
  custom in-house solutions.
  INTRO

  category do
    id "apply"

    entry do
      notes <<-'NOTES'
      __Builds or changes infrastructure according to Terraform configuration
      files in `DIR`__

      By default, apply scans the current directory for the configuration
      and applies the changes appropriately. However, a path to another
      configuration or an execution plan can be provided.

      Execution plans can be used to only execute a pre-determined
      set of actions.
      NOTES
    end

    entry do
      name "-auto-approve"
      notes "Skip interactive approval of plan before applying."
    end

    entry do
      name "-backup=path"
      notes <<-'NOTES'
      Path to backup the existing state file before modifying.
      Defaults to the `-state-out` path with `.backup` extension.
      Set to `-` to disable backup.
      NOTES
    end

    entry do
      name "-compact-warnings"
      notes <<-'NOTES'
      If Terraform produces any warnings that are not
      accompanied by errors, show them in a more compact
      form that includes only the summary messages.
      NOTES
    end

    entry do
      name "-lock=true"
      notes "Lock the state file when locking is supported."
    end

    entry do
      name "-lock-timeout=0s"
      notes "Duration to retry a state lock."
    end

    entry do
      name "-input=true"
      notes "Ask for input for variables if not directly set."
    end

    entry do
      name "-no-color"
      notes 'If specified, output won\'t contain any color.'
    end

    entry do
      name "-parallelism=n"
      notes "Limit the number of parallel resource operations."
    end

    entry do
      name "-refresh=true"
      notes <<-'NOTES'
      Update state prior to checking for differences. This
      has no effect if a plan file is given to apply.
      NOTES
    end

    entry do
      name "-state=path"
      notes <<-'NOTES'
      Path to read and save state (unless state-out
      is specified). Defaults to `terraform.tfstate`
      NOTES
    end

    entry do
      name "-state-out=path"
      notes <<-'NOTES'
      Path to write state to that is different than
      `-state`. This can be used to preserve the old
      state.
      NOTES
    end

    entry do
      name "-target=resource"
      notes <<-'NOTES'
      Resource to target. Operation will be limited to this
      resource and its dependencies. This flag can be used
      multiple times
      NOTES
    end

    entry do
      name "-var 'foo=bar'"
      notes <<-'NOTES'
      Set a variable in the Terraform configuration. This
      flag can be set multiple times.
      NOTES
    end

    entry do
      name "-var-file=foo"
      notes <<-'NOTES'
      Set variables in the Terraform configuration from
      a file. If "terraform.tfvars" or any `.auto.tfvars`
      files are present, they will be automatically loaded.
      NOTES
    end
  end

  category do
    id "console"

    entry do
      notes <<-'NOTES'
        __Starts an interactive console for experimenting with Terraform
        interpolations.__

        This will open an interactive console that you can use to type
        interpolations into and inspect their values. This command loads the
        current state. This lets you explore and test interpolations before
        using them in future configurations.

        _This command will never modify your state._

        `DIR` can be set to a directory with a Terraform state to load. By
        default, this will default to the current working directory.
        NOTES
    end

    entry do
      name "-state=path"
      notes <<-'NOTES'
        Path to read state. Defaults to `terraform.tfstate`
        NOTES
    end

    entry do
      name "-var 'foo=bar'"
      notes <<-'NOTES'
        Set a variable in the Terraform configuration. This
        flag can be set multiple times.
        NOTES
    end

    entry do
      name "-var-file=foo"
      notes <<-'NOTES'
        Set variables in the Terraform configuration from
        a file. If "terraform.tfvars" or any `.auto.tfvars`
        files are present, they will be automatically loaded.
        NOTES
    end
  end

  category do
    id "destroy"

    entry do
      notes <<-'NOTES'
      __Destroy Terraform-managed infrastructure.__
      NOTES
    end

    entry do
      name "-backup=path"
      notes <<-'NOTES'
      Path to backup the existing state file before
      modifying. Defaults to the "-state-out" path with
      ".backup" extension. Set to "-" to disable backup.
      NOTES
    end

    entry do
      name "-auto-approve"
      notes <<-'NOTES'
      Skip interactive approval before destroying.
      NOTES
    end

    entry do
      name "-force"
      notes <<-'NOTES'
      Deprecated: same as auto-approve.
      NOTES
    end

    entry do
      name "-lock=true"
      notes <<-'NOTES'
      Lock the state file when locking is supported.
      NOTES
    end

    entry do
      name "-lock-timeout=0s"
      notes <<-'NOTES'
      Duration to retry a state lock.
      NOTES
    end

    entry do
      name "-no-color"
      notes <<-'NOTES'
      If specified, output won't contain any color.
      NOTES
    end

    entry do
      name "-parallelism=n"
      notes <<-'NOTES'
      Limit the number of concurrent operations.
      Defaults to 10.
      NOTES
    end

    entry do
      name "-refresh=true"
      notes <<-'NOTES'
      Update state prior to checking for differences. This
      has no effect if a plan file is given to apply.
      NOTES
    end

    entry do
      name "-state=path"
      notes <<-'NOTES'
      Path to read and save state (unless state-out
      is specified). Defaults to "terraform.tfstate".
      NOTES
    end

    entry do
      name "-state-out=path"
      notes <<-'NOTES'
      Path to write state to that is different than
      state.
      NOTES
    end

    entry do
      name "-target=resource"
      notes <<-'NOTES'
      Resource to target. Operation will be limited to this
      resource and its dependencies. This flag can be used
      multiple times.
      NOTES
    end

    entry do
      name "-var 'foo=bar'"
      notes <<-'NOTES'
      Set a variable in the Terraform configuration. This
      flag can be set multiple times.
      NOTES
    end

    entry do
      name "-var-file=foo"
      notes <<-'NOTES'
      Set variables in the Terraform configuration from
      a file. If "terraform.tfvars" or any ".auto.tfvars"
      files are present, they will be automatically loaded.
      NOTES
    end
  end

  category do
    id "fmt"

    entry do
      notes <<-'NOTES'
      __Rewrites all Terraform configuration files to a canonical format.__
      
      Both configuration files (.tf) and variables files (.tfvars) are updated.
      JSON files (.tf.json or .tfvars.json) are not modified.

      If DIR is not specified then the current working directory will be used.
      If DIR is "-" then content will be read from STDIN. The given content must
      be in the Terraform language native syntax; JSON is not supported.
      NOTES
    end

    entry do
      name "-list=false"
      notes <<-'NOTES'
      Don't list files whose formatting differs
      (always disabled if using STDIN)
      NOTES
    end

    entry do
      name "-write=false"
      notes <<-'NOTES'
      Don't write to source files
      (always disabled if using STDIN or -check)
      NOTES
    end

    entry do
      name "-diff"
      notes <<-'NOTES'
      Display diffs of formatting changes
      NOTES
    end

    entry do
      name "-check"
      notes <<-'NOTES'
      Check if the input is formatted. Exit status will be 0 if all
      input is properly formatted and non-zero otherwise.
      NOTES
    end

    entry do
      name "-no-color"
      notes <<-'NOTES'
      If specified, output won't contain any color.
      NOTES
    end

    entry do
      name "-recursive"
      notes <<-'NOTES'
      Also process files in subdirectories. By default, only the
      given directory (or current directory) is processed.
      NOTES
    end
  end

  category do
    id "get"

    entry do
      notes <<-'NOTES'
      __Downloads and installs modules needed for the configuration given by PATH.__

      This recursively downloads all modules needed, such as modules
      imported by modules imported by the root and so on. If a module is
      already downloaded, it will not be redownloaded or checked for updates
      unless the -update flag is specified.
      NOTES
    end

    entry do
      name "-update"
      notes <<-'NOTES'
      Check already-downloaded modules for available updates
      and install the newest versions available.
      NOTES
    end

    entry do
      name "-no-color"
      notes <<-'NOTES'
      Disable text coloring in the output.
      NOTES
    end
  end

  category do
    id "graph"

    entry do
      notes <<-'NOTES'
      Outputs the visual execution graph of Terraform resources according to
      configuration files in DIR (or the current directory if omitted).
    
      The graph is outputted in DOT format. The typical program that can
      read this format is GraphViz, but many web services are also available
      to read this format.
    
      The -type flag can be used to control the type of graph shown. Terraform
      creates different graphs for different operations. See the options below
      for the list of types supported. The default type is "plan" if a
      configuration is given, and "apply" if a plan file is passed as an
      argument.
      NOTES
    end

    entry do
      name "-draw-cycles"
      notes <<-'NOTES'
      Highlight any cycles in the graph with colored edges.
      This helps when diagnosing cycle errors.
      NOTES
    end

    entry do
      name "-type=plan"
      notes <<-'NOTES'
      Type of graph to output. Can be: plan, plan-destroy, apply,
      validate, input, refresh.
      NOTES
    end

    entry do
      name "-module-depth=n"
      notes <<-'NOTES'
      __(deprecated)__ In prior versions of Terraform, specified the
      depth of modules to show in the output.
      NOTES
    end
  end

  category do
    id "import"

    entry do
      notes <<-'NOTES'
      __Import existing infrastructure into your Terraform state.__

      This will find and import the specified resource into your Terraform
      state, allowing existing infrastructure to come under Terraform
      management without having to be initially created by Terraform.
    
      The ADDR specified is the address to import the resource to. Please
      see the documentation online for resource addresses. The ID is a
      resource-specific ID to identify that resource being imported. Please
      reference the documentation for the resource type you're importing to
      determine the ID syntax to use. It typically matches directly to the ID
      that the provider uses.
    
      The current implementation of Terraform import can only import resources
      into the state. It does not generate configuration. A future version of
      Terraform will also generate configuration.
    
      Because of this, prior to running terraform import it is necessary to write
      a resource configuration block for the resource manually, to which the
      imported object will be attached.
    
      This command will not modify your infrastructure, but it will make
      network requests to inspect parts of your infrastructure relevant to
      the resource being imported.    
      NOTES
    end

    entry do
      name "-backup=path"
      notes <<-'NOTES'
      Path to backup the existing state file before
      ".backup" extension. Set to "-" to disable backup.
      NOTES
    end

    entry do
      name "-config=path"
      notes <<-'NOTES'
      Path to a directory of Terraform configuration files
      If no config files are present, they must be provided
      via the input prompts or env vars.
      NOTES
    end

    entry do
      name "-allow-missing-config"
      notes <<-'NOTES'
      Allow import when no resource configuration block exists.
      NOTES
    end

    entry do
      name "-input=true"
      notes <<-'NOTES'
      Ask for input for variables if not directly set.
      NOTES
    end

    entry do
      name "-lock=true"
      notes <<-'NOTES'
      Lock the state file when locking is supported.
      NOTES
    end

    entry do
      name "-lock-timeout=0s"
      notes <<-'NOTES'
      Duration to retry a state lock.
      NOTES
    end

    entry do
      name "-no-color"
      notes <<-'NOTES'
      If specified, output won't contain any color.
      NOTES
    end

    entry do
      name "-provider=provider"
      notes <<-'NOTES'
      Deprecated: Override the provider configuration to use
      provider specified in the configuration for the target
      resource, and that is the best behavior in most cases.
      NOTES
    end

    entry do
      name "-state=PATH"
      notes <<-'NOTES'
      Path to the source state file. Defaults to the configured
      backend, or "terraform.tfstate"
      NOTES
    end

    entry do
      name "-state-out=PATH"
      notes <<-'NOTES'
      Path to the destination state file to write to. If this
      can be a new or existing path.
      NOTES
    end

    entry do
      name "-var 'foo=bar'"
      notes <<-'NOTES'
      Set a variable in the Terraform configuration. This
      flag can be set multiple times. This is only useful
      with the "-config" flag.
      NOTES
    end

    entry do
      name "-var-file=foo"
      notes <<-'NOTES'
      Set variables in the Terraform configuration from
      files are present, they will be automatically loaded.
      NOTES
    end
  end

  category do
    id "init"

    entry do
      notes <<-'NOTES'
      __Initialize a new or existing Terraform working directory by creating
      initial files, loading any remote state, downloading modules, etc.__
    
      This is the first command that should be run for any new or existing
      Terraform configuration per machine. This sets up all the local data
      necessary to run Terraform that is typically not committed to version
      control.
    
      This command is always safe to run multiple times. Though subsequent runs
      may give errors, this command will never delete your configuration or
      state. Even so, if you have important information, please back it up prior
      to running this command, just in case.
    
      If no arguments are given, the configuration in this working directory
      is initialized.
      NOTES
    end

    entry do
      name "-backend=true"
      notes <<-'NOTES'
      Configure the backend for this configuration.
      NOTES
    end

    entry do
      name "-backend-config=path"
      notes <<-'NOTES'
      This can be either a path to an HCL file with key/value
      assignments (same format as terraform.tfvars) or a
      'key=value' format. This is merged with what is in the
      configuration file. This can be specified multiple
      times. The backend type must be in the configuration
      itself.
      NOTES
    end

    entry do
      name "-force-copy"
      notes <<-'NOTES'
      Suppress prompts about copying state data. This is
      prompts.
      NOTES
    end

    entry do
      name "-from-module=SOURCE"
      notes <<-'NOTES'
      Copy the contents of the given module into the target
      directory before initialization.
      NOTES
    end

    entry do
      name "-get=true"
      notes <<-'NOTES'
      Download any modules for this configuration.
      NOTES
    end

    entry do
      name "-get-plugins=true"
      notes <<-'NOTES'
      Download any missing plugins for this configuration.
      NOTES
    end

    entry do
      name "-input=true"
      notes <<-'NOTES'
      Ask for input if necessary. If false, will error if
      input was required.
      NOTES
    end

    entry do
      name "-lock=true"
      notes <<-'NOTES'
      Lock the state file when locking is supported.
      NOTES
    end

    entry do
      name "-lock-timeout=0s"
      notes <<-'NOTES'
      Duration to retry a state lock.
      NOTES
    end

    entry do
      name "-no-color"
      notes <<-'NOTES'
      If specified, output won't contain any color.
      NOTES
    end

    entry do
      name "-plugin-dir"
      notes <<-'NOTES'
      Directory containing plugin binaries. This overrides all
      automatic installation of plugins. This flag can be used
      multiple times.
      NOTES
    end

    entry do
      name "-reconfigure"
      notes <<-'NOTES'
      Reconfigure the backend, ignoring any saved
      configuration.
      NOTES
    end

    entry do
      name "-upgrade=false"
      notes <<-'NOTES'
      If installing modules (-get) or plugins (-get-plugins),
      latest version allowed within configured constraints.
      NOTES
    end

    entry do
      name "-verify-plugins=true"
      notes <<-'NOTES'
      Verify the authenticity and integrity of automatically
      downloaded plugins.
      NOTES
    end
  end

  category do
    id "login"

    entry do
      notes <<-'NOTES'
      Usage: `terraform login [hostname]`
      Retrieves an authentication token for the given hostname, if it supports
      automatic login, and saves it in a credentials file in your home directory.
    
      If no hostname is provided, the default hostname is app.terraform.io, to
      log in to Terraform Cloud.
    
      If not overridden by credentials helper settings in the CLI configuration,
      the credentials will be written to the following local file:
      ```
      ~/.terraform.d/credentials.tfrc.json
      ```
      NOTES
    end
  end

  category do
    id "logout"

    entry do
      notes <<-'NOTES'
      Usage: `terraform logout [hostname]``

      Removes locally-stored credentials for specified hostname.
    
      Note: the API token is only removed from local storage, not destroyed on the
      remote server, so it will remain valid until manually revoked.
    
      If no hostname is provided, the default hostname is app.terraform.io.
      NOTES
    end
  end

  category do
    id "output"

    entry do
      notes <<-'NOTES'
      Usage: `terraform output [options] [NAME]`

      Reads an output variable from a Terraform state file and prints
      the value. With no additional arguments, output will display all
      the outputs for the root module.  If NAME is not specified, all
      outputs are printed.
      NOTES
    end

    entry do
      name "-state=path"
      notes <<-'NOTES'
      Path to the state file to read. Defaults to
      "terraform.tfstate".
      NOTES
    end

    entry do
      name "-no-color"
      notes <<-'NOTES'
      If specified, output won't contain any color.
      
      NOTES
    end

    entry do
      name "-json"
      notes <<-'NOTES'
      If specified, machine readable output will be
      printed in JSON format
      NOTES
    end
  end

  category do
    id "plan"

    entry do
      notes <<-'NOTES'
      Usage: `terraform plan [options] [DIR]`

      Generates an execution plan for Terraform.

      This execution plan can be reviewed prior to running apply to get a
      sense for what Terraform will do. Optionally, the plan can be saved to
      a Terraform plan file, and apply can take this plan file to execute
      this plan exactly.
      NOTES
    end
    entry do
      name "-compact-warnings"
      notes <<-'NOTES'
      If Terraform produces any warnings that are not
      accompanied by errors, show them in a more compact form
      that includes only the summary messages.
      NOTES
    end

    entry do
      name "-destroy"
      notes <<-'NOTES'
      If set, a plan will be generated to destroy all resources
      managed by the given configuration and state.
      NOTES
    end

    entry do
      name "-detailed-exitcode"
      notes <<-'NOTES'
      Return detailed exit codes when the command exits. This
      will change the meaning of exit codes to:
          0 - Succeeded, diff is empty (no changes)
          1 - Errored
          2 - Succeeded, there is a diff
      NOTES
    end

    entry do
      name "-input=true"
      notes <<-'NOTES'
      Ask for input for variables if not directly set.
      
      NOTES
    end

    entry do
      name "-lock=true"
      notes <<-'NOTES'
      Lock the state file when locking is supported.
      NOTES
    end

    entry do
      name "-lock-timeout=0s"
      notes <<-'NOTES'
      Duration to retry a state lock.
      NOTES
    end

    entry do
      name "-no-color"
      notes <<-'NOTES'
      If specified, output won't contain any color.
      NOTES
    end

    entry do
      name "-out=path"
      notes <<-'NOTES'
      Write a plan file to the given path. This can be used as
      input to the "apply" command.
      NOTES
    end

    entry do
      name "-parallelism=n"
      notes <<-'NOTES'
      Limit the number of concurrent operations. Defaults to 10.
      NOTES
    end

    entry do
      name "-refresh=true"
      notes <<-'NOTES'
      Update state prior to checking for differences.
      NOTES
    end

    entry do
      name "-state=statefile"
      notes <<-'NOTES'
      Path to a Terraform state file to use to look
      use the state "terraform.tfstate" if it exists.
      NOTES
    end

    entry do
      name "-target=resource"
      notes <<-'NOTES'
      Resource to target. Operation will be limited to this
      multiple times.
      NOTES
    end

    entry do
      name "-var 'foo=bar'"
      notes <<-'NOTES'
      Set a variable in the Terraform configuration. This
      flag can be set multiple times.
      NOTES
    end

    entry do
      name "-var-file=foo"
      notes <<-'NOTES'
      Set variables in the Terraform configuration from
      files are present, they will be automatically loaded.
      NOTES
    end
  end

  category do
    id "providers"

    entry do
      notes <<-'NOTES'
      Usage: `terraform providers [dir]`

      Prints out a tree of modules in the referenced configuration annotated with
      their provider requirements.
    
      This provides an overview of all of the provider requirements across all
      referenced modules, as an aid to understanding why particular provider
      plugins are needed and why particular versions are selected.    
      NOTES
    end

    entry do
      name "schema"
      notes <<-'NOTES'
      Prints the schemas of the providers used in the configuration.
      NOTES
    end
  end

  category do
    id "refresh"

    entry do
      notes <<-'NOTES'
      Usage: `terraform refresh [options] [dir]`

      Update the state file of your infrastructure with metadata that matches
      the physical resources they are tracking.

      This will not modify your infrastructure, but it can modify your
      state file to update metadata. This metadata might cause new changes
      to occur when you generate a plan or call apply next.   
      NOTES
    end

    entry do
      name "schema"
      notes <<-'NOTES'
      Prints the schemas of the providers used in the configuration.
      NOTES
    end

    entry do
      name "-backup=path"
      notes <<-'NOTES'
      Path to backup the existing state file before
      ".backup" extension. Set to "-" to disable backup.
      NOTES
    end

    entry do
      name "-compact-warnings"
      notes <<-'NOTES'
      If Terraform produces any warnings that are not
      accompanied by errors, show them in a more compact form
      that includes only the summary messages.
      NOTES
    end

    entry do
      name "-input=true"
      notes <<-'NOTES'
      Ask for input for variables if not directly set.
      NOTES
    end

    entry do
      name "-lock=true"
      notes <<-'NOTES'
      Lock the state file when locking is supported.
      NOTES
    end

    entry do
      name "-lock-timeout=0s"
      notes <<-'NOTES'
      Duration to retry a state lock.
      NOTES
    end

    entry do
      name "-no-color"
      notes <<-'NOTES'
      If specified, output won't contain any color.
      NOTES
    end

    entry do
      name "-state=path"
      notes <<-'NOTES'
      Path to read and save state (unless state-out
      is specified). Defaults to "terraform.tfstate".
      NOTES
    end

    entry do
      name "-state-out=path"
      notes <<-'NOTES'
      Path to write updated state file. By default, the
      "-state" path will be used.
      NOTES
    end

    entry do
      name "-target=resource"
      notes <<-'NOTES'
      Resource to target. Operation will be limited to this
      multiple times.
      NOTES
    end

    entry do
      name "-var 'foo=bar'"
      notes <<-'NOTES'
      Set a variable in the Terraform configuration. This
      flag can be set multiple times.
      NOTES
    end

    entry do
      name "-var-file=foo"
      notes <<-'NOTES'
      Set variables in the Terraform configuration from
      files are present, they will be automatically loaded.
      NOTES
    end
  end

  category do
    id "show"

    entry do
      notes <<-'NOTES'
      Usage: terraform show [options] [path]

      Reads and outputs a Terraform state or plan file in a human-readable
      form. If no path is specified, the current state will be shown.  
      NOTES
    end

    entry do
      name "-no-color"
      notes <<-'NOTES'
      If specified, output won't contain any color.
      NOTES
    end

    entry do
      name "-json"
      notes <<-'NOTES'
      If specified, output the Terraform plan or state in
      a machine-readable form.
      NOTES
    end
  end

  category do
    id "taint"

    entry do
      notes <<-'NOTES'
      Usage: terraform taint [options] <address>

      Manually mark a resource as tainted, forcing a destroy and recreate
      on the next plan/apply.
      
      This will not modify your infrastructure. This command changes your
      state to mark a resource as tainted so that during the next plan or
      apply that resource will be destroyed and recreated. This command on
      its own will not modify infrastructure. This command can be undone
      using the "terraform untaint" command with the same address.
      
      The address is in the usual resource address syntax, as shown in
      the output from other commands, such as:

      ```
      aws_instance.foo
      aws_instance.bar[1]
      module.foo.module.bar.aws_instance.baz
      ``` 
      NOTES
    end

    entry do
      name "-allow-missing"
      notes <<-'NOTES'
      If specified, the command will succeed (exit code 0)
      even if the resource is missing.
      NOTES
    end

    entry do
      name "-backup=path"
      notes <<-'NOTES'
      Path to backup the existing state file before
      ".backup" extension. Set to "-" to disable backup.
      NOTES
    end

    entry do
      name "-lock=true"
      notes <<-'NOTES'
      Lock the state file when locking is supported.
      NOTES
    end

    entry do
      name "-lock-timeout=0s"
      notes <<-'NOTES'
      Duration to retry a state lock.
      NOTES
    end

    entry do
      name "-state=path"
      notes <<-'NOTES'
      Path to read and save state (unless state-out
      is specified). Defaults to "terraform.tfstate".
      NOTES
    end

    entry do
      name "-state-out=path"
      notes <<-'NOTES'
      Path to write updated state file. By default, the
      "-state" path will be used.
      NOTES
    end
  end

  category do
    id "untaint"

    entry do
      notes <<-'NOTES'
      Usage: terraform untaint [options] name

      Manually unmark a resource as tainted, restoring it as the primary
      instance in the state.  This reverses either a manual 'terraform taint'
      or the result of provisioners failing on a resource.
      
      This will not modify your infrastructure. This command changes your
      state to unmark a resource as tainted.  This command can be undone by
      reverting the state backup file that is created, or by running
      'terraform taint' on the resource.
      NOTES
    end

    entry do
      name "-allow-missing"
      notes <<-'NOTES'
      If specified, the command will succeed (exit code 0)
      even if the resource is missing.
      NOTES
    end

    entry do
      name "-backup=path"
      notes <<-'NOTES'
      Path to backup the existing state file before
      ".backup" extension. Set to "-" to disable backup.
      NOTES
    end

    entry do
      name "-lock=true"
      notes <<-'NOTES'
      Lock the state file when locking is supported.
      NOTES
    end

    entry do
      name "-lock-timeout=0s"
      notes <<-'NOTES'
      Duration to retry a state lock.
      NOTES
    end

    entry do
      name "-module=path"
      notes <<-'NOTES'
      The module path where the resource lives. By
      by names. Ex. "consul" or "consul.vpc" (nested modules).
      NOTES
    end

    entry do
      name "-state=path"
      notes <<-'NOTES'
      Path to read and save state (unless state-out
      is specified). Defaults to "terraform.tfstate".
      NOTES
    end

    entry do
      name "-state-out=path"
      notes <<-'NOTES'
      Path to write updated state file. By default, the
      "-state" path will be used.
      NOTES
    end
  end

  category do
    id "validate"

    entry do
      notes <<-'NOTES'
      Usage: terraform validate [options] [dir]

      Validate the configuration files in a directory, referring only to the
      configuration and not accessing any remote services such as remote state,
      provider APIs, etc.
      
      Validate runs checks that verify whether a configuration is syntactically
      valid and internally consistent, regardless of any provided variables or
      existing state. It is thus primarily useful for general verification of
      reusable modules, including correctness of attribute names and value types.
      
      It is safe to run this command automatically, for example as a post-save
      check in a text editor or as a test step for a re-usable module in a CI
      system.
      
      Validation requires an initialized working directory with any referenced
      plugins and modules installed. To initialize a working directory for
      validation without accessing any configured remote backend, use:
          terraform init -backend=false
      
      If dir is not specified, then the current directory will be used.
      
      To verify configuration in the context of a particular run (a particular
      target workspace, input variable values, etc), use the 'terraform plan'
      command instead, which includes an implied validation check.
      NOTES
    end

    entry do
      name "-json"
      notes <<-'NOTES'
      Produce output in a machine-readable JSON format, suitable for
      Always disables color.
      NOTES
    end

    entry do
      name "-no-color"
      notes <<-'NOTES'
      If specified, output won't contain any color.
      NOTES
    end
  end

  category do
    id "version"

    entry do
      notes <<-'NOTES'
      Get terraform current version details
      NOTES
    end
  end

  category do
    id "workspace"

    entry do
      notes <<-'NOTES'
      Usage: terraform workspace

      new, list, show, select and delete Terraform workspaces.
      NOTES
    end

    entry do
      name "delete"
      notes <<-'NOTES'
      Usage: terraform workspace delete [OPTIONS] NAME [DIR]

      Delete a Terraform workspace

      Options:

      `-force`    remove a non-empty workspace.
  
      `-lock=true`          Lock the state file when locking is supported.
  
      `-lock-timeout=0s`    Duration to retry a state lock.
      NOTES
    end

    entry do
      name "list"
      notes <<-'NOTES'
      Usage: terraform workspace list [DIR]

      List Terraform workspaces.
      NOTES
    end

    entry do
      name "new"
      notes <<-'NOTES'
      Usage: terraform workspace new [OPTIONS] NAME [DIR]

      Create a new Terraform workspace.
      NOTES
    end

    entry do
      name "select"
      notes <<-'NOTES'
      Usage: terraform workspace select NAME [DIR]

      Select a different Terraform workspace.
      NOTES
    end

    entry do
      name "show"
      notes <<-'NOTES'
      Usage: terraform workspace show

      Show the name of the current workspace.
      NOTES
    end
  end

  category do
    id "0.12upgrade"

    entry do
      notes <<-'NOTES'
      Usage: terraform 0.12upgrade [module-dir]

      Rewrites the .tf files for a single module that was written for a Terraform
      version prior to v0.12 so that it uses new syntax features from v0.12
      and later.
      
      Also rewrites constructs that behave differently after v0.12, and flags any
      suspicious constructs that require human review,
      
      By default, 0.12upgrade rewrites the files in the current working directory.
      However, a path to a different directory can be provided. The command will
      prompt for confirmation interactively unless the -yes option is given.
      NOTES
    end

    entry do
      name "-yes"
      notes <<-'NOTES'
      Skip the initial introduction messages and interactive
      batch from a script.
      NOTES
    end

    entry do
      name "-force"
      notes <<-'NOTES'
      Override the heuristic that attempts to detect if a
      Some of the transformations made by this command are
      not idempotent, so re-running against the same module
      may change the meanings expressions in the module.
      NOTES
    end
  end

  category do
    id "debug"

    entry do
      notes <<-'NOTES'
      Usage: terraform debug <subcommand> [options] [args]

      This command has subcommands for debug output management
      
      Subcommands:
          json2dot    Convert json graph log to dot
      NOTES
    end
  end

  category do
    id "force-unlock"

    entry do
      notes <<-'NOTES'
      Usage: terraform force-unlock LOCK_ID [DIR]

      Manually unlock the state for the defined configuration.
      
      This will not modify your infrastructure. This command removes the lock on the
      state for the current configuration. The behavior of this lock is dependent
      on the backend being used. Local state files cannot be unlocked by another
      process.
      NOTES
    end

    entry do
      name "-force"
      notes <<-'NOTES'
      Don't ask for input for unlock confirmation.
      NOTES
    end
  end
end
