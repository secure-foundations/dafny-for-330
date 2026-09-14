// Main Recitation Activity:
method concat(a:array<int>, b:array<int>) returns (c:array<int>)
	ensures  a[..] + b[..] == c[..]
{
  // Put your solution here!
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


// Recitation bonus #2:

method binary_search(a:array<int>, k: int) returns (index: int)
  requires
    sorted(a[..])
	ensures  
    (index >= 0 ==> index < a.Length && a[index] == k) &&
    (index < 0 ==> forall i :: 0 <= i < a.Length ==> a[i] != k)
{
  // Delete this and put your solution here!
  assume(false);
}


function sorted(s: seq<int>) : bool {
  forall i, j :: 0 <= i < j < |s| ==> s[i] < s[j]
}

