# kills a process named killmenow.
exec { 'kill_killmenow' :
  command     => 'pkill -f killmenow',
  path        => '/usr/bin',
  onlyif      => 'pgrep killmenow',
  refreshonly => true,
}
