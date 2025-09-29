dir=${1:-game-player-workspace}
echo "Installing to $dir..."
rm -rf $dir
mkdir -p $dir
cd $dir
git init
git submodule add git@github.com:BrightSDKGamePlayer/Generator.git game-player/apps
git submodule add git@github.com:BrightSDKGamePlayer/Util-apps-generator-gulp.git util/apps-generator-gulp
git submodule add git@github.com:BrightSDKGamePlayer/WebClient client
git submodule update --init --recursive
cd game-player/apps && git submodule init && git submodule update && npm install && cd -
cd util && ls -d */ | xargs -I {} npm install {} && cd -
