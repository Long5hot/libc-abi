__cxa_throw
-----------

- According to the ABI reference, once the exception has been created __cxa_throw will be called.
This function will be responsible of starting the stack unwinding.
- An important effect of this: __cxa_throw is never supposed to return.
It either delegates execution to the correct catch block to handle the exception or calls (by default) std::terminate, but it never ever returns.
