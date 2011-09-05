Kim
===

This is just a compilation of all some frequent includes I do on my ruby code

Hash
----

### deep_merge

When merging Hashes it will take care of merging nested hashes 

### deep_has_key?

Provide multiple keys and it will tell you if they are contained in the current hash, taking nesting into account

### deep_value

Finds a value taking nesting into account

Fixnum
------

### sign

Returns 1 or -1 matching the sign of the current fixnum

Array
_____

### all_equal?

Return true if all the items of the array are equal
Note: an empty array will solve to true while i'm unsure it's desired behavior
