cdn-streaming
=============

Diagram
  Stream Editor --> Encoder --> Origin <-- Origin Area-N <-- Edge Area-N
  

Try to cache http streaming segment at own cdn.
  1. create /ramdisk for storing cache file
  2. configure reverse-proxy nginx to nearest origin
  
Todo:
  1. how to purge cache content
  
