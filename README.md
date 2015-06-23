pgpool Cookbook
========================
Installs and configures PGPool

Attributes
----------
#### pgpool::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['pgpool']['pgconf']['listen_address']</tt></td>
    <td>String</td>
    <td>listen address</td>
    <td><tt>localhost</tt></td>
  </tr>
  <tr>
    <td><tt>['pgpool']['pgconf']['port']</tt></td>
    <td>String</td>
    <td>bind port</td>
    <td><tt>9999</tt></td>
  </tr>
  <tr>
    <td><tt>['pgpool']['pgconf']['logdir']</tt></td>
    <td>String</td>
    <td>log directory</td>
    <td><tt>/var/log/pgpool</tt></td>
  </tr>
<tr>
<td><tt>['pgpool']['pgconf']['enable_pool_hba']</tt></td>
<td>Bool</td>
<td>Pool HBA setting</td>
<td><tt>False</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['backend_hostname0']</tt></td>
<td>String<td>
<td>Backend master Postgres instance to connect to</td>
<td><tt>Empty</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['backend_hostname1']</tt></td>
<td>String</td>
<td>Hostname of Postgres slave instance</td>
<td><tt>Empty</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['ssl']</tt></td>
<td>Bool</td>
<td>Enable connections over SSL/TLS</td>
<td><tt>False</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['child_max_connections']</tt></td>
<td>String</td>
<td>Maximum number of connections that can be established for a given Pgpool instance.</td>
<td><tt>0 (no limit)</tt></td>
</tr>
<tr>
<td><tt>['pgpool']0'pgconf']['client_idle_limit']</tt></td>
<td>String</td>
<td>Amount of time that a client can remain connected without issuing queries</td>
<td><tt>0 (no limit)</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['log_connections']</tt></td>
<td>Bool</td>
<td>Whether to log connecting clients</td>
<td><tt>False</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['log_hostname']</tt></td>
<td>Bool</td>
<td>Whether to log the hostnames of connecting clients</td>
<td><tt>False</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['debug_level']</tt></td>
<td>String</td>
<td>Specifies the debug level at which we should be logging</td>
<td><tt>0 (no debug info)</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['master_slave_mode']</tt></td>
<td>Bool</td>
<td>Enables or disables master-slave mode</td>
<td><tt>False (change to true if streaming replication is desired)</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['sr_check_user']</tt></td>
<td>String</td>
<td>User that should be checking replication status on the backend nodes</td>
<td><tt>pgpool</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['sr_check_password']</tt></td>
<td>String</td>
<td>Password for the replication check user</td>
<td><tt>pgpool</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['failover_command']</tt></td>
<td>String</td>
<td>Command should be executed to promote a slave, usually something like pgctl
promote</td>
<td><tt>Empty</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['failback_command']</tt></td>
<td>String</td>
<td>Command to demote a master back to a slave</td>
<td><tt>Empty</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['recovery_user']</tt></td>
<td>String</td>
<td>Specifies the online recovery user, only applicable in this mode</td>
<td><tt>Empty</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['recovery_password']</tt></td>
<td>String</td>
<td>Recovery password, only applicable in online recovery mode and if a recovery user is set</td>
<td><tt>Empty</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['recovery_first_stage_command']</tt></td>
<td>String</td>
<td>First stage recovery command, only applicable when using online recovery mode</td>
<td><tt>Empty</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['recovery_second_stage_command']</tt></td>
<td>String</td>
<td>Second stage recovery command, only applicable when using online recovery mode</td>
<td><tt>Empty</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['use_watchdog']</tt></td>
<td>Bool</td>
<td>Whether to use the watchdog module</td>
<td><tt>False</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['trusted_servers']</tt></td>
<td>String</td>
<td>Servers that the watchdog should ping to determine whether network connectivity is ok, only applies if watchdog is enabled above</td>
<td><tt>Empty</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['wd_hostname']</tt></td>
<td>String</td>
<td>Hostname from which watchdog queries should originate, should be set to the FQDN of the Pgpool instance</td>
<td><tt>Empty</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['wd_authkey']</tt></td>
<td>String</td>
<td>Symmetric authentication token that should be present on all Pgpool instances communicating with each other, applicable if watchdog is enabled</td>
<td><tt>Empty (can generate with something like $ openssl dgst -sha256</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['delegate_IP']</tt></td>
<td>String</td>
<td>IP address that an active Pgpool master should claim, only applies if configuring Pgpool in an HA fashion</td>
<td><tt>Empty</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['if_up_cmd']</tt></td>
<td>String</td>
<td>Command to bring up the virtual IP if configuring Pgpool for HA</td>
<td><tt>Empty</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['if_down_cmd']</tt></td>
<td>String</td>
<td>Command to bring down the interface and subsequent virtual IP, only applicable for HA configurations</td>
<td><tt>Empty</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['heartbeat_destination0']</tt></td>
<td>String</td>
<td>Destination of a secondary Pgpool instance to which heartbeats should be sent</td>
<td><tt>Empty</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['heartbeat_device0']</tt></td>
<td>String</td>
<td>Specifies the network interface that should be used to send heartbeats</td>
<td><tt>Empty</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['wd_lifecheck_user']</tt></td>
<td>String</td>
<td>User that watchdog should use for running health checking queries, only applicable if query mode is used vs heartbeat</td>
<td><tt>Empty</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['wd_lifecheck_password']</tt></td>
<td>String</td>
<td>Password for the wd_lifecheck_user, only applicable if using watchdog in query mode</td>
<td><tt>Empty</tt></td>
</tr>
<tr>
<td><tt>['pgpool']['pgconf']['other_pgpool_hostname0']</tt></td>
<td>String</td>
<td>Hostname of another Pgpool instance (applies if configuring HA Pgpool)</td>
<td><tt>Empty</tt></td>
</tr>
</table>
There are miscellaneous settings that are also present in the list of default
attributes, for the most current set of these consult attributes/default.rb.
However, they are not required to get a Pgpool instance up and running in a
given mode, so they are not explicitly documented here. Failing that, consult
the Pgpool user manual.

Usage
-----
#### pgpool::default
Just include `pgpool` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[pgpool]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
- Author:: Jens Jorritsma(jens.jorritsma@rackspace.com)
