---
description: This manual will provide basics  regarding adding liquidity to certain pool
---

# Create position

Find the pool you like and click "Manage":\


<figure><img src="../../.gitbook/assets/image (3).png" alt=""><figcaption><p>Liquidity pools list</p></figcaption></figure>

### Predefined liquidity ranges:

<div align="center"><figure><img src="../../.gitbook/assets/image (4).png" alt=""><figcaption><p>Position deposit page</p></figcaption></figure></div>



1. Show details button
2. Whitelisted/Blacklisted icon - if pool is whitelisted (veNFT owners can vote on this pool, and pool can earn emissions)
3. Position picker (If owner has multiple positions for the same pool he pick to manage certain position here)
4. Balance of token 0 in users wallet (in above example wS)
5. Balance of token 1 in users wallet (in above example WETH)
6. Deposit slippage, acceptable pool price change between the price used to calculate deposit amounts and the price during transaction execution. In current case user accepts the 0.025% price change.
7. Price indicator switch - either show wS/WETH price or WETH/wS price (NOT implemented yet)
8. Pool tick spacing - the lowest possible tick range unit (user can only set range to a values that are divisbile by pool tick spacing)
9. Change from predefined ranges to custom range
10. Predefined ranges. Narrow - very high risk of impermament loss, full range - lowest risk of impermament loss
11. Estimated position apr for each predefined price range
12. Current price range (lower, upper) price.
13. Add liqudity button - enabled when sufficient deposit values are provided.

### Custom liquidity ranges

<figure><img src="../../.gitbook/assets/image (6).png" alt=""><figcaption><p>Custom liquidity range editor</p></figcaption></figure>



1. Current pool price token0/token1
2. tick corresponding to current pool price
3. Toggle price/ticks range selector
4. Lower value of chosen tick/price range
5. Upper value of chosen tick/price range
6. Estimated APR for chosen price range and asset values

### Manual amounts calculator

<figure><img src="../../.gitbook/assets/image (8).png" alt=""><figcaption><p>Manual calculator</p></figcaption></figure>

1. Wallet balance of token 0, click to copy your wallet balance into asset amount
2. Dollar value of chosen deposit amounts of token 0
3. Wallet balance of token 1, click to copy your wallet balance into asset amount
4. Dollar value of chosen deposit amounts of token 1
5. Chosen deposit amounts of token 0
6. Chosen deposit amounts of token 1
7. Total dollar value of chosen deposit
8. Deposit max possible amounts from wallet that meet the amounts ration determined from chosen price/tick range.
9. Toggle between manual and smart mode

If you modify amounts in manual mode the application will automatically calculate corresponding amount of other token that will meet deposit conditions. It will not take into account your wallet balance etc. Use it if you would like to check how much of e.g. wS you need to deposit to pair with 1 WETH in tick range A,B.\


### Advanced asset amounts calculator

<figure><img src="../../.gitbook/assets/image (10).png" alt=""><figcaption></figcaption></figure>

1. Walet MAX - input into asset amounts your wallet balance, use advanced calculator to check how much of one asset to swap to the other asset to deposit
2. Input dollar value of position. Advanced calculator will input the token amounts that total sum will be roughly the chosen dollar deposit value
3. Amount of token 0 to sell into token 1 to fully deposit the total value of chosen assets
4. Amount of token 1 to buy from token 0 to fully deposit the total value of chosen assets
5. Aggregators selector icon. Pick the aggregator you like to perform swap. If you allow the page will copy the sell amount into your clipboard. Aggregator will be opened on corresponding chain and chosen pool tokens prepared for swap.
6. Token 0 chosen deposit amount
7. Token 1 chosen deposit amount
8. Copy chosen deposit amount into clipboard
9. Deposit ratio. How much you can instantly deposit from chosen amounts without swapping tokens.&#x20;

Advanced calculator allows user to input any amount of any token he wants. Then he will provide information of how much of token A swap to token B to deposit those chose amounts.&#x20;

Let's assume user want's to deposit everything he has in his wallet to ws/WETH pool. Deposition steps are as follows:

1. Choose suitable price range for deposit
2. Click Wallet Max
3. Click Aggregator selector to Sell \~22 wS to 0.0036 WETH
4. Go back to solidly page, wait until the wallet balance changes
5. Click wallet MAX again to update deposit amounts to new wallet balance. Usually now the deposit ratio is around 100%.
6. Click add liquidity

