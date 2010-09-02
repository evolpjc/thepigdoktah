#!/usr/bin/perl

## the pig doktah v(whatever it says below!)
## cummingsj@gmail.com

# Copyright (C) 2010 JJ Cummings

# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

use strict;
use warnings;
use Carp;
use GD::Graph::area;
use Data::Dumper;

# Get the stats file we are gonna parse
my $pmfile = shift;

# declare our hash that we will store all of our data in for analysis
my %pmdata = ();

# Wet the bed if it's not a real file!
croak ("$pmfile is not a regular file!") unless -f $pmfile;

# We are gonna need these in a minute
my $counter = 2;
my $user = 27;
my $sys = 28;
my $idle = 29;

# open our stats file for read only and dump the values into a hash!
open (FH,"<",$pmfile) || croak ($!);
while (<FH>) {
	next if $_ =~ /^#/; 
	my @vals=split(/,/,$_);
	$pmdata{$vals[0]}{'drops'} = $vals[1];
	$pmdata{$vals[0]}{'mbps_wire'} = $vals[2];
	$pmdata{$vals[0]}{'alerts'} = $vals[3];
	$pmdata{$vals[0]}{'kpkts_wire'} = $vals[4];
	$pmdata{$vals[0]}{'pktbytes'} = $vals[5];
	$pmdata{$vals[0]}{'patmatch'} = $vals[6];
	$pmdata{$vals[0]}{'syns'} = $vals[7];
	$pmdata{$vals[0]}{'synacks'} = $vals[8];
	$pmdata{$vals[0]}{'sessions_new'} = $vals[9];
	$pmdata{$vals[0]}{'sessions_del'} = $vals[10];
	$pmdata{$vals[0]}{'sessions_cur'} = $vals[11];
	$pmdata{$vals[0]}{'sessions_max'} = $vals[12];
	$pmdata{$vals[0]}{'stream_flush'} = $vals[13];
	$pmdata{$vals[0]}{'stream_fault'} = $vals[14];
	$pmdata{$vals[0]}{'stream_timeout'} = $vals[15];
	$pmdata{$vals[0]}{'frag_new'} = $vals[16];
	$pmdata{$vals[0]}{'frag_complete'} = $vals[17];
	$pmdata{$vals[0]}{'frag_insert'} = $vals[18];
	$pmdata{$vals[0]}{'frag_delete'} = $vals[19];
	$pmdata{$vals[0]}{'frag_auto'} = $vals[20];
	$pmdata{$vals[0]}{'frag_flushes'} = $vals[21];
	$pmdata{$vals[0]}{'frag_current'} = $vals[22];
	$pmdata{$vals[0]}{'frag_max'} = $vals[23];
	$pmdata{$vals[0]}{'frag_timeout'} = $vals[24];
	$pmdata{$vals[0]}{'frag_faults'} = $vals[25];
	$pmdata{$vals[0]}{'cpu_count'} = $vals[26];
	$pmdata{$vals[0]}{'cpu1_user'} = $vals[27];
	$pmdata{$vals[0]}{'cpu1_sys'} = $vals[28];
	$pmdata{$vals[0]}{'cpu1_idle'} = $vals[29];
	# handle multiple cpu entries
	while ($counter <= $vals[26]) {
		$user += 3;
		$sys += 3;
		$idle += 3;
		$pmdata{$vals[0]}{'cpu'.$counter.'_user'} = $vals[$user];
		$pmdata{$vals[0]}{'cpu'.$counter.'_sys'} = $vals[$sys];
		$pmdata{$vals[0]}{'cpu'.$counter.'_idle'} = $vals[$idle];
		$counter++;
	}
	$pmdata{$vals[0]}{'mbits_ipfrag'} = $vals[($idle+2)];
	$pmdata{$vals[0]}{'mbits_ipreass'} = $vals[($idle+3)];
	$pmdata{$vals[0]}{'mbits_tcprebuilt'} = $vals[($idle+4)];
	$pmdata{$vals[0]}{'mbits_ipfrag'} = $vals[($idle+5)];
	$pmdata{$vals[0]}{'mbits_applayer'} = $vals[($idle+6)];
	# skipped +7 since it's duplicated
	$pmdata{$vals[0]}{'bytes_ipfrag'} = $vals[($idle+8)];
	$pmdata{$vals[0]}{'bytes_ipreass'} = $vals[($idle+9)];
	$pmdata{$vals[0]}{'bytes_tcprebuilt'} = $vals[($idle+10)];
	$pmdata{$vals[0]}{'bytes_applayer'} = $vals[($idle+11)];
	# skipped +12 since it's duplicated
	$pmdata{$vals[0]}{'kpkts_ipfrag'} = $vals[($idle+13)];
	$pmdata{$vals[0]}{'kpkts_ipreass'} = $vals[($idle+14)];
	$pmdata{$vals[0]}{'kpkts_iptcprebuilt'} = $vals[($idle+15)];
	$pmdata{$vals[0]}{'kpkts_applayer'} = $vals[($idle+16)];
	$pmdata{$vals[0]}{'pkts_total'} = $vals[($idle+17)];
	$pmdata{$vals[0]}{'pkts_dropped'} = $vals[($idle+18)];
	$pmdata{$vals[0]}{'pkts_blocked'} = $vals[($idle+19)];
	$pmdata{$vals[0]}{'pkts_dropped_percentage'} = $vals[($idle+20)];
	$pmdata{$vals[0]}{'filtered_tcp'} = $vals[($idle+21)];
	$pmdata{$vals[0]}{'filtered_udp'} = $vals[($idle+22)];
	$pmdata{$vals[0]}{'sessions_midstream'} = $vals[($idle+23)];
	$pmdata{$vals[0]}{'sessions_closed'} = $vals[($idle+24)];
	$pmdata{$vals[0]}{'sessions_pruned'} = $vals[($idle+25)];
	$pmdata{$vals[0]}{'sessions_timedout'} = $vals[($idle+26)];
	$pmdata{$vals[0]}{'sessions_dropped'} = $vals[($idle+27)];
	$pmdata{$vals[0]}{'sessions_init'} = $vals[($idle+28)];
	$pmdata{$vals[0]}{'sessions_est'} = $vals[($idle+29)];
	$pmdata{$vals[0]}{'sessions_close'} = $vals[($idle+30)];
	$pmdata{$vals[0]}{'sessions_max'} = $vals[($idle+31)];
	$pmdata{$vals[0]}{'sessions_udp_cached_sec'} = $vals[($idle+32)];
	$pmdata{$vals[0]}{'sessions_udp_cachedSsns_sec'} = $vals[($idle+33)];
	$pmdata{$vals[0]}{'sessions_udp_cached_current'} = $vals[($idle+34)];
	$pmdata{$vals[0]}{'sessions_udp_cached_max'} = $vals[($idle+35)];
	$pmdata{$vals[0]}{'attrib_hosts_current'} = $vals[($idle+36)];
	$pmdata{$vals[0]}{'attrib_reloads'} = $vals[($idle+37)];
	$pmdata{$vals[0]}{'mbps_snort'} = $vals[($idle+38)];
	$pmdata{$vals[0]}{'mbps_sniffing'} = $vals[($idle+39)];
	$pmdata{$vals[0]}{'mbps_combined'} = $vals[($idle+40)];
	$pmdata{$vals[0]}{'useconds_snort'} = $vals[($idle+41)];
	$pmdata{$vals[0]}{'useconds_sniffing'} = $vals[($idle+42)];
	$pmdata{$vals[0]}{'useconds_combined'} = $vals[($idle+43)];
	$pmdata{$vals[0]}{'kpkts_snort'} = $vals[($idle+44)];
	$pmdata{$vals[0]}{'kpkts_sniffing'} = $vals[($idle+45)];
	$pmdata{$vals[0]}{'kpkts_combined'} = $vals[($idle+44)];
	
	undef @vals;
	$counter = 2;
	$user = 27;
	$sys = 28;
	$idle = 29;
}
close(FH) || carp ($!);

# Declare some more vars that we will need
$counter = 0;
my $mbps = 0;
my $drops = 0;
my $size = 0;
my $syns = 0;
my $synacks = 0;
my $alerts = 0;
my @mbpsdata = undef;
my @syndata = undef;
my $min = time();
my $max = 0;
my $current_sessions = 0;
my $APP_VERSION = '0.1 Dev';
my %stats = ();

# Init some hash values for later calcumalatation
$stats{'mbps'}{'high'}{'val'} = 0;
$stats{'mbps'}{'low'}{'val'} = 10000;
$stats{'mbps'}{'high'}{'date'} = 0;
$stats{'mbps'}{'low'}{'date'} = 0;
$stats{'drop'}{'high'}{'val'} = 0;
$stats{'drop'}{'low'}{'val'} = 100;
$stats{'drop'}{'high'}{'date'} = 0;
$stats{'drop'}{'low'}{'date'} = 0;

# loop through our hash and calculate/build/store our values
foreach (sort keys %pmdata) {
	$counter++;
	$mbps += $pmdata{$_}{'mbps_wire'}; 
	$drops += $pmdata{$_}{'drops'};
	$size += $pmdata{$_}{'pktbytes'};
	$syns += $pmdata{$_}{'syns'};
	$synacks += $pmdata{$_}{'synacks'};
	$alerts += $pmdata{$_}{'alerts'};
	
	# Push some data into multidimensional arrays for graphing!
	push @{ $syndata[0] },scalar localtime($_);
	push @{ $syndata[1] },$pmdata{$_}{'syns'};
	push @{ $syndata[2] },$pmdata{$_}{'synacks'};
	push @{ $mbpsdata[0] },scalar localtime($_);
	push @{ $mbpsdata[1] },$pmdata{$_}{'mbps_wire'};
	push @{ $mbpsdata[2] },$pmdata{$_}{'mbps_wire'}*($pmdata{$_}{'drops'}/100);
	
	$current_sessions += $pmdata{$_}{'sessions_cur'};
	$min = $_ if $min > $_;
	$max = $_ if $max < $_;
	$stats{'mbps'}{'high'}{'val'} = $pmdata{$_}{'mbps_wire'} if $stats{'mbps'}{'high'}{'val'} <= $pmdata{$_}{'mbps_wire'};
	$stats{'mbps'}{'high'}{'date'} = scalar localtime($_) if $stats{'mbps'}{'high'}{'val'} <= $pmdata{$_}{'mbps_wire'};
	$stats{'mbps'}{'low'}{'val'} = $pmdata{$_}{'mbps_wire'} if $stats{'mbps'}{'low'}{'val'} >= $pmdata{$_}{'mbps_wire'};
	$stats{'mbps'}{'low'}{'date'} = scalar localtime($_) if $stats{'mbps'}{'low'}{'val'} >= $pmdata{$_}{'mbps_wire'};
	$stats{'drop'}{'high'}{'val'} = $pmdata{$_}{'drops'} if $stats{'drop'}{'high'}{'val'} <= $pmdata{$_}{'drops'};
	$stats{'drop'}{'high'}{'date'} = scalar localtime($_) if $stats{'drop'}{'high'}{'val'} <= $pmdata{$_}{'mbps_wire'};
	$stats{'drop'}{'low'}{'val'} = $pmdata{$_}{'drops'} if $stats{'drop'}{'low'}{'val'} >= $pmdata{$_}{'drops'};
	$stats{'drop'}{'low'}{'date'} = scalar localtime($_) if $stats{'drop'}{'low'}{'val'} >= $pmdata{$_}{'drops'};
}

# calculate our foo and do some rounding!
my $seconds = $max - $min;
$max = scalar localtime($max);
$min = scalar localtime($min);
$seconds = sprintf("%d days, %d hours, %d minutes and %d seconds\n",(gmtime $seconds)[7,2,1,0]);

$mbps /= $counter;
$mbps = sprintf("%.3f",$mbps);

$drops /= $counter;
$drops = sprintf("%.3f",$drops);

$size /= $counter;
$size = sprintf("%.0f", $size);

$syns /= $counter;
$syns = sprintf("%.3f",$syns);

$synacks /= $counter;
$synacks = sprintf("%.3f",$synacks);

$alerts /= $counter;
$alerts = sprintf("%.3f",$alerts);

$current_sessions /= $counter;
$current_sessions = sprintf("%.0f",$current_sessions);

#
# Sub to create area graphs
#
sub graph_area {
	my ($aref, $title, $legend, $gfile) = @_;
	my @lvals = split(/,/,$legend);
	
	# creat graph object
	my $graph = GD::Graph::area->new(600,300);
	
	# Set our various graph options
	$graph->set( 
		'x_label'          => 'Time',
		'y_label'           => 'Value',
		'title'             => $title,
		'bgclr' => 'white', 
		'transparent' => 0, 
		'long_ticks' => 1, 
		'tick_length' => 0, 
		'x_ticks' => 10, 
		'x_label_skip' => (sprintf("%.0f",($counter/3))),
		'x_labels_vertical' => 1,
		'x_label_position' => .5, 
		'y_label_position' => .5, 
	) or croak($graph->error);
	
	# build the graph legend
	$graph->set_legend( @lvals );
	my $gd = $graph->plot($aref) || croak($graph->error);

	# save the graph!
	open(IMG, '>',"$gfile.png") || croak($!);
	binmode IMG;
	print IMG $gd->png;
	close IMG || croak ($!);
	undef ($graph);
	undef ($gd);
}

# lets paint some pretty pictures!
graph_area(\@mbpsdata,'Mbps vs Packet Loss', 'Mbps,Packet Loss', 'mbps');
undef @mbpsdata;
graph_area(\@syndata,'SYNS vs SYNACKS (per second)', 'Syns/Sec,Synacks/Sec', 'syns');
undef @syndata;

# Everything to stdout!
print<<"__EOT";

-= Tha Pig Doktah $APP_VERSION =-
Copyright (C) 2010 JJ Cummings

Report Info:
	Processed: $pmfile
	First Entry: $min
	Last Entry: $max
	Time Span: $seconds
Wirespeed:
	High: $stats{'mbps'}{'high'}{'val'} Mbits/Sec | $stats{'mbps'}{'high'}{'date'}
	Low: $stats{'mbps'}{'low'}{'val'} Mbits/Sec | $stats{'mbps'}{'low'}{'date'}
	Avg: $mbps Mbits/Sec
	
% Packet Loss:
	High: $stats{'drop'}{'high'}{'val'}% | $stats{'drop'}{'high'}{'date'}
	Low: $stats{'drop'}{'low'}{'val'}% | $stats{'drop'}{'low'}{'date'}
	Avg: $drops%

Additional Info:
	Avg Pkt Size: $size bytes
	Avg Syns/Sec: $syns
	Avg SynAcks/Sec: $synacks
	Avg Alerts/Sec: $alerts
	Avg Current Cached Sessions: $current_sessions
__EOT

__END__
