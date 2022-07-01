#install requests module (if necessary)
#pip install requests
#import requests module
import requests
#send post request to the url, and send the data (numbers to be added) to the server
resp = requests.post("http://localhost:8000/sum", data = "a=123&b=123")
#check server response code
resp
#print sum
print(resp.json()) 