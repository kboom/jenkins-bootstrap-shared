curl -L http://updates.jenkins-ci.org/update-center.json | awk '$1 ~ /^{/' | \
  python -c '
import sys,json
j=json.load(sys.stdin)
for key in j["plugins"]:
    print j["plugins"][key]["gav"]
'
