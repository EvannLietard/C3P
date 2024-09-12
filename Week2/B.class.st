Class {
	#name : 'B',
	#superclass : 'A',
	#category : 'Week2',
	#package : 'Week2'
}

{ #category : 'accessing - token' }
B >> bar [
^ super bar + self foo
]
