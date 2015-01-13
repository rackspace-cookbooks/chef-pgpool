case node['platform']
when 'debian', 'ubuntu'
  default['pgpool']['package_name'] = 'pgpool2'
  default['pgpool']['dir'] = '/etc/pgpool2'
when 'centos'
  default['pgpool']['package_name'] = 'postgresql-pgpool-II'
  default['pgpool']['dir'] = '/etc/pgpool-II'
end
