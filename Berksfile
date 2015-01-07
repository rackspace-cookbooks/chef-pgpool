source 'https://supermarket.getchef.com'

metadata

cookbook 'apt'
cookbook 'build-essential'
cookbook 'yum', '~> 3.0'
cookbook 'yum-epel'

group :integration do
  cookbook 'pgpool-test', path: './test/cookbooks/pgpool-test'
end
