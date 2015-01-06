require 'rest_client'
require 'json'

comments = RestClient.get("http://www.reddit.com/r/aww/comments/zzg3k/my_local_humane_society_posts_pictures_of_new/.json")
comments_hash = JSON.parse(comments).flatten
comments_hash = comments_hash[1]
# p comments_hash["data"]["children"][0]["data"]["replies"]["data"]["children"][0]["data"]["body"]
# p comments_hash["data"]["children"][0]["data"]["replies"]["data"]["children"][0]["data"]["replies"]["data"]["children"][0]["data"]["body"]

def get_comment(reddit_data)
  if reddit_data["data"]["children"][0]["data"]["body"]
    puts reddit_data["data"]["children"][0]["data"]["body"]
  end

  return get_comment(reddit_data["data"]["children"][0]["data"]["replies"])
end

p get_comment(comments_hash)
