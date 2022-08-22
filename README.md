<h1> Dwitter </h1>

<h2>Inspiration🌠</h2>

Since the uprise of web3 community, there has been a motivation to convert web2 apps to web3 apps. To cater the same feel and vibes of web2 twitter, we built dwitter, twitter for web3. To widen the horizons of web3, we can introduce new features in web2 applications. Doing so would help the general public to get familiar with the new way of the internet. With this project, we aim to smoothen that transition for Twitter users!

<h2>What it does🚀</h2>

The application introduces the following features to the old-school Twitter: <br>
1. Wallet login<br>
To authenticate themselves, users need to connect their wallets with the application. <br>
2. NFT profile picture <br>
Wallet-owned NFTs can be selected as the profile picture for the account. <br>
2. MATIC tweet <br>
Users can save their tweets on the blockchain. <br>

<h2>How we built it🔨</h2>
<img src =https://img.shields.io/badge/-GITHUB-black>
<img src = https://img.shields.io/badge/-WEB3UIKIT-blueviolet>
<img src= https://img.shields.io/badge/-SOLIDITY-white>
<img src= https://img.shields.io/badge/-REACT-PINK>

The web application was built using React and web3uikit. We made use of solidity for smart contract and moralis database for authentication and for saving user data.The application uses solidity to make a simple smart contract which is deployed on Ploygon's Mumbai Testnet (smart contract is clickable to any other EVM chain as well). React is used for the frontend of the application. On the backend, Moralis is used to interact with the smart contract as well as store user data. Lastly, web3uikit is used to enhance the UI of the application.

<h2>Project Gallery📷</h2>

<h2>Challenges we ran into🔴 </h2>

- The initial problem we faced was the deployment of our first-ever smart contract and minting of the cryptocurrency for testing purposes. <br>
- Another major hurdle was the implementation of authentication with the user's wallet. We figured this out by applying useMoralis().authenticate()  instead of <ConnectButton/> component from web3uikit. <br>


<h2>Accomplishments that we're proud of🎖</h2>

Working on web3 project for the first time.

<h2>What we learned📚</h2>

<h2>What's next for Dwitter🎉</h2>
Inspired by the cryptoArt moment, an additional gallery feature will be provided to users to showcase as well as sell their NFTs.
