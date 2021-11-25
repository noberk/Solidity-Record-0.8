#

7.1.1 Proxy Contracts

The main thought of proxy contract is to call the function in target contract through
delegatecall opcode and target contract is upgradeable. Since delegatecall keeps
working on the context of caller function, the target contract code is able to update
the status ofProxy contract and keep the result in proxy contract. With the Byzantine
hard fork, now we can get the return data and its size of a function call.

# 7.1.2 Separate Logic and Data Contracts

The main idea is to put all contract data (variable, struct, mapping, etc.) and its
related getter and setter function into data contract; and put all business logic related
code (possibly modify contract data) into a logic contract. So, even though business
logic changes, data is still in the same location. This method allows the full upgrade
of logic contract. Contract can ask users to use new logic contract (through ENS
parser), and adjust data privilege to run getter and setter function.
