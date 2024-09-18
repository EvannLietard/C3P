Class {
	#name : 'DiceHandle',
	#superclass : 'Object',
	#instVars : [
		'dices'
	],
	#category : 'Week2',
	#package : 'Week2'
}

{ #category : 'as yet unclassified' }
DiceHandle >> + aDiceHandle [ 
	| newHandle |
	newHandle := self class new. 
	self dices do: [ :die | newHandle addDice: die ].
	aDiceHandle dices do: [ :die | newHandle addDice: die ].
	^ newHandle 

]

{ #category : 'adding' }
DiceHandle >> addDice: aDice [ 
	dices add: aDice .
]

{ #category : 'accessing' }
DiceHandle >> diceNumber [
	^dices size.
]

{ #category : 'accessing' }
DiceHandle >> dices [
	^ dices
]

{ #category : 'initialization' }
DiceHandle >> initialize [ 
	dices := OrderedCollection new.
]

{ #category : 'as yet unclassified' }
DiceHandle >> roll [ 
    "Lance tous les dés du handle et retourne la somme des résultats."
    ^dices sum: [ :dice | dice roll ].

]
