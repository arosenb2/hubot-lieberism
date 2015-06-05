chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'lieber', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/lieber')(@robot)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWithMatch sinon.match (val) ->
      val.test /lieber me/
