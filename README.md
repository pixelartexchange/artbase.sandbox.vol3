
# Programming Bits, Bytes 'n' Blocks Step-by-Step Book / Guide

Let's start with the tree types of strings, that is, bytes, (string) buffers, and (frozen) strings, ...


What's a byte?

A byte is a 8-bit integer number (that is, signed from -128 to 127
using 2's complement or unsigned from 0 to 255).
Example:

``` ruby
0b01000001    # base 2  - binary bits
65            # base 10 - decimal numbers
0x41          # base 16 - hexadecimal numbers
#=> 65
```

What's a character?

A character (or char) used to be a byte
and, thus, a string (array) of characters
was also an array of bytes. Example:

``` ruby
?A.ord        # ASCII character
"A".ord       # ASCII character
"\x41".ord    # ASCII character
#=> 65
```

Nowadays a character can have one, two or even more bytes.
Let's try:

``` ruby
"A".bytes
#=> [65]
...
```


In Ruby the String class can morph into three types:

- Bytes
- Mutable String a.k.a String Buffer
- Immutable String a.k.a. Frozen String


`String.new` or `"".b` creates new bytes, that is, a new binary string
buffer with the ASCII_8BIT encoding also known as BINARY.
Let's try:

``` ruby
String.new.encoding        #=> <Encoding::ASCII_8BIT>  
String.new("".b).encoding  #=> <Encoding::ASCII_8BIT>
"".b.encoding              #=> <Encoding::ASCII_8BIT>

Encoding::BINARY == Encoding::ASCII_8BIT  #=> true
```

If you use `String.new("")` (note the `""` passed in) or
the string literal `""` that creates a new string buffer
with the default encoding (usually UTF-8).
Let's try:

``` ruby
# encoding: utf-8
String.new("").encoding    #=> <Encoding::UTF_8>
"".encoding                #=> <Encoding::UTF_8>
```

If you use the recommended `# frozen_string_literal: true` magic comment
or pragma you can automagically turn all string literals into
frozen (immutable) strings with the default encoding (usually UTF-8).
Let's try:

``` ruby
# frozen_string_literal: true
"".frozen?                 #=> true
"Hello, World!".frozen?    #=> true
String.new.frozen?         #=> false
String.new("").frozen?     #=> false
```



## Bytes

bytes from hexstring

bytes to hexstring

bytes from string

bytes to string

bytes to array of integers

bytes from array of integers



### Bytes to Integer Numbers - Little-Endian vs Big-Endian

4 byte unsigned integer  -   

Example - 1

bytes to integer

integer to bytes

Big-End first or Little-End first?
Least significant bit (lsm) or most significant bit (msb) first?




### Bytes Helper



## Buffer

### Buffer Helper



To be continued ...
