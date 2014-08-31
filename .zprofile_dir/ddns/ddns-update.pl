#!/usr/bin/perl

$CURRENT_IP_FILE = "/home/hideyuki/.zprofile_dir/ddns/current_ip";

$LOG_FILE1       = "/home/hideyuki/.zprofile_dir/ddns/ip_update.log";
$LOG_FILE2       = "/home/hideyuki/.zprofile_dir/ddns/nslookup_ip";

$REMOTE_ADDR_CHK = "http://ieserver.net/ipcheck.shtml";

$DDNS_UPDATE     = "http://ieserver.net/cgi-bin/dip.cgi";

$ACCOUNT         = "hmiyahara512";
$DOMAIN          = "dip.jp";
$PASSWORD        = "hide1yuki2";

if(!open(FILE,"$CURRENT_IP_FILE")) {
	$CURRENT_IP = '0.0.0.0';
} else {
	$CURRENT_IP = <FILE>;
	close FILE;
}

$NEW_IP = '0.0.0.0';
$NEW_IP = `wget -q -O - $REMOTE_ADDR_CHK`;
$RES_IP = `nslookup $ACCOUNT.$DOMAIN`;

#if ($NEW_IP ne "0.0.0.0" and $CURRENT_IP ne $NEW_IP) {
if ($NEW_IP ne "0.0.0.0") { 

	$STATUS = `wget -q -O - '$DDNS_UPDATE?username=$ACCOUNT&domain=$DOMAIN&password=$PASSWORD&updatehost=1'`;

	if ($STATUS =~ m/$NEW_IP/) {
		open (FILE ,">$CURRENT_IP_FILE");
		print FILE $NEW_IP;
		close FILE;
		$TIME = localtime;
		open (FILE ,">>$LOG_FILE1");
		print FILE "$TIME $ACCOUNT.$DOMAIN Updated $CURRENT_IP to $NEW_IP\n";
		close FILE;
		open (FILE ,">$LOG_FILE2");
		print FILE "$RES_IP";
		close FILE;
	} else {
		$TIME = localtime;
		open (FILE ,">$LOG_FILE1");
		print FILE "$TIME $ACCOUNT.$DOMAIN Update aborted $CURRENT_IP to $NEW_IP\n";
		close FILE;
		open (FILE ,">$LOG_FILE2");
		print FILE "$RES_IP";
		close FILE;
	}
}
exit;
