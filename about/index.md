---
layout: about
title: About
---

Built: {{ site.time }}

# Photo Source URLs

You can construct the source URL to a photo once you know its ID, server ID, farm ID and secret, as returned by many API methods.

The URL takes the following format:


	https://farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}.jpg
 
or

	https://farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}_[mstzb].jpg

or

	https://farm{farm-id}.staticflickr.com/{server-id}/{id}_{o-secret}_o.(jpg|gif|png)

## Size Suffixes

The letter suffixes are as follows:

```
s	small square 75x75
q	large square 150x150
t	thumbnail, 100 on longest side
m	small, 240 on longest side
n	small, 320 on longest side
-	medium, 500 on longest side
z	medium 640, 640 on longest side
c	medium 800, 800 on longest side†
b	large, 1024 on longest side*
h	large 1600, 1600 on longest side†
k	large 2048, 2048 on longest side†
o	original image, either a jpg, gif or png, depending on source format
```

† Medium 800, large 1600, and large 2048 photos only exist after March 1st 2012.

Note: Original photos behave a little differently. They have their own secret (called originalsecret in responses) and a variable file extension (called originalformat in responses). These values are returned via the API only when the caller has permission to view the original size (based on a user preference and various other criteria). The values are returned by the flickr.photos.getInfo method and by any method that returns a list of photos and allows an extras parameter (with a value of original_format), such as flickr.photos.search. The flickr.photos.getSizes method, as always, will return the full original URL where permissions allow.
Example

```
https://farm1.staticflickr.com/2/1418878_1e92283336_m.jpg
```

```
farm-id: 1
server-id: 2
photo-id: 1418878
secret: 1e92283336
size: m
```
