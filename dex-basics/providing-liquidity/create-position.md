---
description: This manual will provide basics regarding adding liquidity to certain pool
---

# Providing Liquidity on Solidly V3 DEX: A Step-by-Step Guide

## Introduction
Providing liquidity on Solidly DEX allows users to earn a share of swap fees and potential emissions from voting. This guide will walk you through the process of adding liquidity (LP) efficiently.

## Step 1: Finding and Managing a Pool

1. Navigate to the **Liquidity Pools List** on Solidly DEX.
2. Select the pool you wish to provide liquidity for.
3. Click **"Manage"** to enter the liquidity provision interface.

<div align="center">
<figure>
    <img src="../../.gitbook/assets/image (3).png" alt=""><figcaption><p>Liquidity pools list</p></figcaption>
</figure>
</div>

## Step 2: Understanding the Position Deposit Page

### Key Features

* **Pool details button** [1] – Displays pool information.
* **Whitelisted/Blacklisted Icon** [2] – Indicates if veNFT owners can vote on the pool to earn emissions.
* **Position Picker** [3] – If you have multiple positions in the same pool, select the one to manage.
* **Token Balances** [4,5] – Displays available balances for both tokens (e.g., wS & WETH).
* **Deposit Slippage** [6] – Acceptable pool price fluctuation (e.g., 0.025%).
* **Price Indicator Switch** [7] – Toggle between price ratios (not yet implemented).
* **Pool Tick Spacing** [8] – Defines the lowest tick range that can be set.
* **Custom Range Selector** [9] – Switch between predefined and custom ranges.
* **Predefined Ranges** [10] – Choose from narrow, balanced, wide and full predefined ranges.
Narrow range - higher risk but potential for greater returns. Full range - lowest risk of impermanent loss.
* **Estimated Position APR** [11] – Projected earnings based on price range.
* **Current Price Range** [12] – Displays lower and upper limits.
* **Add Liquidity Button** [13] – Activated when valid deposit amounts are provided.

<div align="center">
<figure>
    <img src="../../.gitbook/assets/image (4).png" alt=""><figcaption><p>Position deposit page</p></figcaption>
</figure>
</div>

## Step 3: Custom Liquidity Ranges

* Check **Current Pool Price** and corresponding **Tick** [1,3].
* Use the *Custom Liquidity Range Editor* to set a personalized range using **Ticks or Price** [2].
* Define the **Lower and Upper Bound** values [4,5] or pick a **Percentage Range** [6].
* Review the **Estimated APR** [7] for selected range.

<div align="center">
<figure>
    <img src="../../.gitbook/assets/image (6).png" alt=""><figcaption><p>Custom liquidity range editor</p></figcaption>
</figure>
</div>

### Manual Asset Amounts Calculator

* **Connected Wallet Balance** [1,3] – Displays available token amounts.
* **Dollar Value Display** [2,4] – Shows USD equivalent of tokens.
* **Deposit amounts** [5,6] – Token amounts to deposit.
* **Copy Wallet Balance** [1,3] – Auto-fill available amounts on balance click.
* **Dollar Value Display** – Shows USD equivalent of tokens.
* **Deposit MAX** [8] – Allocate maximum deposit from wallet balance.
* **Manual vs Advanced Mode** [9] – Adjust token amounts manually or use auto-calculated pairings.

<div align="center">
<figure>
    <img src="../../.gitbook/assets/image (8).png" alt=""><figcaption><p>Manual calculator</p></figcaption>
</figure>
</div>

#### Hint
If you modify the amounts in manual mode the application will automatically calculate
corresponding amount of the other token that will meet deposit conditions.
It will not take into account your wallet balance etc.
Use it if you would like to check how much of e.g. wS you need to deposit to pair with 1 WETH in tick range A,B.


### Advanced Asset Amounts Calculator


* **Wallet MAX Button** [1] – Inputs total wallet balance.
* **Dollar Value Input** [2] – Enter desired deposit value in dollars.
* **Deposit Ratio** [9] – Displays how much of the selected deposit can be executed instantly.
* **Deposit Amounts** [6,7] – Token amounts to deposit.
* **Aggregator Selector** [5] – Choose a swap aggregator for optimal asset conversion.
* **Swap Estimations** [3,4] – Suggests amounts to swap to meet deposit conditions.
* **Copy Swap Estimation** [8] – Copies swap estimation to the clipboard.

<div align="center">
<figure>
    <img src="../../.gitbook/assets/image (10).png" alt=""><figcaption></figcaption>
</figure>
</div>

## Step 4: Depositing Liquidity

* **Choose a suitable price range**.
* **Click Wallet MAX** to allocate full available balance.
* **Use the Aggregator Selector** to swap assets if needed.
* **Wait for balance updates** after the swap.
* **Click Wallet MAX again** to finalize adjusted deposit values.
* **Click "Add Liquidity"** to complete the process.

## Conclusion
Providing liquidity on Solidly DEX is an effective way to earn passive income while contributing to the ecosystem.
By carefully selecting your price range and managing token ratios, you can optimize returns and mitigate risks.
