Extension { #name : #Integer }

{ #category : #'*TIEA1130-DieHandle' }
Integer >> D10 [

   ^ self D: 10
]

{ #category : #'*TIEA1130-DieHandle' }
Integer >> D12 [

   ^ self D: 12
]

{ #category : #'*TIEA1130-DieHandle' }
Integer >> D20 [

   ^ self D: 20
]

{ #category : #'*TIEA1130-DieHandle' }
Integer >> D4 [

   ^ self D: 4
]

{ #category : #'*TIEA1130-DieHandle' }
Integer >> D6 [

   ^ self D: 6
]

{ #category : #'*TIEA1130-DieHandle' }
Integer >> D: aNumber [

   | handle |
   handle := DieHandle new.
   self timesRepeat: [ handle addDie: (Die withFaces: aNumber) ].
   ^ handle
]
