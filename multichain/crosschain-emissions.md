---
layout: default
title: Crosschain Emissions
parent: MULTICHAIN
nav_order: 3
---

# Crosschain Emissions

Solidly’s reward system is built on the ve(3,3) model—a framework that uses vote-escrowed tokens (veSOLID) to align long-term commitment and cooperative behavior. In this system, newly minted SOLID tokens (emissions) are distributed on the base chain and then extended across multiple chains via bridging. This unified approach ensures that rewards follow the same incentive structure across the entire ecosystem.

---

## How It Works

### 1. Token Locking and ve(3,3) Fundamentals

- **Locking for Commitment:**  
  Users lock SOLID tokens on the base chain to receive veSOLID tokens. These veSOLID tokens grant governance rights and determine your share of future rewards.

- **Incentive Alignment:**  
  The longer and the more SOLID you lock, the higher your veSOLID balance becomes. This aligns with the “3,3” game–theory principle: if everyone commits, all participants earn more.

### 2. Emission Mechanics on the Base Chain

- **Scheduled Minting:**  
  New SOLID tokens are minted on a fixed schedule based on the total value locked and individual veSOLID balances.

- **Reward Allocation:**  
  On the base chain, emissions are distributed proportionally to liquidity providers and veSOLID holders. Only liquidity positions that cover the full price range are eligible to receive these emissions and any associated LP bribes.

### 3. Extending Emissions Across Chains

- **Bridging Rewards:**  
  A portion of the minted tokens is transferred from the base chain to other supported chains using crosschain bridges or messaging protocols.

- **Synchronized Distribution:**  
  On each target chain, smart contracts apply the same (or analogous) ve(3,3) logic to distribute the bridged rewards, ensuring consistent incentive mechanics regardless of the chain.

---

## Step-by-Step Guide to Accessing Your Crosschain Emissions

Follow these steps to lock SOLID, monitor your emissions, and bridge your rewards if desired:

1. **Lock SOLID Tokens on the Base Chain:**
   - Visit the vesting page (e.g., [https://solidly.com/vest/create](https://solidly.com/vest/create)).
   - Lock your SOLID tokens for the desired duration to receive veSOLID.
   - The longer your tokens are locked, the higher your reward share will be.

2. **Wait for Emission Distribution:**
   - Emissions are minted on a set schedule. Refer to the [Emission Schedule](../usdsolid-token/emission-schedule.md) for details.
   - Your allocated rewards will appear in your account based on your veSOLID balance.

3. **Check Your Reward Balance on the Base Chain:**
   - Navigate to the rewards interface on Solidly’s website.
   - Verify that your accrued emissions are reflected in your rewards balance.

4. **Bridge Your Rewards to Another Chain (Optional):**
   - If you wish to access your rewards on a different chain, use the crosschain bridge functionality.
     - **Initiate the Bridge:** Access the bridge interface provided by Solidly or a supported third-party service.
     - **Select the Target Chain:** Choose the destination chain where you want your rewards.
     - **Confirm the Transaction:** Complete the bridge process. Note that bridging may take 20–30 minutes.
     - **Verify Receipt:** Once complete, check the rewards or claim interface on the target chain to ensure your emissions have arrived.

5. **Troubleshooting:**
   - If rewards or bridged tokens do not appear immediately, try refreshing your browser or clearing your cache.
   - Ensure you are using the same wallet address on all chains.
   - For persistent issues, refer to the official FAQs or contact support.

---

## Additional Information

- **Full Range Positions Only:**  
  Only liquidity positions covering the full price range qualify for emissions and LP bribes. Positions created via direct contract interactions outside the full range will not receive these rewards.

- **Manual Intervention:**  
  On rare occasions, manual intervention may be required to address bridging or distribution issues. Stay updated via official protocol announcements for any necessary actions.

---

## Conclusion

Crosschain emissions extend the benefits of Solidly’s ve(3,3) model across multiple blockchain networks. By locking SOLID tokens to receive veSOLID, you earn a proportional share of newly minted rewards. These rewards can be accessed on the base chain and, if desired, bridged to other chains to take advantage of diverse network benefits—all while maintaining a consistent, incentive-aligned ecosystem.

For further details on the overall reward mechanism, please refer to the [Rewards Distributor](../v3/rewards-distributor.md) documentation.
