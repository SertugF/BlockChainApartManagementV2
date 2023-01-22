// https://eth-goerli.g.alchemy.com/v2/n8mqMcTUAC4LtB-VgOmDgS4xXDXqiDOe https for goerli

require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    goerli: {
      url: "https://eth-goerli.g.alchemy.com/v2/n8mqMcTUAC4LtB-VgOmDgS4xXDXqiDOe",
      accounts: [
        "7a73b9967de37935552edb6bacf7e71966ac4bcb280df733a0802bf29894712e",
      ],
    },
  },
};
