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

{ #category : 'tests' }
DiceHandleTest >> testSimpleHandle [
self assert: 2 D20 diceNumber equals: 2.
]

{ #category : 'tests' }
DiceHandleTest >> testSumOfHandles [
| hd1 hd2 hd3 |
hd1 := DiceHandle new
addDice: (Dice withFaces: 20);
addDice: (Dice withFaces: 20); yourself.
hd2 := DiceHandle new
addDice: (Dice withFaces: 10);
addDice: (Dice withFaces: 10); yourself.
hd3 := hd1 + hd2.
self assert: hd3 diceNumber equals: 4.

]

{ #category : 'tests' }
DiceHandleTest >> testSumming [
| handle |
	handle := 2 D20 + (3 D:10).
	self assert: handle diceNumber equals: 5.
]
