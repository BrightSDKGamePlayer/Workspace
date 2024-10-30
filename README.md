# BrightSDK Template-based Game Application Management Workspace

This repository hosts a Bash script that will create a GamePlayer Workspace on your computer.

## Table of Contents

- [Installation](#installation)
- [Project Structure](#project-structure)
- [Next Steps](#next-steps)
- [Contact](#contact)

## Installation

To install and execute the script, use the following command:

\```sh
curl -sSL https://brightsdkgameplayer.github.io/Workspace/install.sh | bash
\```

Once run, the workspace will be created in the current directory under `game-player-workspace`.

You can also specify a custom name by adding the run argument:

\```sh
curl -sSL https://brightsdkgameplayer.github.io/Workspace/install.sh | bash -s -- my-custom-workspace
\```

## Project Structure

The project structure is organized as follows:

\```
game-player-workspace/
├── game-player/
│   └── generator/
│   └── ... more tools can be introduced later
├── util/
│   ├── apps-generator-gulp/
│   ├── app-image-processor/
│   ├── exec/
│   ├── logger/
│   └── bright-sdk-integration/
│   └── ... more dependencies can be introduced later
└── README.md
\```

- **game-player/generator/**: Contains the generator scripts and configurations.
- **util/**: Contains various utility modules used by the project.

## Next Steps

Follow [Generator Readme](https://github.com/BrightSDKGamePlayer/Generator) to get familiar with
the generator template development process.

## Contact

For any questions or support, please contact [vladislavs@brightdata.com](mailto:vladislavs@brightdata.com)
or search for @vladislavs in [Slack Workspace](https://slack.brightdata.com).

Happy coding!