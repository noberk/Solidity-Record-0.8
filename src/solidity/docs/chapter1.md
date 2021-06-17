# SPDX License Identifier

To tell others your .sol license types when they are using.

# pragma

pragma is used to enable certain compiler features or checks.

# ABI Coder Pragma

pragma abicoder v1 or pragma abicoder v2
v2 is able to encode and decode arbitrarily nested arrays and structs.(since Solidity 0.8.0)

# Importing files

```js
//global import(not recommended because of pollution)
import "filename";

// The two are equivalent below.
import * as symbolName from "filename";
import "filename" as symbolName;

//If there is a naming collision, you can rename symbols while importing
import {symbol1 as alias, symbol2} from "filename";


```

# Comments

Single-line (//)
Multi-line (/_..._/)
