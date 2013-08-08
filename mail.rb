require 'mail'
mail = Mail.new do
  from    '363602094@qq.com'
  to      '363602094@qq.com'
  subject 'This is a test email'
  body    'this is john'
end
p mail