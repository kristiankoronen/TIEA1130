Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #'TIEA1130-Die'
}

{ #category : #accesing }
Die >> faces [
	^ faces
]

{ #category : #initialization }
Die >> initialize [

   super initialize.
   faces := 6
]

{ #category : #operation }
Die >> roll [
	
   ^ faces atRandom 
]
