const GestionProduit = artifacts.require("GestionProduit");


module.exports = function(deployer) {
  deployer.deploy(GestionProduit);
};
