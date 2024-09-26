#!/bin/sh
# mavpay command reference

rm -rf content/injected/tezpay/cmd/*
mkdir -p content/injected/tezpay/cmd/
export CWD=$PWD
cd projects/mavpay/docs/cmd || exit 1
for f in *.md; do
	echo "Processing $f file...";
	(echo "---";
	echo "title: $(printf "%s" "$f" | cut -d. -f1)";
	echo "weight: 3";
	echo "type: docs";
	echo "---") | \
	cat - "$f" > "$CWD/content/injected/tezpay/cmd/$f"
done
cd "$CWD" || exit 1

# mavpay configuration samples
rm -rf content/injected/tezpay/configuration/*
mkdir -p content/injected/tezpay/configuration/
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
	cat - "$f" > "$CWD/content/injected/tezpay/configuration/$(printf $f | cut -d. -f2).md"
	(echo ''; echo '```') >> "$CWD/content/injected/tezpay/configuration/$(printf $f | cut -d. -f2).md"
done
cd "$CWD" || exit 1

# mavpay extensions samples
rm -rf content/injected/tezpay/extensions/*
mkdir -p content/injected/tezpay/extensions/
cd projects/mavpay/docs/extensions || exit 1
for f in *.md; do
	echo "Processing $f file...";
	(echo "---";
	echo "title: $(printf "%s" "$f" | cut -d. -f1)";
	echo "weight: 3";
	echo "type: docs";
	echo "---") | \
	cat - "$f" > "$CWD/content/injected/tezpay/extensions/$f"
done
cd "$CWD" || exit 1

# mavbake command reference

rm -rf content/injected/tezbake/cmd/*
mkdir -p content/injected/tezbake/cmd/
cd projects/mavbake/docs/cmd || exit 1
for f in *.md; do
	echo "Processing $f file...";
	(echo "---";
	echo "title: $(printf "%s" "$f" | cut -d. -f1)";
	echo "weight: 3";
	echo "type: docs";
	echo "---") | \
	cat - "$f" > "$CWD/content/injected/tezbake/cmd/$f"
done
cd "$CWD" || exit 1