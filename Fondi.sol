pragma solidity >=0.4.22 <0.6.0;

contract Fondi {
    
    struct Firma {
        string nome;
        address indirizzo;
    }
    
    Firma[] public firme;
    mapping(address => bool) indirizzo_precedentemente_usato;

    function scriviFirma(string memory _nome) public {
        require(indirizzo_precedentemente_usato[msg.sender] == false);
        firme.push(Firma(_nome, msg.sender));
        indirizzo_precedentemente_usato[msg.sender] = true;
    }
    
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
    
    function riscuotiFondi() external {
        require(indirizzo_precedentemente_usato[msg.sender] == true);
        require(firme.length >= 3);
        msg.sender.transfer(address(this).balance);
    }
    
    function () external payable {}  
}
