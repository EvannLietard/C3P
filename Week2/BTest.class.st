Class {
	#name : 'BTest',
	#superclass : 'TestCase',
	#category : 'Week2',
	#package : 'Week2'
}

{ #category : 'tests' }
BTest >> testBar [
	|b|
	b:=B new.
	self assert: b bar equals: 10.
]

{ #category : 'tests' }
BTest >> testFoo [
	|b|
	b:=B new.
	self assert: b foo equals: 10.

]
