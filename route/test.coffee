app = require 'app'
require 'cloud/db/sync'
DB = require 'cloud/_db'

app.get '/test', (req, res) ->
    DB.SyncEvernote.sync(
        {
            id:"557ea6cae4b019eef746e5c6"
        }
        {
            success:(li)->
                console.log li

        }
    )
    res.send 'hi'

