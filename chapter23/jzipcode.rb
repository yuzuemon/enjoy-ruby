require "gdbm"
require "csv"

module JZipCode
  COLUMN_ZIP = 2
  ZIP_FILE   = "ken_all_roma.csv"
  DB_FILE    = "ken_all_roma.db"

  module_function

  def make_database(zipfile, dbfile)
    return if File.exist?(dbfile)
    open(zipfile) do |io|
      GDBM.open(dbfile, 0644, GDBM::NEWDB) do |db|
        io.each do |line|
          colums = line.split(",")
          zipcode = colums[COLUMN_ZIP].delete('"')
          if tmp = db[zipcode] # すでにレコードがある場合は追加する
            line = tmp + line
          end
          db[zipcode] = line
        end
      end
    end
  end

  def find(code)
    make_database(ZIP_FILE, DB_FILE)
    GDBM.open(DB_FILE, nil, GDBM::READER|GDBM::NOLOCK) do |db|
      if line = db[code]
        return CSV.parse(line)
      end
    end
    return nil
  end
end
