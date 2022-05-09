pragma solidity ^0.5.0;

import "./IBEP20.sol";
import "./BEP20Detailed.sol";

contract Token is BEP20, BEP20Detailed {

   
   /**
    *  全称、简写、小数精度
    *  铸币数量
    */
    constructor () public BEP20Detailed("Glory Planet", "Glory", 6) {
        _mint(msg.sender, 10000000000 * (10 ** uint256(decimals())));
    }
}