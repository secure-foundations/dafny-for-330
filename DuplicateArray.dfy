predicate array_equal(a:array?<int>, b:array?<int>)
    reads a;
    reads b;
{
          (a == null && b == null) 
       || (a != null && b != null && a[..] == b[..])
}

method duplicate_array(input:array?<int>, len:int) 
  returns (output:array?<int>) 
    requires len >= 0
    requires input != null
    requires input.Length == len
    ensures array_equal(output, input)
{
    output := new int[len];
    var i := 0;
    while (i < len) 
        invariant 0 <= i <= len
        invariant forall k :: 0 <= k < i ==> output[k] == input[k]
    {
        output[i] := input[i];
        i := i + 1;
    }
}
