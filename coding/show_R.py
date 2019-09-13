import base64
import zlib
import gzip
jx2rs={'747':375,
		'777':350,
		'767':280,
		'11':340,
		'340':280,
		'300':300,
		'310':250,
		'82':150,
		'90':150,
		'737':140,
		'320':180,
		'738':180,
		'32L':189,
		'73F':140,
		'73T':140,
		'321':179,
		'325':186,
		'32F':152,
		'73H':175,
		'73A':149,
		'73M':178,
		'32G':150,
		'73L':170,
		'736':132,
		'32R':180,
		'32E':166,
		'33B':300,
		'77W':264,
		'772':320,
		'333':284,
		'337':284,
		'32A':173,
		'73K':159,
		'73E':180,
		'190':104,
		'319':142,
		'32M':195,
		'32C':168,
		'73S':167,
		'CR9':90,
		'73N':172,
		'32D':166,
		'73C':128,
		'73V':160,
		'73U':180,
		'73B':200,
		'33E':237,
		'787':266,
		'JET':261,
		'E90':106,
		'323':156,
		'195':118,
		'73D':174,
		'757':232,
		'77A':380,
		'73G':149,
		'330':301,
		'ARJ':105,
		'MA6':60,
		'332':293,
		'380':556,
		'33W':335,
		'744':416,
		'33A':295,
		'33G':242,
		'730':230,
		'73O':230,
		'739':180,
		'73Q':169,
		'32G':150,
		'32U':150,
		'31G':130,
		'33C':275,
		'33H':218,
		'763':214,
		'735':132,
		'336':380,
		'789':246,
		'773':368,
		'33D':301,
		'32N':183,
		'7M8':178,
		'331':246,
		'33L':300,
		'338':271,
		'78L':240,
		'31C':128,
		'78A':240,
		'32I':150,
		'32T':150,
		'32J':150,
		'788':240,
		}
		
def get_usefull(s):
	s=str(s)
	s=s.split("|")
#	print(s)
	cw=s[7].split(',')
	manzai=jx2rs[s[5]]#满载人数
#	print(manzai)
	res=0#空座位数
	for i in s[7].split(','):
#		print(i[1])
		if(i[1]=="A"):
			res=res+10
		else:
			res=res+int(i[1])
#			print(int(i[1]))r
#	print(res)
	c=[]
	c.append(s[1])
	c.append(s[2])
	c.append(s[3])
	c.append(s[8])
	c.append(s[9])
	c.append(s[5])
	c.append(str(manzai))
	c.append(str(manzai-res))
#	s[2],s[3],s[8],s[9],manzai-res
	ans=','.join(c)
#	print(ans)
	return ans
	
def unzip(s):
	#s = "H4sIAKjkxlsC/8tIzcnJVyjPL0oBAPpDyiYKAAAA"
	air=gzip.decompress(base64.b64decode(s)).decode('utf-8')
	#print(air)
	air_list=str(air).split('-')
	test=air_list[0]
#	get_usefull(test)
	use_list=[]
	for i in air_list:
#		print(i)
		use_list.append(get_usefull(i))
		
	return use_list
s="H4sIAAAAAAAEAOVXS2/TQBD+KxxdKVZmZnftXW7GVRr6pCIBNTcOvXECcfOBSyXKAX4DEkc4IPFQVX4Oof0ZzNp5zEZk3ZCCCijSWtHnfcy333wzPjgkBVlFgBY0mgpB80A8DJ48O64UQQXVtknIWuiOT96NX765fPGhy5O6Brr+V250HhYJEv+9OH/9/dMrjyPM8KONzlELfodx3l/gTgt4j2EIplsJ94vEOYnmTqDDPHEqQOXcghKbSTSTc3cxsRCgYm5VFvtVubNV3eoMFFMGDWPlyCJk6aivPXeCV8ODAqh6jx4/Pa5yZZnYFmIWt5hcSln4tdPm8bMt6reutMNVqEcdwCjJXedmDovYzTwoItx39tAfDIOdXYy4hvX0gOVOWnCGBpgzE8pd/8Vyj5G6TE8sWdJpf5gD5YIb8nrSU24aPZVZonIjuVEguTnCltgZxwB3JIPDaOw7mLgAzbOFdA3QzMbSdSKJcqQ0MzEP26sBjYGpJHa9JCguiRITooAWf8H/nmRwlklqqECrFtrawhrEw+rHw9pa7eATrfvbrn0ArTi9YdvEHCHwAbzRPkCRS12IXonihDZtHv9T9BPReotTTgSe+cFiUDJL02JxbYGpuMVR3OIoYnFLs9HrWctewEJtaXCNdS1SPTTUNiqpJd9Iek8MbLRNU/mKJ5h6eKFssLmnhjN8Vrp6vHmPEsVa6I7ffrx4f1pvbmaL99YWbLwXWtItjvpOG5c2jzXPf49rp+Lz7fc2b19+Phk//zp/07dK8zdLXgkguAYtr2GTGib8ShenZ9/Ov6ye3nvrsBXvDZeW8rq7Ex8zROxrsJgF2Y32tV8v1Z2iiH7MxBrqSL2gjHPbORvwqgzzqqfEK8Lr+dSIEPNHQqe5ramhzTWlzaMt9F6eUBamZpBwd9nXas3NEzJI3W3Gw/moJF5MfFHgsIp1/cY+q3P/OqlvSP0BjN2hq5UQAAA="
unzip(s)