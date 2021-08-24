@echo off
DEL /F/Q/S "%HOMEPATH%\AppData\Local\Spotify\Browser\Cache
DEL /F/Q/S "%HOMEPATH%\AppData\Local\Spotify\Browser\GPUCache
DEL /F/Q/S "%HOMEPATH%\AppData\Local\Spotify\User Data"
DEL /F/Q/S "%HOMEPATH%\AppData\Local\Spotify\Storage"
DEL /F/Q/S "%HOMEPATH%\AppData\Local\Spotify\Data"
DEL /F/Q/S "%HOMEPATH%\AppData\Local\Spotify\Browser\blob_storage"
DEL /F/Q/S "%HOMEPATH%\AppData\Local\Spotify\Update"
DEL /F/Q/S "%HOMEPATH%\AppData\Local\Spotify\Browser\Local Storage\leveldb"
start %HOMEPATH%\AppData\Roaming\Spotify\Spotify.exe