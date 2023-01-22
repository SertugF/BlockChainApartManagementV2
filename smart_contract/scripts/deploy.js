const main = async () => {
  const Transactions = await hre.ethers.getContractFactory("Transactions"); // Transactions is the name of the contract, creates a new contract factory
  const transactions = await Transactions.deploy(); // deploys the contract.(only one)

  await transactions.deployed();

  console.log(`Transactions deployed to: ${transactions.address}`);
};

const runMain = async () => {
  try {
    await main();
    process.exit(0);
  } catch (error) {
    console.error(error);
    process.exit(1);
  }
};

runMain();
