Class {
	#name : 'ATest',
	#superclass : 'TestCase',
	#category : 'Week2',
	#package : 'Week2'
}

{ #category : 'as yet unclassified' }
ATest >> testBar [
	|a|
	a:=A new.
	self assert: a bar equals: 10.

]

{ #category : 'as yet unclassified' }
ATest >> testFoo [
	|a|
	a:=A new.
	self assert: a foo equals: 10.

]
