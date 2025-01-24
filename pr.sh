# sudo ln -s /path/to/your/script.sh /usr/local/bin/scriptname
# test slack channel C071EUWLFD4
read -p "jira link: " jira_link
current_location=$(basename $(pwd))

if [[ $current_location = "config-repo-prod-encore" ]]; then
	base_branch="master"
elif [[ $current_location = "sportybet-common-tools" ]]; then
	base_branch="master-encore"
else
	base_branch="pre-release-encore"
fi

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

echo $pr_res | pbcopy
