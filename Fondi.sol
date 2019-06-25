pragma solidity >=0.4.22 <0.6.0;

contract Fondi { // Nome del contratto
    
    // Definiamo una firma attraverso un nome e un indirizzo
    struct Firma {
        string nome;
        address indirizzo;
    }
    
    // Vettore per contenere le firme
    Firma[] public firme;
    
    // Indica se un indirizzo è già stato utilizzato per firmare
    mapping(address => bool) indirizzo_precedentemente_usato;

    // Consente di firmare il contratto
    function scriviFirma(string memory _nome) public {
        // L'indirizzo non deve essere già stato utilizzato per firmare il contratto
        require(indirizzo_precedentemente_usato[msg.sender] == false);
        firme.push(Firma(_nome, msg.sender));
        indirizzo_precedentemente_usato[msg.sender] = true;
    }
    
    // Visualizza le firme (i nomi) presenti nel contratto
    function vediFirme() public view returns (string memory) {
        string memory firme_concatenate = "";
        for (uint i = 0; i < firme.length; i++) {
            if (i == 0) {
                firme_concatenate = firme[0].nome;
            } else {
                firme_concatenate = string(abi.encodePacked(firme_concatenate, ", ", firme[i].nome));
            }
        }
        return firme_concatenate;
    }
    
    // Consente di riscuotere i fondi presenti nel contratto
    function riscuotiFondi() external {
        // Indirizzo che riscuote deve essere incluso fra quelli di persone che hanno firmato il contratto
        require(indirizzo_precedentemente_usato[msg.sender] == true);
        // Almeno 3 indirizzi devono aver firmato il contratto
        require(firme.length >= 3);
        msg.sender.transfer(address(this).balance);
    }
    
    // Consente di depositare dei fondi nel contratto
    function () external payable {}  
}
