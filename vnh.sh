for i in {200..210}; do echo -en "\e[38;5;${i}m### \e[0m"; done; echo -e "\n";
for i in {211..221}; do echo -en "\e[38;5;${i}m### \e[0m"; done; echo -e "\n";
echo -e "\e[38;5;222mWelcome to VNH."
echo -e "\e[38;5;222m"
valid=0
while [ $valid -lt 1 ]
do
        read -p 'Fix time bug? (y/n):... ' choice
        case "$choice" in
        y|Y ) sudo service ntpd stop; sudo ntpdate -v time.nist.gov; sudo service ntpd start; echo -e "\e[38;5;222mFixed! Hopefully."; valid=1;;
        n|N ) valid=1;;
        esac
done
echo ""
echo -e "\e[38;5;218m"
valid=0
while [ $valid -lt 1 ]
do
read -p 'Go to a specific creature/folder? (srv/status/tt/site/n):... ' choice
        case "$choice" in
          srv|SRV ) echo "Going to the /srv/ folder..."; cd /srv; valid=1;;
          status|STATUS ) echo "Going to angularjs-myresearch-status creature folder...";cd /srv/angularjs-myresearch-status; valid=1;;
          tt|TT ) echo "Going to angularjs-myresearch-training-transcript...";cd /srv/angularjs-myresearch-training-transcript; valid=1;;
          site|SITE ) echo "Going to site-myresearch...";cd /srv/site-myresearch; valid=1;;
          n|N ) valid=1;;
        esac
done
echo ""
echo -e "\e[38;5;10mVNH\$: \e[0mpwd";
echo -en "\e[0m"; pwd
echo ""
echo -e "\e[38;5;222mThanks for using! Bye!"
echo -e "\e[0m"
sudo su;
