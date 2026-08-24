curl -fsSL "https://raw.githubusercontent.com/synle/gha-workflow/HEAD/dev.sh" |
	bash -s -- '*.json *.scss *.jsx *.js' 'npm run start'
