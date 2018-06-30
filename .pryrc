Pry.config.exception_handler = proc do |output, exception, _|
  output.puts "#{exception.class}: #{exception.message}"

  exception.backtrace.each do |bt|
    puts "\tfrom: #{bt}"
    break if bt =~ /^\(pry\)/
  end
end

# Change prompt color (helps with identifying env)
Pry.config.prompt = [
                    proc { |target_self, nest_level, pry|
                      "\e[0;30m\e[42m[#{pry.input_array.size}] #{pry.config.prompt_name}(#{Pry.view_clip(target_self)})#{":#{nest_level}" unless nest_level.zero?}>\e[0m\e[0m "
                    },

                    proc { |target_self, nest_level, pry|
                      "\e[0;30m\e[42m[[#{pry.input_array.size}] #{pry.config.prompt_name}(#{Pry.view_clip(target_self)})#{":#{nest_level}" unless nest_level.zero?}*\e[0m\e[0m "
                    }
                   ]

# General aliases
Pry.commands.alias_command 'q', 'quit'

# bye bug keyboard shortcuts
if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

# Hit Enter to repeat last command
Pry::Commands.command /^$/, "repeat last command" do
  _pry_.run_command Pry.history.to_a.last
end

# Atom as default editor
Pry.config.editor = proc { |file, line| "atom #{file}:#{line}" }
