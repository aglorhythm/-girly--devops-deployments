import ovh

# Create a client using OVH API credentials
client = ovh.Client(
    endpoint='ovh-eu',                # OVH API endpoint (change as needed)
    application_key='14319b06fa2ad27f',
    application_secret='16d7193865bd42bff3701c14d20bf5d1'
)

# Request a consumer key with desired access rights
ck = client.new_consumer_key_request()
ck.add_recursive_rules(ovh.API_READ_WRITE, '/domain/zone/*')

# Ask OVH API to validate this consumer key
validation = ck.request()

print("Please visit %s to authenticate" % validation['validationUrl'])
print("Consumer Key is: %s" % validation['consumerKey'])
