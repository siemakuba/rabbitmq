#!/usr/bin/env ruby
# encoding: utf-8

require 'rubygems'
require 'bundler/setup'
require 'bunny'
require 'json'

connection = Bunny.new
connection.start

channel = connection.create_channel
exchange = channel.topic("hutch", durable: true)

exchange.publish({message: "User changed email"}.to_json, :routing_key => "user.changed.email")
exchange.publish({message: "User changed phone"}.to_json, :routing_key => "user.changed.phone")

connection.close
