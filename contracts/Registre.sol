// SPDX-License-Identifier: GPL-3.
pragma solidity >=0.4.22 <0.9.0;

contract RegistreContrat {

   struct DetailContrat {
      address proprietaire;
      address contratAdresse;
      uint16 version;
   }

   mapping(string => DetailContrat) registre;

   function enregistrerContrat(string memory nom, address adresse, uint16 version) public  {

      require(version >= 1);

      DetailContrat memory info = registre[nom];

       if (info.contratAdresse == address(0)) {
          info = DetailContrat({
             proprietaire: msg.sender,
             contratAdresse: adresse,
             version: version
          });
       } else {
          require(info.proprietaire == msg.sender);
          info.contratAdresse = adresse;
          info.version = version;
       }
       registre[nom] = info;

   }

    function contratDetails(string memory nom)  public view returns(address, uint16) {
      return (registre[nom].contratAdresse, registre[nom].version);
    }
}
