Class {
	#name : #DieHandleTest,
	#superclass : #TestCase,
	#category : #'TIEA1130-DieHandle-Tests'
}

{ #category : #tests }
DieHandleTest >> testCreationAndAdding [
 
   | handle |
   handle := DieHandle new
      addDie: (Die withFaces: 4);
      addDie: (Die withFaces: 34);
      yourself.
   self assert: handle diceNumber equals: 2 
]

{ #category : #tests }
DieHandleTest >> testCreationWithTheSameDice [
 
   | handle |
   handle := DieHandle new addDie: (Die withFaces: 4).
   self assert: handle diceNumber equals: 1. 
   handle addDie: (Die withFaces: 4).
   self assert: handle diceNumber equals: 2. 
]

{ #category : #test }
DieHandleTest >> testMaxValue [

   | handle |
   handle := DieHandle new
      addDie: (Die withFaces: 4);
      addDie: (Die withFaces: 34);
      yourself.
   self assert: handle maxValue equals: 38   
]

{ #category : #test }
DieHandleTest >> testRoll [

   | handle |
   handle := DieHandle new
      addDie: (Die withFaces: 4);
      addDie: (Die withFaces: 34);
      yourself.
   10000 timesRepeat: 
      [ self assert: (handle roll between: handle diceNumber and: handle maxValue) ]
]

{ #category : #test }
DieHandleTest >> testSimpleHandle [

   self assert: 2 D20 diceNumber equals: 2 
]

{ #category : #test }
DieHandleTest >> testSummming [

   self assert: (3 D4 + 6 D20) diceNumber equals: 9
]
