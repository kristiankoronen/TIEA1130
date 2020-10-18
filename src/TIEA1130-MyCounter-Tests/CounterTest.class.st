Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #'TIEA1130-MyCounter-Tests'
}

{ #category : #tests }
CounterTest >> testCounterIsSetAndRead [

   | c |
   c := Counter new.
   c count: 6.
   self assert: c count equals: 6.
]

{ #category : #tests }
CounterTest >> testDecrement [

   | c |
   c := Counter new.
   c count: 25.
   c decrement; decrement.
   self assert: c count equals: 23.
]

{ #category : #tests }
CounterTest >> testIncrement [

   | c |
   c := Counter new.
   c count: 11.
   c increment; increment.
   self assert: c count equals: 13.
]

{ #category : #tests }
CounterTest >> testInitialize [

   | c |
   c := Counter new.
   self assert: c count equals: 0.
]

{ #category : #tests }
CounterTest >> testStartingAt5 [

   | c |
   c := Counter startingAt: 5.
   self assert: c count equals: 5
]

{ #category : #tests }
CounterTest >> testStartingAt5increment [

   | c |
   c := Counter startingAt: 5.
   self assert: (c increment; count) equals: 6
]
