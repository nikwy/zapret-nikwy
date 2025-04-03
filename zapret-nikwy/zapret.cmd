start "zapret" "%~dp0winws.exe" ^
--wf-tcp=443 --wf-udp=50000-50100 ^
--filter-tcp=443 --hostlist-domains=googlevideo.com --dpi-desync=fake --dpi-desync-repeats=10 --dpi-desync-fooling=badseq --dpi-desync-fake-tls="%~dp0fake\tls_clienthello_www_google_com.bin" --new ^
--filter-tcp=443 --hostlist="%~dp0lists\hostlist.txt" --dpi-desync=fake --dpi-desync-repeats=10 --dpi-desync-fooling=badseq --new ^
--filter-tcp=443 --ipset="%~dp0lists\ipset.txt" --dpi-desync=fake --dpi-desync-repeats=10 --dpi-desync-fooling=badseq --new ^
--filter-udp=50000-50100 --dpi-desync=fake --dpi-desync-repeats=10 --dpi-desync-any-protocol --dpi-desync-cutoff=n4