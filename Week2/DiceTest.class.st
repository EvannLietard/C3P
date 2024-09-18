Class {
	#name : 'DiceTest',
	#superclass : 'TestCase',
	#category : 'Week2',
	#package : 'Week2'
}

{ #category : 'tests' }
DiceTest >> testInitializeOk [

	self assert: Dice new faces equals:6. 
]

{ #category : 'tests' }
DiceTest >> testRolling [
	| d |
	d := Dice new.
	10 timesRepeat: [ self assert: (d roll between: 1 and: 6) ]
]
