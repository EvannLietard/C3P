Class {
	#name : 'DiceHandle',
	#superclass : 'Object',
	#instVars : [
		'dices'
	],
	#category : 'Week2',
	#package : 'Week2'
}

{ #category : 'adding' }
DiceHandle >> addDice: aDice [ 
	dices add: aDice .
]

{ #category : 'accesing' }
DiceHandle >> diceNumber [
	^dices size.
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
