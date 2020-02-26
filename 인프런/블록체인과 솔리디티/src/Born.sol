pragma solidity >=0.4.21 <=0.6.1;


// 1. 컨트랙트 선언
contract Sample {
    // 2. 상태 변수 선언
    uint256 data;
    address owner;
    
    // 3. 이벤트 정의
    event logData(uint256 dataToLog);
    
    // 4. 함수 변경자 정의
    modifier onlyOwner() {
        if(msg.sender != owner) revert();
        _;
    }
    
    // 5. 생성자
    constructor (uint256 initData, address initOwner) public{
        data = initData;
        owner = initOwner;
    }
    
    // 6. 함수(메소드) 정의
    function getData() public returns (uint256 returned)  {
        return data;
    }
    function setData(uint256 newData) onlyOwner public {
        logData(newData);
        data = newData;
    }
}