pragma solidity ^0.4.18;
contract VANET {
    struct Vehicle {
        string name;
        string owner;
        string number;
        string license;
    }

    Vehicle[] private vehicles;

    function setVehicle(string memory _name, string memory _owner, string memory _number, string memory _license) public{
        
        vehicles.push(Vehicle(_name, _owner, _number, _license));
    }

    function getVehicle(string memory _number) public constant returns (string, string, string, string){
        for(uint i = 0; i < vehicles.length; i++){
            if(keccak256(bytes(vehicles[i].number)) == keccak256(bytes(_number))){
                return (vehicles[i].name, vehicles[i].owner, vehicles[i].number, vehicles[i].license);
            }
        }
        
    }
    
}
