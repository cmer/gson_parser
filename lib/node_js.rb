class NodeJs
  NODEJS_EXEC = 'node'

  def self.installed?
    unless NodeJs.path == ''
      `#{NodeJs.path} -v`
      $? == 0
    else
      false
    end
  end

  def self.path
    @path ||= `which #{NODEJS_EXEC}`.gsub("\n", "")
  end

  def self.execute(node_cmd, stdin = nil)
    cmd_dir = File.dirname(node_cmd)
    Dir.chdir(cmd_dir)

    shell_out = ""

    IO.popen "#{NodeJs.path} #{node_cmd}", 'r+' do |io|
      io.puts(stdin) if stdin
      io.close_write
      shell_out = io.read
    end

    shell_out
  end
end
