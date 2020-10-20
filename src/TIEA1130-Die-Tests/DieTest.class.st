"
A DieTest is a test class for testing the behavior of Die
"
Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #'TIEA1130-Die-Tests'
}

{ #category : #test }
DieTest >> testInitialize [

   | d |
   d := Die new.
   self assert: d faces equals: 6
]

{ #category : #test }
DieTest >> testRoll [

   | d |
   d := Die new.
   100000 timesRepeat: 
      [ self assert: (d roll between: 1 and: 6) ]
]
