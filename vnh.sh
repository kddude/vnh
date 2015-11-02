for i in {200..210}; do echo -en "\e[38;5;${i}m### \e[0m"; done; echo -e "\n";
for i in {211..221}; do echo -en "\e[38;5;${i}m### \e[0m"; done; echo -e "\n";
echo -e "\e[38;5;222mWelcome to the Vagrant Navigational Helper (VNH). Navigating this sucks and this will help!"
echo -e "\e[38;5;222mLet's start by fixing the stupid time bug that happens every so often just in case."
echo ""
echo -e "\e[38;5;218m\e[1m(any key to continue)..."
echo -e "\e[0m"
read -n 1 -s
sudo service ntpd stop
sudo ntpdate -v time.nist.gov
sudo service ntpd start
echo ""
echo -e "\e[38;5;222mFixed! Hopefully."
echo -e "\e[38;5;218m"
read -p 'Go to a specific creature/folder? (srv/status/tt/site/no):... ' choice
case "$choice" in
  srv|SRV ) echo "Going to the /srv/ folder..."; cd /srv;;
  status|STATUS ) echo "Going to angularjs-myresearch-status creature folder...";cd /srv/angularjs-myresearch-status;;
  tt|TT ) echo "Going to angularjs-myresearch-training-transcript...";cd /srv/angularjs-myresearch-training-transcript;;
  site|SITE ) echo "Going to site-myresearch...";cd /srv/site-myresearch;;
  no|NO ) ;;
  * ) echo "invalid";;
esac
echo ""
echo -e "\e[38;5;10mVNH\$: \e[0mpwd";
echo -en "\e[0m"; pwd
echo ""
echo -e "\e[38;5;222mThanks for using! Bye!"
echo -e "\e[0m"
sudo su;
