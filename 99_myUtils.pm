##############################################
# $Id: myUtilsTemplate.pm 7570 2015-01-14 18:31:44Z rudolfkoenig $
#
# Save this file as 99_myUtils.pm, and create your own functions in the new
# file. They are then available in every Perl expression.

package main;

use strict;
use warnings;
use POSIX;

sub
myUtils_Initialize($$)
{
  my ($hash) = @_;
}

# Enter you functions below _this_ line.

sub
setLock($){

  my ($SETTING) = @_;

  my $Status = "ERROR";
  if($SETTING eq "LOCK") {
        $Status = qx('/opt/fhem/script/SmartlockLock.sh')
      }elsif($SETTING eq "UNLOCK"){
        $Status = qx('/opt/fhem/script/SmartlockUnlock.sh')
      }elsif($SETTING eq "OPEN"){
        $Status = qx('/opt/fhem/script/SmartlockOpen.sh')
      }
select(undef, undef, undef, 5);
  if($Status eq "") {
    if($SETTING eq "LOCK") {
        $Status = qx('/opt/fhem/script/SmartlockLock.sh')
      }elsif($SETTING eq "UNLOCK"){
        $Status = qx('/opt/fhem/script/SmartlockUnlock.sh')
      }elsif($SETTING eq "OPEN"){
        $Status = qx('/opt/fhem/script/SmartlockOpen.sh')
      }
     }
  return $Status
}