Class {
	#name : 'A',
	#superclass : 'Object',
	#category : 'Week2',
	#package : 'Week2'
}

{ #category : 'accessing - token' }
A >> bar [
	^self foo.
]

{ #category : 'accessing' }
A >> foo [

	^10
]
