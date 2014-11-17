default['beaver']['basedir'] = '/opt/beaver'
default['beaver']['user'] = 'beaver'
default['beaver']['group'] = 'beaver'
default['beaver']['join_groups'] = []
default['beaver']['log_dir'] = '/var/log/beaver'
default['beaver']['pid_dir'] = '/var/run/beaver'
default['beaver']['pip_package'] = 'beaver==22'

default['beaver']['sqs_aws_region'] = 'eu-west-1'
default['beaver']['sqs_aws_queue'] = 'logstash-input'
default['beaver']['sqs_aws_access_key'] = ''
default['beaver']['sqs_aws_secret_key'] = ''
