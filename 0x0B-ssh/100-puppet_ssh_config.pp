# make changes to config file using puppet
# Class: ssh_config
#
# This class manages SSH client configuration using the Augeas tool.
# It ensures specific settings in the SSH configuration file.
#
# Parameters:
#   None
#
# Actions:
#   - Sets PasswordAuthentication to 'no'
#   - Sets IdentityFile to '~/.ssh/school'
#
# Example usage:
#   include ssh_config
class ssh_config {
  augeas { 'configure_ssh':
    incl    => '/etc/ssh/ssh_config',  # Path to the SSH configuration file
    lens    => 'Ssh.lns',              # Augeas lens for SSH configuration
    changes => [
      "set Match[1]/Settings/PasswordAuthentication no",    # Disable password authentication
      "set Match[1]/Settings/IdentityFile ~/.ssh/school",    # Set IdentityFile to ~/.ssh/school
    ],
  }
}

