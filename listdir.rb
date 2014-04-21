require 'find'

IGNORES = [  /^\./, /^CVS$/, /^RCS$/ ]

def listdir(top)
  Find.find(top){ |path|
    if FileTest.directory?(path)

      dir, base = File.split(path)
      IGNORES.each{|re|
        if re =~ base
          Find.prune
        end
      }

      puts path
    end
  }
end

listdir(ARGV[0])
