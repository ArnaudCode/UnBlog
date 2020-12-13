import assert from 'assert'

describe 'arnaudfaitunblog', () ->
  it 'package.json has correct name', async () ->
    { name } = await import '../package.json'
    assert.strictEqual name, 'ArnaudFaitUnBlog'

  if Meteor.isClient
    it 'client is not server', () ->
      assert.strictEqual Meteor.isServer, false

  if Meteor.isServer
    it 'server is not client', () ->
      assert.strictEqual Meteor.isClient, false
