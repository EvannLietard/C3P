Class {
	#name : 'Dice',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Week2',
	#package : 'Week2'
}

{ #category : 'as yet unclassified' }
Dice class >> withFaces: aNumber [
"Create and initialize a new die with aNumber faces."
	| instance |
	instance := self new.
	instance faces: aNumber.
	^ instance

]

{ #category : 'accessing' }
Dice >> faces [
	^ faces
]

{ #category : 'accessing' }
Dice >> faces: aNumber [
	faces:=aNumber .
]

{ #category : 'initialization' }
Dice >> initialize [ 
	super initialize .
	faces:=6.
]

{ #category : 'printing' }
Dice >> printOn: aStream [
    "Ajoute une représentation textuelle du dé avec le nombre de faces."
    super printOn: aStream.
    aStream
        nextPutAll: '(';
        print: faces;
        nextPutAll: ')'.
]

{ #category : 'as yet unclassified' }
Dice >> roll [ 
    ^faces atRandom

]
