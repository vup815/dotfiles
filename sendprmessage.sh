# sudo ln -s /path/to/your/script.sh /usr/local/bin/scriptname
# test slack channel C071EUWLFD4
slack_channel="C05H33H7B8F"
prompt_message=$(
	cat <<EOF
Enter reviewer :
- 1. John
- 2. William
- 3. Joe
- 4. Eason
EOF
)
read -p "$prompt_message
reviewer: " number

reviewer=''
for ((i = 0; i < ${#number}; i++)); do
	num=${number:$i:1}
	if [[ $num -eq 1 ]]; then
		reviewer="<@U05H76DU8N5>"$reviewer
	elif [[ $num -eq 2 ]]; then
		reviewer="<@U05GUQWEDA6>"$reviewer
	elif [[ $num -eq 3 ]]; then
		reviewer="<@U06TL0MN7MM>"$reviewer
	elif [[ $num -eq 4 ]]; then
		reviewer="<@U07UL8FEJ7P>"$reviewer
	fi
done

if [ -z "$reviewer" ]; then
	echo "no reviewer given"
	exit 0
fi

read -p "jira link: " jira_link
read -p "pr:" pr_res

curl -X POST -H 'Content-type: application/json' -H '' \
	--data '{"channel": "'$slack_channel'",
      "text": "Hi '$reviewer' Please help to review this pr
pr: '$pr_res',
ticket: '$jira_link'
cc '$MY_SLACK'" }' \
	--location https://slack.com/api/chat.postMessage
