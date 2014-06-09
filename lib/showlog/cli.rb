require 'thor'

module Showlog
  class Cli < Thor
    desc 'git', 'show git commit logs of local environment'

    option :path, aliases: :p, default: '.'
    option :since, aliases: :s, default: '1.days.ago'
    option :author, aliases: :a, default: `whoami`
    option :format, aliases: :f, default: 'noformat'

    def git
      Dir.glob(File.expand_path(options[:path]) + '/**/.git', File::FNM_DOTMATCH).each do |git_dir|
        repo_dir = File.dirname(git_dir)
        git_log = `cd #{repo_dir}; git log --pretty=format:"%h %ad:%d:%s" --date=local --reverse --all --since=#{options[:since]} --author="#{options[:author]}" 2>/dev/null`.split("\n")
        show_log(repo_dir, git_log, options[:format])
      end
    end

    private

    def show_log(headline, log, format = 'noformat')
      case format
        when 'markdown'
          log.each_with_index do |row, i|
            puts "## #{headline}" if i == 0
            puts "- #{row}"
            puts '' if i == log.length - 1
          end

        when 'html'
          log.each_with_index do |row, i|
            if i == 0
              puts "<h2>#{headline}</h2>"
              puts '<ul>'
            end
            puts "    <li>#{row}</li>"
            if i == log.length - 1
              puts '</ul>'
              puts ''
            end
          end

        when 'noformat'
          log.each_with_index do |row, i|
            puts headline if i == 0
            puts row
            puts '' if i == log.length - 1
          end
      end
    end
  end
end

