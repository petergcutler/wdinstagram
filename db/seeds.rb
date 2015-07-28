require 'bundler/setup'
require 'active_record'
require 'pry'

require_relative "connection"
require_relative "../models/entry"

Entry.destroy_all

eich = Entry.create(
  author: "Brendan Eich",
  photo_url: "http://cnet4.cbsistatic.com/hub/i/r/2012/02/26/24cf0440-f0e6-11e2-8c7c-d4ae52e62bcc/resize/370xauto/434f5240b3a3752f41c966b9987f723d/20120226_Brendan_Eich_001.jpg",
  date_taken: "March, 2013",
  caption: "Sunny")
matz = Entry.create(
  author: "Yukihiro Matsumoto",
  photo_url: "http://i.ytimg.com/vi/IGG4l_QEzog/maxresdefault.jpg",
  date_taken: "April, 2013",
  caption: "Woah")
rossum = Entry.create(
  author: "Guido van Rossum",
  photo_url: "https://upload.wikimedia.org/wikipedia/commons/6/66/Guido_van_Rossum_OSCON_2006.jpg",
  date_taken: "March, 2013",
  caption: "Beer")
