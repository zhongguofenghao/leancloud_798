DB = require "cloud/_db"
require "cloud/db/sync"
require "cloud/db/post_inbox"
AV.User.current = -> AV.Object.createWithoutData('User', '556eb0b8e4b0925e000409b9')


DB.PostInbox.rm({
    post_id: "55acaec2e4b05881acf30723"
    site_id: "556eb106e4b0925e00040e88"
    tag_list: ["标签测试"]
    title: "测试3"
    brief:""
},
success:->
    console.log 'succes'

)

    #DB.EvernoteSync.sync { id: "559bbce9e4b0a35bc4d36b77" },{ success:-> console.log 'success' }
###
require "test/redis_count_test"
DB = require "cloud/_db"
AV.User.current = -> AV.Object.createWithoutData('User', '5566f0cee4b09f185e943711')


DB.PostInbox.by_site {
    site_id: "555d759fe4b06ef0d72ce8e7"
}, {

    success:([count,li])->
        for i in li
            console.log i.get 'owner'
}
###
#AV.User.current = -> AV.Object.createWithoutData('User', '5566f0cee4b09f185e943711')
