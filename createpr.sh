# sudo ln -s /path/to/your/script.sh /usr/local/bin/scriptname
# test slack channel C071EUWLFD4
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

echo $reviewer

if [ -z "$reviewer" ]; then
	echo "no reviewer given"
	exit 0
fi

read -p "jira link: " jira_link
current_location=$(basename $(pwd))

if [[ $current_location = "config-repo-prod-encore" ]]; then
	base_branch="master"
elif [[ $current_location = "sportybet-common-tools" ]]; then
	base_branch="master-encore"
else
	base_branch="pre-release-encore"
fi

slack_channel="C05H33H7B8F"

branch="$(git rev-parse --abbrev-ref HEAD)"

pr_res=$(
	gh pr create \
		--base $base_branch \
		--title $branch --body $jira_link
)

if [[ $pr_res = "" ]]; then
	echo "PR not created"
	exit 1
fi

curl -X POST -H 'Content-type: application/json' -H '' \
	--data '{"channel": "'$slack_channel'",
      "text": "Hi '$reviewer' Please help to review this pr
pr: '$pr_res',
ticket: '$jira_link'
cc '$MY_SLACK'" }' \
	--location https://slack.com/api/chat.postMessage
