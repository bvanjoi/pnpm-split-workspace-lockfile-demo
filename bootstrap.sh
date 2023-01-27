# git submodule
git submodule update --init
echo -------
git submodule status
echo -------

# pnpm update
cd pnpm && pnpm i && pnpm compile-only

cd - 
# touch 
echo "shared-workspace-lockfile=false\nstore-dir=.pnpm-store" > .npmrc

# install
node ./pnpm/pnpm/bin/pnpm.cjs install