Class {
	#name : 'CTest',
	#superclass : 'TestCase',
	#category : 'Week2',
	#package : 'Week2'
}

{ #category : 'tests' }
CTest >> testBar [
	|c|
	c:=C new.
	self assert: c bar equals: 50.
]

{ #category : 'tests' }
CTest >> testFoo [
	|c|
	c:=C new.
	self assert: c foo equals: 50.

]
