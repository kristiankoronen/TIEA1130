Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #'TIEA1130-DieHandle'
}

{ #category : #arithmetic }
DieHandle >> + aDieHandle [

   | handle |
   handle := self class new.
   self dice do: [ :each | handle addDie: each ].
   aDieHandle dice do: [ :each | handle addDie: each ].
   ^ handle   
]

{ #category : #initialization }
DieHandle >> addDie: aDie [

   dice add: aDie
]

{ #category : #accessing }
DieHandle >> dice [

   ^ dice
]

{ #category : #accessing }
DieHandle >> diceNumber [

   ^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [ 

   super initialize.
   dice := OrderedCollection new
]

{ #category : #operation }
DieHandle >> maxValue [

   | result |
   result := 0.
   dice do: [ :each | result := result + each faces ].
   ^ result 
]

{ #category : #operation }
DieHandle >> roll [

   | result |
   result := 0.
   dice do: [ :each | result := result + each roll ].
   ^ result 
]
