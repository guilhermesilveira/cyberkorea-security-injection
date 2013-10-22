require 'digest/md5'

def md5(content)
  digest = Digest::MD5.hexdigest("#{content}")
end

randPassword = Time.now.to_i * rand()
User.create(login: "admin", password: md5(randPassword))
User.create(login: "guilherme", password: md5("silveira"))