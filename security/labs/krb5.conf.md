# Configuration snippets may be placed in this directory as well
includedir /etc/krb5.conf.d/

[logging]
 default = FILE:/var/log/krb5libs.log
 kdc = FILE:/var/log/krb5kdc.log
 admin_server = FILE:/var/log/kadmind.log

[libdefaults]
 default_realm=MSTCIMT.COM
 dns_lookup_realm = false
 ticket_lifetime = 24h
 renew_lifetime = 7d
 forwardable = true
 rdns = false
# default_realm = EXAMPLE.COM
 default_ccache_name = KEYRING:persistent:%{uid}
 udp_preference_limit = 1
 default_tgs_enctypes = arcfour-hmac
 default_tkt_enctypes = arcfour-hmac 

[realms]
 MSTCIMT.COM = {
  kdc = ec2-52-59-196-133.eu-central-1.compute.amazonaws.com
  admin_server = ec2-52-59-196-133.eu-central-1.compute.amazonaws.com
 }

[domain_realm]
 .example.com = MSTCIMT.COM
 example.com = MSTCIMT.COM

