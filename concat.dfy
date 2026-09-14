// Recitation activity:

method concat(a:array<int>, b:array<int>) returns (c:array<int>)
	ensures  a[..] + b[..] == c[..]
{
  // Put your solution here!
}


// Recitation bonus #1:

method reverse(a:array<int>) returns (c:array<int>)
	ensures  
    c.Length == a.Length && forall i :: 0 <= i < c.Length ==> c[i] == a[a.Length - i - 1]
{
  // Delete this and put your solution here!
  assume(false);
}

// Recitation bonus #1:

method reverse_in_place(a:array<int>)
  modifies a
	ensures  
    forall i :: 0 <= i < a.Length ==> a[i] == old(a)[a.Length - i - 1]
{
  // Delete this and put your solution here!
  assume(false);
}



