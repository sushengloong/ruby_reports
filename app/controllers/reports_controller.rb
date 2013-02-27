require 'oci8'

class ReportsController < ApplicationController
  def index
    # si_ora.txt should be kept in private secretly
    cs = File.read(Rails.root.join('tmp', 'si_ora.txt')).chomp.strip
    oci = OCI8.new(cs)

    @table_names = []
    oci.exec('select table_name from all_tables') do |record|
      @table_names << record.join(',')
    end
  end
end
