
pragma solidity ^0.6.0;

contract SimpleStorage {
    uint256 public favoriteNumber = 5;
    bool favoriteBool = true;
    string favString = "string";
    int256 favInt = 5;
    address favAdd = 0xC418bc2Ff7e40Ad36f4BD36ccfF2d0673A3F93BB;
    bytes32 favBytes ="cat";
    bytes2 twobytes = "rt";
    
    struct People {
        uint256 favoriteNumber  ;
        string name;
    }
    // create a array ;
    People[] public people;

    // memory ?? what is storage after execution delete _name
    function addPerson(string memory _name , uint256 _favNum) public  {
        people.push(People({favoriteNumber : _favNum  , name : _name  }));
    }
    People public person1 = People({
        favoriteNumber : 999, 
        name : "saptadeep"
    });


    function store(uint256 _favNum) public {
        favoriteNumber = _favNum;

    }
    // we are just viewing
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
 
   }
    function add(uint x) public pure {
        x + x;
    }
}