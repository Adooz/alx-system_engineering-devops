# kills a process named killmenow.
exec { 'kill_killmenow' :
  command     => 'pkill -SIGTERM killmenow',
  path        => '/usr/bin',
  refreshonly => true,
}
