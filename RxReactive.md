# Combine and get the latest value of each once each observable has a value:
https://www.learnrxjs.io/operators/combination/combinelatest.html

    combineLatest(observable1...n, whatToDoWithThoseValues())
 
# change the emitted value of an observable:

    map( value -> whatToDoWithThatValueBeforeReturningIt() )
