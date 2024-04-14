set -e

echo "------------------------"
echo "$(nex _config)"
echo "------------------------"

echo
eval "$(nex _config)"
echo "config eval passed"
echo