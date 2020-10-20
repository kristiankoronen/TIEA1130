Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #'TIEA1130-Die'
}

{ #category : #'instance creation' }
Die class >> withFaces: anInteger [ 

   | d |
   d := Die new.
   d faces: anInteger.
   ^ d
]

{ #category : #accesing }
Die >> faces [
	^ faces
]

{ #category : #accesing }
Die >> faces: anInteger [ 
	
	faces := anInteger
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
