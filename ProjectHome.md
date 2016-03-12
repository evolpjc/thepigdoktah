Tool for parsing and generating usable information from snort performance metric output.

We are in initial development, please check the code out of svn here => http://code.google.com/p/thepigdoktah/source/checkout

Current sample output:
<pre>
-= Tha Pig Doktah 0.1 Dev =-<br>
Copyright (C) 2010 JJ Cummings<br>
<br>
Report Info:<br>
Processed: /var/tmp/snortstat<br>
First Entry: Wed Sep  1 11:34:05 2010<br>
Last Entry: Tue Sep  7 15:40:17 2010<br>
Time Span: 6 days, 4 hours, 6 minutes and 12 seconds<br>
<br>
Wirespeed:<br>
High: 10.613 Mbits/Sec | Sat Sep  4 07:59:48 2010<br>
Low: 0.006 Mbits/Sec | Sat Sep  4 07:12:47 2010<br>
Avg: 1.094 Mbits/Sec<br>
<br>
% Packet Loss:<br>
High: 10.504% | Sat Sep  4 03:00:00 2010<br>
Low: 0.000% | Tue Sep  7 15:40:17 2010<br>
Avg: 0.262%<br>
<br>
Additional Info:<br>
Avg Pkt Size: 580.223 bytes<br>
Avg Syns/Sec: 0.121<br>
Avg SynAcks/Sec: 0.108<br>
Avg Alerts/Sec: 0.001<br>
Avg Current Cached Sessions: 2977.419<br>
<br>
Raw Values:<br>
alerts avg = 0.001<br>
alerts high = 0.032<br>
alerts high_date = Wed Sep  1 12:32:57 2010<br>
alerts low = 0.000<br>
alerts low_date = Tue Sep  7 15:40:17 2010<br>
attrib_hosts_current avg = 0.000<br>
attrib_hosts_current high = 0.000<br>
attrib_hosts_current high_date = Tue Sep  7 15:40:17 2010<br>
attrib_hosts_current low = 0.000<br>
attrib_hosts_current low_date = Tue Sep  7 15:40:17 2010<br>
attrib_reloads avg = 0.000<br>
attrib_reloads high = 0<br>
attrib_reloads high_date = Tue Sep  7 15:40:17 2010<br>
attrib_reloads low = 0<br>
attrib_reloads low_date = Tue Sep  7 15:40:17 2010<br>
bytes_applayer avg = 0.143<br>
bytes_applayer high = 1.352<br>
bytes_applayer high_date = Sat Sep  4 07:59:48 2010<br>
bytes_applayer low = 0.006<br>
bytes_applayer low_date = Tue Sep  7 09:13:56 2010<br>
bytes_ipfrag avg = 0.000<br>
bytes_ipfrag high = 0<br>
bytes_ipfrag high_date = Tue Sep  7 15:40:17 2010<br>
bytes_ipfrag low = 0<br>
bytes_ipfrag low_date = Tue Sep  7 15:40:17 2010<br>
bytes_ipreass avg = 2066.350<br>
bytes_ipreass high = 3660<br>
bytes_ipreass high_date = Thu Sep  2 13:47:36 2010<br>
bytes_ipreass low = 368<br>
bytes_ipreass low_date = Thu Sep  2 10:22:15 2010<br>
bytes_tcprebuilt avg = 646.166<br>
bytes_tcprebuilt high = 1458<br>
bytes_tcprebuilt high_date = Sun Sep  5 15:19:06 2010<br>
bytes_tcprebuilt low = 136<br>
bytes_tcprebuilt low_date = Sat Sep  4 00:58:27 2010<br>
cpu1_idle avg = 97.975<br>
cpu1_idle high = 99.977<br>
cpu1_idle high_date = Sat Sep  4 00:58:27 2010<br>
cpu1_idle low = 69.943<br>
cpu1_idle low_date = Tue Sep  7 06:20:11 2010<br>
cpu1_sys avg = 0.030<br>
cpu1_sys high = 0.287<br>
cpu1_sys high_date = Sat Sep  4 07:59:48 2010<br>
cpu1_sys low = 0.000<br>
cpu1_sys low_date = Tue Sep  7 14:10:57 2010<br>
cpu1_user avg = 1.995<br>
cpu1_user high = 29.860<br>
cpu1_user high_date = Tue Sep  7 06:20:11 2010<br>
cpu1_user low = 0.023<br>
cpu1_user low_date = Sat Sep  4 00:58:27 2010<br>
cpu_count avg = 1.000<br>
cpu_count high = 1<br>
cpu_count high_date = Tue Sep  7 15:40:17 2010<br>
cpu_count low = 1<br>
cpu_count low_date = Tue Sep  7 15:40:17 2010<br>
drops avg = 0.262<br>
drops high = 10.504<br>
drops high_date = Sat Sep  4 03:00:00 2010<br>
drops low = 0.000<br>
drops low_date = Tue Sep  7 15:40:17 2010<br>
filtered_tcp avg = 1473.995<br>
filtered_tcp high = 45608<br>
filtered_tcp high_date = Tue Sep  7 09:24:12 2010<br>
filtered_tcp low = 85<br>
filtered_tcp low_date = Wed Sep  1 11:50:25 2010<br>
filtered_udp avg = 1473.995<br>
filtered_udp high = 45608<br>
filtered_udp high_date = Tue Sep  7 09:24:12 2010<br>
filtered_udp low = 85<br>
filtered_udp low_date = Wed Sep  1 11:50:25 2010<br>
frag_auto avg = 0.000<br>
frag_auto high = 0.000<br>
frag_auto high_date = Tue Sep  7 15:40:17 2010<br>
frag_auto low = 0.000<br>
frag_auto low_date = Tue Sep  7 15:40:17 2010<br>
frag_complete avg = 0.000<br>
frag_complete high = 0.000<br>
frag_complete high_date = Tue Sep  7 15:40:17 2010<br>
frag_complete low = 0.000<br>
frag_complete low_date = Tue Sep  7 15:40:17 2010<br>
frag_current avg = 0.000<br>
frag_current high = 0<br>
frag_current high_date = Tue Sep  7 15:40:17 2010<br>
frag_current low = 0<br>
frag_current low_date = Tue Sep  7 15:40:17 2010<br>
frag_delete avg = 0.000<br>
frag_delete high = 0.000<br>
frag_delete high_date = Tue Sep  7 15:40:17 2010<br>
frag_delete low = 0.000<br>
frag_delete low_date = Tue Sep  7 15:40:17 2010<br>
frag_faults avg = 0.000<br>
frag_faults high = 0<br>
frag_faults high_date = Tue Sep  7 15:40:17 2010<br>
frag_faults low = 0<br>
frag_faults low_date = Tue Sep  7 15:40:17 2010<br>
frag_flushes avg = 0.000<br>
frag_flushes high = 0.000<br>
frag_flushes high_date = Tue Sep  7 15:40:17 2010<br>
frag_flushes low = 0.000<br>
frag_flushes low_date = Tue Sep  7 15:40:17 2010<br>
frag_insert avg = 0.000<br>
frag_insert high = 0.000<br>
frag_insert high_date = Tue Sep  7 15:40:17 2010<br>
frag_insert low = 0.000<br>
frag_insert low_date = Tue Sep  7 15:40:17 2010<br>
frag_max avg = 0.000<br>
frag_max high = 0<br>
frag_max high_date = Tue Sep  7 15:40:17 2010<br>
frag_max low = 0<br>
frag_max low_date = Tue Sep  7 15:40:17 2010<br>
frag_new avg = 0.000<br>
frag_new high = 0.000<br>
frag_new high_date = Tue Sep  7 15:40:17 2010<br>
frag_new low = 0.000<br>
frag_new low_date = Tue Sep  7 15:40:17 2010<br>
frag_timeout avg = 0.000<br>
frag_timeout high = 0<br>
frag_timeout high_date = Tue Sep  7 15:40:17 2010<br>
frag_timeout low = 0<br>
frag_timeout low_date = Tue Sep  7 15:40:17 2010<br>
kpkts_applayer avg = 105223.610<br>
kpkts_applayer high = 444882<br>
kpkts_applayer high_date = Thu Sep  2 22:42:20 2010<br>
kpkts_applayer low = 5738<br>
kpkts_applayer low_date = Wed Sep  1 18:55:09 2010<br>
kpkts_ipfrag avg = 0.000<br>
kpkts_ipfrag high = 0.000<br>
kpkts_ipfrag high_date = Tue Sep  7 15:40:17 2010<br>
kpkts_ipfrag low = 0.000<br>
kpkts_ipfrag low_date = Tue Sep  7 15:40:17 2010<br>
kpkts_ipreass avg = 0.001<br>
kpkts_ipreass high = 0.366<br>
kpkts_ipreass high_date = Tue Sep  7 06:20:11 2010<br>
kpkts_ipreass low = 0.000<br>
kpkts_ipreass low_date = Tue Sep  7 15:22:38 2010<br>
kpkts_iptcprebuilt avg = 0.144<br>
kpkts_iptcprebuilt high = 1.646<br>
kpkts_iptcprebuilt high_date = Thu Sep  2 22:42:20 2010<br>
kpkts_iptcprebuilt low = 0.006<br>
kpkts_iptcprebuilt low_date = Tue Sep  7 09:13:56 2010<br>
kpkts_wire avg = 0.143<br>
kpkts_wire high = 1.352<br>
kpkts_wire high_date = Sat Sep  4 07:59:48 2010<br>
kpkts_wire low = 0.006<br>
kpkts_wire low_date = Tue Sep  7 09:13:56 2010<br>
mbits_applayer avg = 580.223<br>
mbits_applayer high = 1009<br>
mbits_applayer high_date = Sat Sep  4 08:09:48 2010<br>
mbits_applayer low = 120<br>
mbits_applayer low_date = Mon Sep  6 05:52:07 2010<br>
mbits_ipfrag avg = 1.100<br>
mbits_ipfrag high = 17.685<br>
mbits_ipfrag high_date = Tue Sep  7 06:20:11 2010<br>
mbits_ipfrag low = 0.007<br>
mbits_ipfrag low_date = Mon Sep  6 17:12:03 2010<br>
mbits_ipreass avg = 0.000<br>
mbits_ipreass high = 0.000<br>
mbits_ipreass high_date = Tue Sep  7 15:40:17 2010<br>
mbits_ipreass low = 0.000<br>
mbits_ipreass low_date = Tue Sep  7 15:40:17 2010<br>
mbits_tcprebuilt avg = 0.007<br>
mbits_tcprebuilt high = 8.324<br>
mbits_tcprebuilt high_date = Tue Sep  7 06:20:11 2010<br>
mbits_tcprebuilt low = 0.000<br>
mbits_tcprebuilt low_date = Tue Sep  7 01:11:34 2010<br>
mbps_snort avg = 0.000<br>
mbps_snort high = 0<br>
mbps_snort high_date = Tue Sep  7 15:40:17 2010<br>
mbps_snort low = 0<br>
mbps_snort low_date = Tue Sep  7 15:40:17 2010<br>
mbps_wire avg = 1.094<br>
mbps_wire high = 10.613<br>
mbps_wire high_date = Sat Sep  4 07:59:48 2010<br>
mbps_wire low = 0.006<br>
mbps_wire low_date = Sat Sep  4 07:12:47 2010<br>
patmatch avg = 298.111<br>
patmatch high = 556.312<br>
patmatch high_date = Sun Sep  5 19:37:37 2010<br>
patmatch low = 3.186<br>
patmatch low_date = Fri Sep  3 08:51:09 2010<br>
pktbytes avg = 580.223<br>
pktbytes high = 1009<br>
pktbytes high_date = Sat Sep  4 08:09:48 2010<br>
pktbytes low = 120<br>
pktbytes low_date = Mon Sep  6 05:52:07 2010<br>
pkts_blocked avg = 0.210<br>
pkts_blocked high = 14.322<br>
pkts_blocked high_date = Sun Sep  5 20:50:12 2010<br>
pkts_blocked low = 0.109<br>
pkts_blocked low_date = Sat Sep  4 01:34:34 2010<br>
pkts_dropped avg = 0.000<br>
pkts_dropped high = 0<br>
pkts_dropped high_date = Tue Sep  7 15:40:17 2010<br>
pkts_dropped low = 0<br>
pkts_dropped low_date = Tue Sep  7 15:40:17 2010<br>
pkts_dropped_percentage avg = 0.187<br>
pkts_dropped_percentage high = 9.096<br>
pkts_dropped_percentage high_date = Sun Sep  5 20:50:12 2010<br>
pkts_dropped_percentage low = 0.003<br>
pkts_dropped_percentage low_date = Wed Sep  1 11:50:25 2010<br>
pkts_total avg = 538.195<br>
pkts_total high = 38320<br>
pkts_total high_date = Thu Sep  2 22:42:20 2010<br>
pkts_total low = 0<br>
pkts_total low_date = Tue Sep  7 15:40:17 2010<br>
sessions_close avg = 0.000<br>
sessions_close high = 0.000<br>
sessions_close high_date = Tue Sep  7 15:40:17 2010<br>
sessions_close low = 0.000<br>
sessions_close low_date = Tue Sep  7 15:40:17 2010<br>
sessions_closed avg = 707.953<br>
sessions_closed high = 2980<br>
sessions_closed high_date = Mon Sep  6 12:37:55 2010<br>
sessions_closed low = 2<br>
sessions_closed low_date = Wed Sep  1 11:34:05 2010<br>
sessions_cur avg = 2977.419<br>
sessions_cur high = 8173<br>
sessions_cur high_date = Sun Sep  5 21:10:31 2010<br>
sessions_cur low = 51<br>
sessions_cur low_date = Wed Sep  1 11:34:05 2010<br>
sessions_del avg = 0.032<br>
sessions_del high = 3.055<br>
sessions_del high_date = Mon Sep  6 05:52:07 2010<br>
sessions_del low = 0.000<br>
sessions_del low_date = Sun Sep  5 19:53:29 2010<br>
sessions_dropped avg = 0.001<br>
sessions_dropped high = 0.006<br>
sessions_dropped high_date = Wed Sep  1 11:50:25 2010<br>
sessions_dropped low = 0.000<br>
sessions_dropped low_date = Tue Sep  7 15:40:17 2010<br>
sessions_est avg = 0.209<br>
sessions_est high = 11.686<br>
sessions_est high_date = Sun Sep  5 20:50:12 2010<br>
sessions_est low = 0.003<br>
sessions_est low_date = Wed Sep  1 11:50:25 2010<br>
sessions_init avg = 0.021<br>
sessions_init high = 0.150<br>
sessions_init high_date = Thu Sep  2 11:30:26 2010<br>
sessions_init low = 0.000<br>
sessions_init low_date = Tue Sep  7 09:24:12 2010<br>
sessions_max avg = 0.000<br>
sessions_max high = 0.000<br>
sessions_max high_date = Tue Sep  7 15:40:17 2010<br>
sessions_max low = 0.000<br>
sessions_max low_date = Tue Sep  7 15:40:17 2010<br>
sessions_midstream avg = 2980.107<br>
sessions_midstream high = 8175<br>
sessions_midstream high_date = Sun Sep  5 21:03:29 2010<br>
sessions_midstream low = 51<br>
sessions_midstream low_date = Wed Sep  1 11:34:05 2010<br>
sessions_new avg = 0.114<br>
sessions_new high = 3.062<br>
sessions_new high_date = Mon Sep  6 05:52:07 2010<br>
sessions_new low = 0.016<br>
sessions_new low_date = Fri Sep  3 20:12:36 2010<br>
sessions_pruned avg = 374.569<br>
sessions_pruned high = 953<br>
sessions_pruned high_date = Sun Sep  5 08:30:47 2010<br>
sessions_pruned low = 3<br>
sessions_pruned low_date = Wed Sep  1 11:50:25 2010<br>
sessions_timedout avg = 1894.898<br>
sessions_timedout high = 7586<br>
sessions_timedout high_date = Sun Sep  5 21:22:42 2010<br>
sessions_timedout low = 31<br>
sessions_timedout low_date = Wed Sep  1 11:34:05 2010<br>
sessions_udp_cachedSsns_sec avg = 0.000<br>
sessions_udp_cachedSsns_sec high = 0<br>
sessions_udp_cachedSsns_sec high_date = Tue Sep  7 15:40:17 2010<br>
sessions_udp_cachedSsns_sec low = 0<br>
sessions_udp_cachedSsns_sec low_date = Tue Sep  7 15:40:17 2010<br>
sessions_udp_cached_current avg = 0.000<br>
sessions_udp_cached_current high = 0.000<br>
sessions_udp_cached_current high_date = Tue Sep  7 15:40:17 2010<br>
sessions_udp_cached_current low = 0.000<br>
sessions_udp_cached_current low_date = Tue Sep  7 15:40:17 2010<br>
sessions_udp_cached_max avg = 0.000<br>
sessions_udp_cached_max high = 0<br>
sessions_udp_cached_max high_date = Tue Sep  7 15:40:17 2010<br>
sessions_udp_cached_max low = 0<br>
sessions_udp_cached_max low_date = Tue Sep  7 15:40:17 2010<br>
sessions_udp_cached_sec avg = 0.000<br>
sessions_udp_cached_sec high = 0<br>
sessions_udp_cached_sec high_date = Tue Sep  7 15:40:17 2010<br>
sessions_udp_cached_sec low = 0<br>
sessions_udp_cached_sec low_date = Tue Sep  7 15:40:17 2010<br>
stream_fault avg = 0.001<br>
stream_fault high = 47<br>
stream_fault high_date = Sun Sep  5 18:39:56 2010<br>
stream_fault low = 0<br>
stream_fault low_date = Tue Sep  7 15:40:17 2010<br>
stream_flush avg = 0.436<br>
stream_flush high = 365.535<br>
stream_flush high_date = Tue Sep  7 06:20:11 2010<br>
stream_flush low = 0.013<br>
stream_flush low_date = Thu Sep  2 05:44:59 2010<br>
stream_timeout avg = 181.641<br>
stream_timeout high = 3578<br>
stream_timeout high_date = Sun Sep  5 20:50:12 2010<br>
stream_timeout low = 1<br>
stream_timeout low_date = Wed Sep  1 11:50:25 2010<br>
synacks avg = 0.108<br>
synacks high = 2.771<br>
synacks high_date = Mon Sep  6 12:42:56 2010<br>
synacks low = 0.006<br>
synacks low_date = Sat Sep  4 00:58:27 2010<br>
syns avg = 0.121<br>
syns high = 6.072<br>
syns high_date = Mon Sep  6 05:52:07 2010<br>
syns low = 0.019<br>
syns low_date = Fri Sep  3 20:12:36 2010<br>
</pre><br>
<p><img src='http://rootedyour.com/enhanced/mbps.png'>
<br>
<br>
<hr><br>
<br>
<br>
<p><img src='http://rootedyour.com/enhanced/syns.png'><br>
