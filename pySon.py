import sys, json, urllib

""" EXPECTED SYSTEM ARGS

0 : SCRIPT FILENAME
1 : JSON
2 : OUTPUT FILENAME TO SAVE IMAGE AS 

"""

#parse JSON 


print sys.argv[1]

"""
jsonpng = json.loads(sys.argv[1])


print "ABC "
print sys.argv[1]

image = jsonpng['output']['url']

imgdld = urllib.URLopener()

imgdld.retrieve(image , sys.argv[2])
"""