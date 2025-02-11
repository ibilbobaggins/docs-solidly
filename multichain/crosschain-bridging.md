---
layout: default
title: Crosschain Bridging
parent: MULTICHAIN
nav_order: 5
---

# Crosschain Bridging

Crosschain bridging enables the transfer of veSOLID NFTs between Ethereum and various childchains, allowing users to access rewards across multiple networks.

## How It Works

- **Bridging Process**: When you initiate a bridge, your veSOLID NFT is transferred from Ethereum to a childchain (or vice versa). In the process, the NFT on Ethereum is burned and replaced by a corresponding representation on the destination network. In some cases, the NFT may be split across multiple childchains.
- **Wallet Consistency**: Ensure that the wallet address used for bridging is the same as the one that originally received the veSOLID NFT. Although it is possible to bridge to a different wallet, the NFT will ultimately be associated with the initial wallet.
- **Timeframe**: The bridging process typically takes **20–30 minutes** to complete.
- **Interface Tabs**:
  - **Reconfigure**: Use this tab when you want to bridge your veSOLID NFT to additional childchains or reconfigure its distribution.
  - **Claim**: Use this tab if you want to have your veSOLID NFT appear on Ethereum, which occurs after consolidating all parts from any childchains.

## Detailed Process Explanation

When bridging, the process differs depending on the direction of the transfer:

- **Bridging from Ethereum to a Childchain (e.g., Sonic):**
  - Your veSOLID NFT on Ethereum is burned as part of the bridging process.
  - A corresponding NFT (or NFT part) is minted on the destination childchain.
  - **Important Note on Sonic**: If you send your veSOLID NFT to Sonic from Ethereum, there is no need to manually claim it on Sonic. Even though the NFT is sent to a burn address on Ethereum, it will automatically appear on Sonic’s vote and bridge pages within about 20 minutes.

- **Bridging from a Childchain Back to Ethereum:**
  - When bridging back, you must ensure that all NFT parts split across various childchains are consolidated.
  - Once every part has been successfully bridged back (or “burned” on the childchain), the complete NFT becomes available on Ethereum.
  - The NFT will appear on Ethereum in the **Claim** tab after consolidation; if you intend to further adjust its distribution, you may also use the **Reconfigure** tab.

<!-- [FLOWCHART PLACEHOLDER] -->

## Important Considerations

- **Multiple Childchain Parts**: If your veSOLID NFT is divided among several childchains, it will only appear on Ethereum once all parts have been bridged back.
- **No Manual Claiming on Childchains**: As highlighted in recent discussions, if you have bridged your NFT from Ethereum to a childchain like Sonic, the NFT will automatically appear on the designated pages. Manual claiming on the childchain is not necessary.

## Step-by-Step Bridging Guide

1. **Verify Ownership and Wallet Consistency**  
   - Confirm that your veSOLID NFT is present on the source network (either Ethereum or a designated childchain).  
   - Ensure that you are using the same wallet that originally received the NFT. Although it is possible to bridge to a different wallet, the NFT will ultimately be associated with the initial wallet used during the bridging process.

2. **Initiate the Bridge Process**  
   - Use the Solidly interface to start the bridging process. Input the correct destination address as required.  
   - If bridging from Ethereum to a childchain (e.g., Sonic) or vice versa, carefully verify that you are selecting the intended network for the transfer.

3. **Processing Time**  
   - The bridging process typically takes **20–30 minutes** to complete.  
   - During this period, avoid initiating additional bridge transactions to prevent any confusion or processing errors.

4. **Confirmation and Interface Check**  
   - Once the bridging process is complete, check the appropriate interface for your NFT:
     - **Childchain Destination**: Verify that the veSOLID NFT appears on the destination network (for example, on Sonic).
     - **Ethereum Return**: If you are bridging back to Ethereum, note that the NFT will only appear once all parts from any childchains have been successfully consolidated.
   - The NFT will show up in the **Reconfigure** tab if you intend to bridge it further to additional childchains, or in the **Claim** tab if you plan to use it on Ethereum.

5. **Handling Multiple NFT Parts**  
   - In some cases, the veSOLID NFT may be split across multiple childchains.  
   - Ensure that every part is bridged back to Ethereum. The complete NFT will only be visible once all portions have been consolidated.

## Troubleshooting Common Issues

- **Delayed Appearance**:  
  - If the veSOLID NFT does not appear after the expected **20–30 minutes**, ensure that:
    - You initiated the bridge from the same wallet that originally received the NFT.
    - All parts of the NFT from the different childchains have been successfully bridged back.
    - You have checked both the **Reconfigure** and **Claim** tabs for the NFT's status.
- **Verification**:  
  - For issues such as an NFT not appearing on a childchain (e.g., Sonic), confirm your transaction details. In previous discussions, any NFT sent from Ethereum to a childchain is processed automatically without a need for a manual claim.


