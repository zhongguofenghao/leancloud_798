
#require "test/test_room"
#require "test/post_inbox_test"


#console.log "run test"
#require "test/site_user_level"
DB = require "cloud/_db"
require "cloud/db/post"


DB.SiteTagPost.by_site_tag {
    site_id:"555d759fe4b06ef0d72ce8e7"
}, {
    success:(li)->
        for i in li[0]
            console.log i.get 'title'
            console.log i.get 'owner'
}
