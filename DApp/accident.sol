pragma solidity ^0.4.18;
contract VANET {
    struct Accident {
        string name;
        string owner;
        string number;
        string license;
        string location;
    }

    Accident[] private accidents;

    function setAccident(string memory _name, string memory _owner, string memory _number, string memory _license, string memory _location) public{
        
        accidents.push(Accident(_name, _owner, _number, _license, _location));
    }

    function getAccident(string memory _number) public constant returns (string, string, string, string, string){
        for(uint i = 0; i < accidents.length; i++){
            if(keccak256(bytes(accidents[i].number)) == keccak256(bytes(_number))){
                return (accidents[i].name, accidents[i].owner, accidents[i].number, accidents[i].license, accidents[i].location);
            }
        }
        
    }
    
}
