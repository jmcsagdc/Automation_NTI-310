import os

hostnameBase='server-ldap1-' # Build base of ldap server hostname (BAD HARDCODE)
#TODO: fix this to use helper and get valid ldap server name

myHostname=os.popen('hostname').read()
mySubnet=''
count=0
mySubnet_l=myHostname.strip().split('-')

for i in range(1, len(mySubnet_l)):
    if count==0:
        mySubnet+=mySubnet_l[i]
    else:
        mySubnet+='-'+mySubnet_l[i]
    count+=1
myLdapServer=hostnameBase+mySubnet
print myLdapServer

# All this does is construct a hostname for 
# substitution into LDAP Client Create Script
