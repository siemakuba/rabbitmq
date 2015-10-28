#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'
require 'hutch'

class TestConsumer
  include Hutch::Consumer
  consume 'user.changed.*'
  queue_name 'user_changed'

  def process(message)
    # logger.info message.body
  end
end
