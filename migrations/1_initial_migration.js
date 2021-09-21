const Migrations = artifacts.require("Hermes");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
};
