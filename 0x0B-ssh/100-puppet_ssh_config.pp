# Puppet Manifest: configure_ssh.pp
#
# This Puppet manifest uses the Augeas resource to configure SSH settings in the ssh_config file.
# It disables PasswordAuthentication and sets IdentityFile for a specific match condition.
#
# Note: This manifest assumes that the Augeas lens 'Ssh.lns' is available.
#
#

# Define the Augeas resource to configure SSH
augeas { 'configure_ssh':
  incl    => '/etc/ssh/ssh_config',  # Path to the SSH configuration file
  lens    => 'Ssh.lns',              # Augeas lens for SSH configuration
  changes => [
    'set Match[1]/Settings/PasswordAuthentication no',    # Disable password authentication
    'set Match[1]/Settings/IdentityFile ~/.ssh/school',    # Set IdentityFile to ~/.ssh/school
  ],
}
