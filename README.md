# Solidity-Data-Type-Boolean
 Solidity is typed language, which means that the type of each variable  needs to be specified.
 Solidity types can interact with each other with operators
 The concept of “undefined” or “null” values does not exist in Solidity,
 Null and Undefined: The Absence of Value
 
 [solidity course data type boolean 004](https://www.youtube.com/watch?v=ORSnw6ylxNU&t=17s)
 [solidity course task A 005](https://www.youtube.com/watch?v=T4XMFE2FYk0)
 [solidity course task A resolved 006](https://www.youtube.com/watch?v=5LknoK940Rw)
 [solidity course data type boolean operators 007](https://www.youtube.com/watch?v=OC6oiy6lde4)
 [solidity course data type boolean operators 008](https://www.youtube.com/watch?v=Q98eg-KkBMY)




```solidity
// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract VariableExample {
    bool public value1; // default value false


}

```


# Value Type
## Booleans
In Solidity, the boolean data type is used to represent logical values, 
specifically true or false. The boolean data type is declared using the bool keyword.

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
        bool result1 = isTrue && isFalse; // Logical AND operation =false
        bool result2 = isTrue || isFalse; // Logical OR operation =true
        bool result3 = !isTrue; // Logical NOT operation =false

        return result1 || result2 && result3;

    }
}
```

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

```solidity
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Example {
    function checkNegation(bool value) public pure returns (bool) {
        return !value;
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









