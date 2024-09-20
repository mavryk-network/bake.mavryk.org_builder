#!/bin/sh
# mavpay command reference

rm -rf content/injected/mavpay/cmd/*
mkdir -p content/injected/mavpay/cmd/
export CWD=$PWD
cd projects/mavpay/docs/cmd || exit 1
for f in *.md; do
	echo "Processing $f file...";
	(echo "---";
	echo "title: $(printf "%s" "$f" | cut -d. -f1)";
	echo "weight: 3";
	echo "type: docs";
	echo "---") | \
	cat - "$f" > "$CWD/content/injected/mavpay/cmd/$f"
done
cd "$CWD" || exit 1

# mavpay configuration samples
rm -rf content/injected/mavpay/configuration/*
mkdir -p content/injected/mavpay/configuration/
cd projects/mavpay/docs/configuration || exit 1
for f in config.*.hjson; do
	echo "Processing $f file...";
	(echo "---";
	echo "title: $(printf $f | cut -d. -f2)";
	echo "weight: 3";
	echo "type: docs";
	echo "summary: mavpay $(printf $f | cut -d. -f2) configuration";
	echo "---";
	echo '```yaml') | \
	cat - "$f" > "$CWD/content/injected/mavpay/configuration/$(printf $f | cut -d. -f2).md"
	(echo ''; echo '```') >> "$CWD/content/injected/mavpay/configuration/$(printf $f | cut -d. -f2).md"
done
cd "$CWD" || exit 1

# mavpay extensions samples
rm -rf content/injected/mavpay/extensions/*
mkdir -p content/injected/mavpay/extensions/
cd projects/mavpay/docs/extensions || exit 1
for f in *.md; do
	echo "Processing $f file...";
	(echo "---";
	echo "title: $(printf "%s" "$f" | cut -d. -f1)";
	echo "weight: 3";
	echo "type: docs";
	echo "---") | \
	cat - "$f" > "$CWD/content/injected/mavpay/extensions/$f"
done
cd "$CWD" || exit 1

# mavbake command reference

rm -rf content/injected/mavbake/cmd/*
mkdir -p content/injected/mavbake/cmd/
cd projects/mavbake/docs/cmd || exit 1
for f in *.md; do
	echo "Processing $f file...";
	(echo "---";
	echo "title: $(printf "%s" "$f" | cut -d. -f1)";
	echo "weight: 3";
	echo "type: docs";
	echo "---") | \
	cat - "$f" > "$CWD/content/injected/mavbake/cmd/$f"
done
cd "$CWD" || exit 1