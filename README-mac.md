First off you need Apple's Xcode (at least version 7, preferably 8.x) and the Xcode Command Line Tools:

https://itunes.apple.com/us/app/xcode/id497799835?mt=12

And Homebrew:

http://brew.sh/

And this is the list of brew packages you'll need installed:

```shell
brew tap discoteq/discoteq; brew install flock
brew install autoconf autogen automake
brew tap homebrew/versions; brew install homebrew/versions/gcc5
brew install binutils
brew install protobuf
brew install coreutils
brew install wget
```

Get all that installed, then run:

```shell
git clone https://github.com/jl777/komodo.git --branch darwin --single-branch
cd komodo
./zcutil/build-mac.sh
./zcutil/fetch-params.sh
```
After building and fetching the ZcashParams launch komodod from the src directory. It will abort and complain about missing komodo.conf inside ~/Library/Application Support/Komodo. Create komodo.conf in the Komodo folder and add the necessary values:

```shell
rpcuser=yourRpcUserName
rpcpassword=yourRpcPassword
rpcallowip=127.0.0.1
listen=1
server=1
```

Komodod will now sync the chain when you start it again.
If you get stuck or just need some assistance contact us in the supernet slack and ping ca333.


Happy Building
