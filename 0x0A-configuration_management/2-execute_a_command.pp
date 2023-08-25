# kills a process named killmenow.
exec { 'kill_killmenow' :
  command     => 'pkil killmenow',
  path        => ['/usr/bin'],
  onlyif      => 'pgrep killmenow',
  refreshonly => true,
}
