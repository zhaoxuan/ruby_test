require 'rubygems'
require "openssl"

class Encrypt

  def initialize(key = "abcdefghijklmnopqrstuvwxyz",
                 iv = "asdasdasdasdasdasdasdasdas",
                 cipher = "DES")
    @key    = key
    @iv     = iv
    @cipher = cipher
  end

  def des_encrypt(plaintext)
    c = OpenSSL::Cipher::Cipher.new(@cipher)
    c.encrypt
    c.key = @key
    c.iv = @iv
    ret = c.update(plaintext)
    ret << c.final
  end

  def des_decrypt(encrypt_value)
    c = OpenSSL::Cipher::Cipher.new(@cipher)
    c.decrypt
    c.key = @key
    c.iv = @iv
    ret = c.update(encrypt_value)
    ret << c.final
  end

end



  enc = Encrypt.new
  c = enc.des_encrypt('1234567')
  p f = c.unpack('H*')[0]

# p enc.des_decrypt(['0257e06c71ff9167e48852334fde8fd6'].pack('H*'))
 