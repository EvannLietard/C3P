Class {
	#name : 'DiceHandleTest',
	#superclass : 'TestCase',
	#category : 'Week2',
	#package : 'Week2'
}

{ #category : 'tests' }
DiceHandleTest >> testAddingTwiceTheSameDice [
| handle |
handle := DiceHandle new.
handle addDice: (Dice withFaces: 6).
self assert: handle diceNumber equals: 1.
handle addDice: (Dice withFaces: 6).
self assert: handle diceNumber equals: 2.


]

{ #category : 'tests' }
DiceHandleTest >> testCreationAdding [
| handle |
handle := DiceHandle new
	addDice: (Dice withFaces: 6);
	addDice: (Dice withFaces: 10);
yourself.
self assert: handle diceNumber equals: 2.

]

{ #category : 'tests' }
DiceHandleTest >> testRoll [ 
    | handle dice1 dice2 result |
    handle := DiceHandle new.
    dice1 := Dice withFaces: 6.
    dice2 := Dice withFaces: 10.
    handle addDice: dice1.
    handle addDice: dice2.
    result := handle roll.
    self assert: (result between: 2 and: 16).
]
