# Solidity-Data type-Ai
 Solidity is typed language, which means that the type of each variable  needs to be specified.
 Solidity types can interact with each other with operators
 The concept of “undefined” or “null” values does not exist in Solidity,


```solidity
// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract VariableExample {
    uint public value; // Declared but not assigned a value, default is 0
    bool public value1; // default value false
    address public value2; // default value 0x0000000000000000000000000000000000000000


}

```


# Value Type
## Booleans
In Solidity, the boolean data type is used to represent logical values, 
specifically true or false. The boolean data type is declared using the bool keyword.
### Example 1
```solidity
// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract BooleanExample {
    bool isActivated;

    function activate() public {
        isActivated = true;
    }

    function deactivate() public {
        isActivated = false;
    }

    function checkActivation() public view returns (bool) {
        return isActivated;
    }
}
```
### Example 2

```solidity
// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract BooleanExample {
    bool public isTrue;
    bool public isFalse;

    // Function to update boolean values
    function updateValues() public {
        isTrue = true;
        isFalse = false;
    }

    // Function to perform logical operations
    function performOperations() public view returns (bool) {
        bool result1 = isTrue && isFalse; // Logical AND operation
        bool result2 = isTrue || isFalse; // Logical OR operation
        bool result3 = !isTrue; // Logical NOT operation

        return result1 || result2 && result3; // Complex logical expression
    }
}
```
### Example 3
```solidity
// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract ShortCircuitExample {
    bool condition1 = true;
    bool condition2 = false;

    function function1() public view returns (bool) {
        // This function will return true without evaluating condition2
        return condition1 || condition2;
    }

    function function2() public view returns (bool) {
        // This function will return false without evaluating condition1
        return condition2 && condition1;
    }
}
```

افترض أنك تعمل على برنامج يحذف الملفات المتكررة.

لأداء جيد يجب أن تتحقق من حجم الملف أولا، ثم تَطابق المحتوى لأن جلب الحجم لا يأخذ وقت مهم مقارنة بمطابقة المحتوى مع الملفات الكبيرة.

الجملة الشرطية يجب أن تكون
```javascript

if((size1 == size2) AND compare(file1, file2))
  remove(file2)
```

بفضل ميزة الـ short-circuit evaluation في أغلب لغات البرمجة مع && و || و غيرها، إن كانت (size1 == size2) قيمتها False فلن يتم التحقق من المحتوى بتشغيل الدالة compare، يحفظ الوقت و توفر طاقة (للأجهزة المحمولة).

مع المعامل AND يشغل الشرط الثاني إذا كان الأول True.

مع المعامل OR يشغل الشرط الثاني إذا كان الأول False.
### Example 4
```solidity
// SPDX-License-Identifier:MIT
ragma solidity ^0.8.0;

contract LogicalNegationExample {
    bool condition = true;

    function negateCondition() public view returns (bool) {
        // Logical negation using '!'
        return !condition;
    }
}
```



## Integers

In Solidity, integers are divided into two categories: signed integers and unsigned integers.
Each category has a range of bit sizes from 8 bits to 256 bits, in increments of 8 bits.
Unsigned integers can only represent non-negative values.
The uint type is an alias for uint256, meaning it is a 256-bit unsigned integer by default. 
```solidity
// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract IntegerExamples {
    uint256 count = 100;
    uint countAlias = 100;  // Same as uint256
    uint8 smallCount = 255;  // Maximum value for uint8
    uint16 mediumCount = 65535;  // Maximum value for uint16
    int256 temperature = -20; //Signed integers can negative and positive values
    int temperatureAlias = -20;  // Same as int256
    int8 smallTemp = -128;  // Minimum value for int8
    int16 mediumTemp = 32767;  // Maximum value for int16
}
```
### Example 2

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IntegerExample {
    // Unsigned integer variables
    uint256 public maxUint = 2**256 - 1; //maximum possible value.
    uint8 public smallUint = 255; //maximum value for an 8-bit unsigned integer.

    // Signed integer variables
    int256 public minInt = -(2**255);
    int16 public smallInt = 32767;

    // Function to add two unsigned integers
    function addUint(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // Function to subtract two signed integers
    function subtractInt(int256 a, int256 b) public pure returns (int256) {
        return a - b;
    }
}
```

### Example 3

```solidity

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract IntegerExample {
    int8 public signedInt8;
    uint8 public unsignedInt8;

    // Assigning values to signed and unsigned integers
    function setValues() public {
        signedInt8 = -5;
        unsignedInt8 = 10;
    }

    // Performing arithmetic operations on integers
    function performOperations() public view returns (int8, uint8,uint8,int8) {
        int8 result1 = signedInt8 + 2;
        uint8 result2 = unsignedInt8 - 3;
        uint8 result3 = unsignedInt8 * 5;
        int8 result4 = signedInt8 / 2;

        return (result1, result2,result3 , result4) ;
    }
}
```

### Example 4
```solidity

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IntegerOperators {
    uint public num1 = 10;
    uint public num2 = 5;
    int public num3 = -3;
    int public num4 = 8;

    // Function to perform arithmetic operations
    function performOperations() public view returns (uint, uint, int, int,uint,uint) {
        uint addition = num1 + num2; // Addition
        uint subtraction = num1 - num2; // Subtraction
        uint multiplication = num1 * num2; // Multiplication
        uint division = num1 / num2; // Division

        int negation = -num3; // Negation
        int modulus = num4 % num3; // Modulus

        return (addition, subtraction, negation, modulus,multiplication,division);
    }
}
```
### Example 5
``` solidity

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract ComparisonOperators {
    uint public num1 = 10;
    uint public num2 = 5;
    int public num3 = -3;
    int public num4 = 8;

    // Function to perform comparison operations
    function performComparisons() public view returns (bool, bool, bool, bool) {
        bool equal = (num1 == num2); // Equal to
        bool notEqual = (num1 != num2); // Not equal to
        bool greaterThan = (num1 > num2); // Greater than
        bool lessThan = (num1 < num2); // Less than

        return (equal, notEqual, greaterThan, lessThan);
    }
}
```
### Example 6
```solidity
pragma solidity ^0.8.0;

contract BitwiseOperators {
    uint public num1 = 0b1010; // Binary representation of 10
    uint public num2 = 0b0101; // Binary representation of 5

    // Function to perform bitwise operations
    function performBitwiseOperations() public view returns (uint, uint, uint, uint) {
        uint andOperation = num1 & num2; // Bitwise AND
        uint orOperation = num1 | num2; // Bitwise OR
        uint xorOperation = num1 ^ num2; // Bitwise XOR
        uint notOperation = ~num1; // Bitwise NOT

        return (andOperation, orOperation, xorOperation, notOperation);
    }
}
```

### Example 7
```solidity

pragma solidity ^0.8.0;

contract ShiftOperators {
    uint public num1 = 0b1010; // Binary representation of 10
    uint public num2 = 0b0101; // Binary representation of 5

    // Function to perform shift operations
    function performShiftOperations() public view returns (uint, uint, uint, uint) {
        uint leftShift = num1 << 2; // Left shift by 2 bits
        uint rightShift = num1 >> 1; // Right shift by 1 bit
        uint arithmeticRightShift = num2 >> 1; // Arithmetic right shift by 1 bit

        return (leftShift, rightShift, arithmeticRightShift, num1);
    }
}
```

### Fixed Point Numbers

In Solidity, the statement "Fixed point numbers are not fully supported by Solidity yet.
```solidity

// SPDX-License-Identifier: MIT
   pragma solidity  ^0.8.20;
  contract FixedPointExample {
    
    fixed256x18 a; // Signed fixed-point number with 18 decimal places
    ufixed256x18 b; // Unsigned fixed-point number with 18 decimal places

    function setValues() public {
        // These lines will cause an error because assignment is not supported
       // a = fixed256x18(1.5); 
        //b = ufixed256x18(2.5);
    }
 }
```
### Workaround Using Integer Arithmetic
Since fixed-point arithmetic isn't fully supported, you can use integer arithmetic to emulate fixed-point numbers.
 You do this by scaling your values. For instance, if you want to represent numbers with 2 decimal places,
 you multiply all values by 100 (the scaling factor).

```solidity

 // SPDX-License-Identifier: MIT
   pragma solidity  ^0.8.20;

contract EmulatedFixedPoint {
    uint256 constant SCALE = 100; // Scaling factor for 2 decimal places

    function add(uint256 x, uint256 y) public pure returns (uint256) {
        return (x + y);
    }

    function subtract(uint256 x, uint256 y) public pure returns (uint256) {
        require(x >= y, "Underflow error");
        return (x - y);
    }

    function multiply(uint256 x, uint256 y) public pure returns (uint256) {
        return (x * y) / SCALE;
    }

    function divide(uint256 x, uint256 y) public pure returns (uint256) {
        require(y != 0, "Division by zero error");
        return (x * SCALE) / y;
    }

    function toFixed(uint256 x) public pure returns (uint256) {
        return x * SCALE;
    }

    function fromFixed(uint256 x) public pure returns (uint256) {
        return x / SCALE;
    }
}
```






