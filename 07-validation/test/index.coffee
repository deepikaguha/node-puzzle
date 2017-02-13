assert   = require 'assert'
{validate} = require '../lib'


describe '07-validation', ->

  it 'should return `true` for valid data', ->
    assert validate
      id: 1
      name: 'John Doe'
      email: 'foo@bar.com'
      taxRate: 0.1
      favouriteColour: '#ccccff'
      interests: ["cycling", "programming"]

  it 'should return `false` for invalid data: name', ->
    assert !validate
      id: 1
      name: 2 # <--- problem
      email: 'foo@bar.com'
      taxRate: 0.1
      favouriteColour: '#ff6'
      interests: ["cycling", "programming"]

  it 'should return `false` for invalid data: email', ->
    assert !validate
      id: 1
      name: 'John Doe'
      email: 2 # <--- problem
      taxRate: 0.1
      favouriteColour: '#ff6'
      interests: ["cycling", "programming"]

  it 'should return `false` for invalid data: id', ->
    assert !validate
      id: -5 # <--- problem
      name: 'John Doe'
      email: 'foo@bar.com'
      taxRate: 0.1
      favouriteColour: '#ff6'
      interests: ["cycling", "programming"]

  it 'should return `false` for invalid data: favouriteColour', ->
    assert !validate
      id: 1
      name: 'John Doe'
      email: 'foo@bar.com'
      taxRate: 0.1
      favouriteColour: 'test@test.com' # <--- problem
      interests: ["cycling", "programming"]

  # !!!!!
  # Add more tests for different data that users might try to provide!
  # !!!!!
it 'should return `false` for invalid data: name (63 characters)', ->
    assert !validate
      id: 1
      name: 'abcdertsfbgerdsfcrdertyuiopkjhgfsdercvfrdsertyuiojhgferdfrtyhbjuytedf'# <--- problem
      email: 'foo@bar.com'
      taxRate: 0.1
      favouriteColour: 'test@test.com' 
      interests: ["cycling", "programming"]
	  
	  
	  
	  
	  
	   it 'should return `false` for invalid data: name (blank)', ->
    assert !validate
      id: 1
      name: # <--- problem
      email: 'foo@bar.com'
      taxRate: 0.1
      favouriteColour: 'test@test.com' 
      interests: ["cycling", "programming"]
	  
	  
	  
	  
	  
	   it 'should return `false` for invalid data: email (blank)', ->
    assert !validate
      id: 1
      name: 'John Doe'
      email: # <--- problem
      taxRate: 0.1
      favouriteColour: 'test@test.com' 
      interests: ["cycling", "programming"]
	  
	  
	  
	    it 'should return `false` for invalid data: email (number)', ->
    assert !validate
      id: 1
      name: 'John Doe'
      email: 04856985 # <--- problem
      taxRate: 0.1
      favouriteColour: 'test@test.com' 
      interests: ["cycling", "programming"]
	  
	  
	  
	  
	   it 'should return `false` for invalid data: taxRate (more than 1)', ->
    assert !validate
      id: 1
      name: 'John Doe'
      email: 'sarah@test.com'
      taxRate: 3 # <--- problem
      favouriteColour: 'test@test.com' 
      interests: ["cycling", "programming"]
	  
	  
	  
	  
	  
	   it 'should return `false` for invalid data: taxRate (negative)', ->
    assert !validate
      id: 1
      name: 'John Doe'
      email: 'sarah@test.com'
      taxRate: -1  # <--- problem
      favouriteColour: 'test@test.com' 
      interests: ["cycling", "programming"]
	  
	  
	  
	  
	  it 'should return `true` for valid data', ->
    assert validate
      id: 598
      name: 'John Doe'
      email: 'deepikaguha.tesring@gmail.com'
      taxRate: 0.98
      favouriteColour: '#ccccff'
      interests: ["cycling", "programming","typing","validating"]
