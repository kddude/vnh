for i in {200..210}; do echo -en "\e[38;5;${i}m### \e[0m"; done; echo -e "\n";
for i in {211..221}; do echo -en "\e[38;5;${i}m### \e[0m"; done; echo -e "\n";
echo -e "\e[38;5;222mWelcome to VNH. \e[0m"
valid=0
while [ $valid -lt 1 ]
do
        read -p 'Fix time bug? (y/n):... ' choice
        case "$choice" in
        y|Y ) sudo service ntpd stop; sudo ntpdate -v time.nist.gov; sudo service ntpd start; echo -e "\e[38;5;222mFixed! Hopefully. "; valid=1;;
        n|N ) valid=1;;
        esac
done
valid=0
nav=0
while [ $valid -lt 1 ]
do
        read -p 'Go to a specific creature? (y/n):... ' choice
        case "$choice" in
        y|Y ) nav=1; echo -e "\e[38;5;222m"; valid=1;;
        n|N ) echo -e "\e[38;5;218m"; valid=1;;
        esac
done
valid=0
while [ $nav -ge 1 ]
do
read -p 'Which folder (or none)? (srv/status/tt/site/no):... ' choice
        case "$choice" in
          srv|SRV ) echo "Going to the /srv/ folder..."; cd /srv; nav=0;;
          status|STATUS ) echo "Going to angularjs-myresearch-status creature folder...";cd /srv/angularjs-myresearch-status; nav=0;;
          tt|TT ) echo "Going to angularjs-myresearch-training-transcript...";cd /srv/angularjs-myresearch-training-transcript; nav=0;;
          site|SITE ) echo "Going to site-myresearch...";cd /srv/site-myresearch; nav=0;;
          no|NO ) nav=0;;
        esac

        if [ $nav -lt 1 ]; then
                echo ""
                echo -e "\e[38;5;10mVNH\$: \e[0mpwd";
                echo -en "\e[0m"; pwd
                echo ""
        fi
done
echo -e "\e[38;5;222mThanks for using! Bye!"
echo -e "\e[0m"
sudo su;
