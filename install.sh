dir=${1:-game-player-workspace}
echo "installing to $dir..."
mkdir -p $dir
cd $dir
git init
git submodule add git@github.com:BrightSDKGamePlayer/Generator.git game-player/generator
git submodule add git@github.com:BrightSDKGamePlayer/Util-apps-generator-gulp.git util/apps-generator-gulp
git submodule add git@github.com:BrightSDKGamePlayer/Util-app-image-processor.git util/app-image-processor
git submodule add git@github.com:BrightSDKGamePlayer/Util-exec.git util/exec
git submodule add git@github.com:BrightSDKGamePlayer/Util-logger.git util/logger
git submodule add git@github.com:vladislavs-luminati/bright-sdk-integration.git util/bright-sdk-integration
cd game-player/generator && git submodule init && git submodule update && cd -
cd util && ls -d */ | xargs -I {} npm install {} && cd -
cd game-player/generator && npm install && npm run install-local && cd -