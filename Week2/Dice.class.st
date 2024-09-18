Class {
	#name : 'Dice',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Week2',
	#package : 'Week2'
}

{ #category : 'accessing' }
Dice >> faces [
	^ faces
]

{ #category : 'initialization' }
Dice >> initialize [ 
	super initialize .
	faces:=6.
]

{ #category : 'as yet unclassified' }
Dice >> roll [ 
    ^faces atRandom

]
