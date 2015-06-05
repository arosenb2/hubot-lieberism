chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'lieber', ->
    beforeEach ->
        @robot =
            respond: sinon.spy()

        require('../src/lieber')(@robot)

    it 'responds with something awesome', ->
        expect(@robot.respond).to.have.been.calledWith(/lieber(|ism) (me|.*)/)
