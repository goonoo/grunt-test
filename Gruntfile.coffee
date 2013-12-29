module.exports = (grunt) ->
  # Project configuration.
  grunt.initConfig {
    watch:
      scripts:
        files: ['scripts/**']
        tasks: ['default']
        options:
          spawn: false
    coffee:
      compile:
        files:
          'public/dist/coffee.js': ['scripts/main.coffee', 'scripts/sub1.coffee']
    concat:
      dist:
        src: ['scripts/lib/jquery-1.10.2.min.js', 'public/dist/coffee.js']
        dest: 'public/dist/main.js'
    rename:
      compile:
        files:
          'public/dist/main-uncompressed.js': 'public/dist/main.js'
    uglify:
      dist:
        files:
          'public/dist/main.js': 'public/dist/main-uncompressed.js'
  }

  # Load the plugin that provides the "coffee" task.
  grunt.loadNpmTasks('grunt-contrib-coffee')

  # Load the plugin that provides the "watch" task.
  grunt.loadNpmTasks('grunt-contrib-watch')

  # Load the plugin that provides the "concat" task.
  grunt.loadNpmTasks('grunt-contrib-concat')

  # Load the plugin that provides the "rename" task.
  grunt.loadNpmTasks('grunt-rename')

  # Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-contrib-uglify')

  # Default task(s).
  grunt.registerTask('default', ['coffee', 'concat'])
  grunt.registerTask('dist', ['default', 'rename', 'uglify'])
