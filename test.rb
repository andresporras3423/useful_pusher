loop do
   system("echo \"hello world\" >> text.txt")
   lines = File.foreach("commits.txt").count
   num = rand(lines)
   commit = File.foreach("commits.txt").to_a[num]
   message = "git add . && git commit -m '#{commit}' && git push"
   system(message)
   sleep(300)
end
