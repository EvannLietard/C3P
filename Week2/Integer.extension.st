Extension { #name : 'Integer' }

{ #category : '*week2' }
Integer >> D20 [
	| handle |
    handle := DiceHandle new.
    self timesRepeat: [ handle addDice: (Dice withFaces: 20) ].
    ^ handle.
]

{ #category : '*week2' }
Integer >> D: anInteger [ 
	| handle |
    handle := DiceHandle new.
    self timesRepeat: [ handle addDice: (Dice withFaces: anInteger) ].
    ^ handle.
]
