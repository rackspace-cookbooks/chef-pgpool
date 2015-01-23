default['pgpool']['user'] = 'postgres'
default['pgpool']['group'] = 'postgres'

case node['platform']
when 'debian', 'ubuntu'
  default['pgpool']['config']['package_name'] = 'pgpool2'
  default['pgpool']['config']['dir'] = '/etc/pgpool2'
  default['pgpool']['service'] = 'pgpool2'
when 'centos'
  default['pgpool']['config']['package_name'] = 'postgresql-pgpool-II'
  default['pgpool']['config']['dir'] = '/etc/pgpool-II'
  default['pgpool']['service'] = 'pgpool'
end

default['pgpool']['pgconf']['listen_addresses'] = 'localhost'
default['pgpool']['pgconf']['port'] = 9999
default['pgpool']['pgconf']['socket_dir'] = '/var/run/pgpool'
default['pgpool']['pgconf']['pcp_socket_dir'] = '/var/run/pgpool'
default['pgpool']['pgconf']['num_init_children'] = 32
default['pgpool']['pgconf']['enable_pool_hba'] = true
default['pgpool']['pgconf']['logdir'] = '/var/log/pgpool'
default['pgpool']['pgconf']['connect_timeout'] = 10000
default['pgpool']['pgconf']['backend_hostname0'] = ''
default['pgpool']['pgconf']['backend_port0'] = 5432
default['pgpool']['pgconf']['ssl'] = false
default['pgpool']['pgconf']['ssl_key'] = ''
default['pgpool']['pgconf']['ssl_cert'] = ''
default['pgpool']['pgconf']['ssl_ca_cert'] = ''
default['pgpool']['pgconf']['ssl_ca_cert_dir'] = ''
default['pgpool']['pgconf']['replication_mode'] = false
default['pgpool']['pgconf']['load_balance_mode'] = false

default['pgpool']['pg_hba']['auth'] = [
  { type: 'local', db: 'all', user: 'all', addr: nil, method: 'trust' },
  { type: 'host', db: 'all', user: 'all', addr: '127.0.0.1/32', method: 'trust' }
]
