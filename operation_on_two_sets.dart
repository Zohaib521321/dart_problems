/*
Write a Dart program that performs various set operations on two sets without
 using Dart's built-in set methods. The program should:
Implement functions/methods for the following set operations without using
Dart's built-in set methods:
Union   //  A,B,C    D A B //A B
Intersection
Difference (A - B)
Symmetric Difference (elements in either A or B but not in both)
Display the results of each set operation.
 */
void main(){
  /*if you want a user choice then the logic would be-->
   use any loop user world input numbers   add numbers in setA
   fix a number like e when user enter e end the loop
   same thing is with setB    -->second loop for end use break;
   if(userInput==""e){
   break;
   }
   */
  Set<int> setA={1,3,4,6};
  Set<int> setB={3,5,6};
  allSetOperation(setA, setB);
}
void allSetOperation(Set<int> setA,Set<int> setB){
  union(setA, setB);
  intersection(setA, setB);
  difference(setA, setB);
  symmetricDifference(setA, setB);
}
void union(Set<int> setA,Set<int> setB){
  Set<int> C={};
  for(int set in setA){
    C.add(set);
  }
  for(int set in setB){
    C.add(set);
  }
  print("Union  is $C");
}
void intersection(Set<int> setA,Set<int> setB){
  Set<int> D={};
for(int set in setB){
  if(setA.contains(set)){
    D.add(set);
  }
}

print("Intersection is $D");
}
void difference(Set<int> setA,Set<int> setB){
  Set<int> setD={};
  for(int set in setA){
    if(!setB.contains(set)){
      setD.add(set);
    }
  }
  print("Difference is $setD");
}
void symmetricDifference(Set<int> setA,Set<int> setB){
  Set<int> setC={};
  for(int set in setA){
    if(!setB.contains(set)){
      setC.add(set);
    }
  }
  for(int set in setB){
    if(!setA.contains(set)){
      setC.add(set);
    }
  }

  print("Symmmetric Difference is $setC");
}


