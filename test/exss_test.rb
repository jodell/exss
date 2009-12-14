#!/usr/bin/env ruby

require 'test/unit'
require File.expand_path(File.dirname(__FILE__)) + '/../exss'

class EXSSTest < Test::Unit::TestCase

  def setup
    @e = EXSS::Cli.new
  end

  def teardown
  end

  def test_identity
    assert @e, @e.is_a?(EXSS::Cli)
  end

  def test_cli
    puts EXSS.run!('http://localhost')
    puts EXSS.run!('http://localhost')
  end

  def test_default_to_localhost
    assert_equal EXSS.run!('http://localhost'), EXSS.run!
  end

  def test_to_s
    puts EXSS::Payloads::Payloader.new.to_s
  end

  def test_sources
    assert EXSS::Payloads::Payloader.new.sources, EXSS::Constants::RSNAKE_URL
  end

end
