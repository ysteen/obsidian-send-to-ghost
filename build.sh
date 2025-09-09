#! /usr/bin/env bash
tsc -noEmit -skipLibCheck && node esbuild.config.mjs production
if [[ $1 = "dev" ]]; then
	mv -f main.js "./test-obsidian-vault/.obsidian/plugins/send-to-ghost"
fi