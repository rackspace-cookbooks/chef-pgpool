default['pgpool']['user'] = 'postgres'
default['pgpool']['group'] = 'postgres'

case node['platform']
when 'debian', 'ubuntu'
  default['pgpool']['config']['package_name'] = 'pgpool2' # May want to override
  default['pgpool']['config']['dir'] = '/etc/pgpool2'
  default['pgpool']['service'] = 'pgpool2'
when 'centos'
# Old default package name was installing an ancient Pgpool version. As such,
# increment the default here such that it installs the version meant for
# Postgres-9.3.x, regardless this is overrideable like any other attribute.
default['pgpool']['config']['package_name'] = 'pgpool-II-pg93'
  default['pgpool']['config']['dir'] = '/etc/pgpool-II'
  default['pgpool']['service'] = 'pgpool'
end

default['pgpool']['pgconf']['listen_addresses'] = 'localhost'
default['pgpool']['pgconf']['port'] = 9999
default['pgpool']['pgconf']['pcp_port'] = 9898
default['pgpool']['pgconf']['pool_password'] = 'pool_passwd'
default['pgpool']['pgconf']['socket_dir'] = '/var/run/pgpool'
default['pgpool']['pgconf']['pcp_socket_dir'] = '/var/run/pgpool'
default['pgpool']['pgconf']['max_pool'] = 4
default['pgpool']['pgconf']['num_init_children'] = 32
default['pgpool']['pgconf']['child_life_time'] = 300
default['pgpool']['pgconf']['child_max_connections'] = 0
default['pgpool']['pgconf']['connection_life_time'] = 0
default['pgpool']['pgconf']['client_idle_limit'] = 0
default['pgpool']['pgconf']['enable_pool_hba'] = false # Might want to override
# this if the use case includes authentication by Pgpool (recommended).
default['pgpool']['pgconf']['logdir'] = '/var/log/pgpool'
default['pgpool']['pgconf']['connect_timeout'] = 10000
default['pgpool']['pgconf']['backend_hostname0'] = '' # Should override
default['pgpool']['pgconf']['backend_hostname1'] = '' # Should override
default['pgpool']['pgconf']['backend_port0'] = 5432
default['pgpool']['pgconf']['backend_port1'] = 5432
default['pgpool']['pgconf']['ssl'] = false # Should override if SSL is desired.
default['pgpool']['pgconf']['ssl_key'] = '' # Should override
default['pgpool']['pgconf']['ssl_cert'] = '' # Should override
default['pgpool']['pgconf']['ssl_ca_cert'] = '' # Should override
default['pgpool']['pgconf']['ssl_ca_cert_dir'] = '' # Should override
default['pgpool']['pgconf']['replication_mode'] = false
default['pgpool']['pgconf']['load_balance_mode'] = true
default['pgpool']['pgconf']['backend_weight0'] = 1
default['pgpool']['pgconf']['backend_data_directory0'] = '/var/lib/pgpool/master/data'
default['pgpool']['pgconf']['backend_data_directory1'] = '/var/lib/pgpool/slave/data'
default['pgpool']['pgconf']['backend_flag0'] = 'ALLOW_TO_FAILOVER'
default['pgpool']['pgconf']['backend_flag1'] = 'ALLOW_TO_FAILOVER'
default['pgpool']['pgconf']['authentication_timeout'] = 60
default['pgpool']['pgconf']['child_life_time'] = 300
default['pgpool']['pgconf']['child_max_connections'] = 0 # Should override
default['pgpool']['pgconf']['connection_life_time'] = 0 # Should override
default['pgpool']['pgconf']['client_idle_limit'] = 0 # Should override
default['pgpool']['pgconf']['log_destination'] = 'syslog'
default['pgpool']['pgconf']['syslog_facility'] = 'LOCAL0'
default['pgpool']['pgconf']['syslog_ident'] = 'pgpool'
default['pgpool']['pgconf']['print_timestamp'] = true
default['pgpool']['pgconf']['log_connections'] = false # Should override
default['pgpool']['pgconf']['log_hostname'] = false # Should override possibly
default['pgpool']['pgconf']['log_statement'] = false
default['pgpool']['pgconf']['log_per_node_statement'] = false
default['pgpool']['pgconf']['log_standby_delay'] = 'if_over_threshold'
default['pgpool']['pgconf']['debug_level'] = 0 # Probably want to override
default['pgpool']['pgconf']['pid_file_name'] = '/var/run/pgpool/pgpool.pid'
default['pgpool']['pgconf']['logdir'] = '/var/log/pgpool'
default['pgpool']['pgconf']['connection_cache'] = true
default['pgpool']['pgconf']['reset_query_list'] = 'ABORT; DISCARD ALL'
default['pgpool']['pgconf']['master_slave_mode'] = false
default['pgpool']['pgconf']['master_slave_sub_mode'] = 'stream'
default['pgpool']['pgconf']['sr_check_period'] = 10
default['pgpool']['pgconf']['sr_check_user'] = 'pgpool' # Should override
default['pgpool']['pgconf']['sr_check_password'] = 'pgpool' # Should override
default['pgpool']['pgconf']['delay_threshold'] = 10000000
default['pgpool']['pgconf']['follow_master_command'] = '' # Might want to override
default['pgpool']['pgconf']['parallel_mode'] = false
default['pgpool']['pgconf']['health_check_period'] = 0
default['pgpool']['pgconf']['failover_command'] = '' # Should override
default['pgpool']['pgconf']['failback_command'] = '' # Should override
default['pgpool']['pgconf']['fail_over_on_backend_error'] = true
default['pgpool']['pgconf']['search_primary_node'] = 10 # Might want to override
default['pgpool']['pgconf']['recovery_user'] = '' # Should override
default['pgpool']['pgconf']['recovery_password'] = '' # Should override
default['pgpool']['pgconf']['recovery_first_stage_command'] = '' # Should override
default['pgpool']['pgconf']['recovery_second_stage_command'] = '' # Should override
default['pgpool']['pgconf']['recovery_timeout'] = 90
default['pgpool']['pgconf']['client_idle_limit_in_recovery'] = 0
default['pgpool']['pgconf']['use_watchdog'] = false # Should override
default['pgpool']['pgconf']['trusted_servers'] = '' # Should override
default['pgpool']['pgconf']['ping_path'] = '/bin'
default['pgpool']['pgconf']['wd_hostname'] = '' # Should override
default['pgpool']['pgconf']['other_wd_port0'] = 9000
default['pgpool']['pgconf']['wd_port'] = 9000
default['pgpool']['pgconf']['wd_authkey'] = '' # Should override
default['pgpool']['pgconf']['delegate_IP'] = '' # Should override
default['pgpool']['pgconf']['ifconfig_path'] = '/sbin'
default['pgpool']['pgconf']['if_up_cmd'] = '' # Should override
default['pgpool']['pgconf']['if_down_cmd'] = '' # Should override
default['pgpool']['pgconf']['arping_cmd'] = 'arping -U $_IP_$ -w 1'
default['pgpool']['pgconf']['clear_memqcache_on_escalation'] = true
default['pgpool']['pgconf']['wd_escalation_command'] = '' # Might want to override
default['pgpool']['pgconf']['wd_lifecheck_method'] = 'heartbeat'
default['pgpool']['pgconf']['wd_interval'] = 4
default['pgpool']['pgconf']['wd_heartbeat_port'] = 9694
default['pgpool']['pgconf']['wd_heartbeat_keepalive'] = 2
default['pgpool']['pgconf']['wd_heartbeat_deadtime'] = 5 # May override
default['pgpool']['pgconf']['heartbeat_destination0'] = '' # Should override
default['pgpool']['pgconf']['heartbeat_destination_port0'] = 9694
default['pgpool']['pgconf']['heartbeat_device0'] = '' # Should override
# Only useful in query mode, which is deprecated.
default['pgpool']['pgconf']['wd_life_point'] = 3
default['pgpool']['pgconf']['wd_lifecheck_query'] = 'SELECT 1'
default['pgpool']['pgconf']['wd_lifecheck_dbname'] = 'template1'
default['pgpool']['pgconf']['wd_lifecheck_user'] = 'nobody' # Should override
default['pgpool']['pgconf']['wd_lifecheck_password'] = '' # Should override
# Other stuff
default['pgpool']['pgconf']['relcache_expire'] = 0
default['pgpool']['pgconf']['relcache_size'] = 256
default['pgpool']['pgconf']['check_temp_table'] = false
default['pgpool']['pgconf']['other_pgpool_hostname0'] = '' # Should override if
# HA Pgpool is desired.
default['pgpool']['pgconf']['other_pgpool_port0'] = 9999
default['pgpool']['pg_hba']['auth'] = [
  { type: 'local', db: 'all', user: 'all', addr: nil, method: 'trust' },
  { type: 'host', db: 'all', user: 'all', addr: '127.0.0.1/32', method: 'trust' }
]
