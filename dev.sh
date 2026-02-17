<<<<<<< HEAD
npm i

# Get last modification time and file size of source files in root folder
get_file_state() {
 stat -f "%m %z" index.less index.jsx *.js 2>/dev/null | sort -r
}

LAST_STATE=$(get_file_state)

while sleep 3; do
 CURRENT_STATE=$(get_file_state)
 if [ "$CURRENT_STATE" != "$LAST_STATE" ]; then
   sh build.sh
   LAST_STATE=$CURRENT_STATE
 fi
done

=======
curl -s -- https://raw.githubusercontent.com/synle/gha-workflow/refs/heads/main/dev.sh | \
bash -s -- '*.json *.scss *.jsx *.js' 'npm run start'
>>>>>>> 3362d55eaa88e3b4a38e4cd95c8fceb188e411f5
