module.exports = (grunt) ->
  # Project configuration.
  grunt.initConfig {
    watch:
      scripts:
        files: ['scripts/**']
        tasks: ['coffee', 'concat']
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
  }

  # Load the plugin that provides the "coffee" task.
  grunt.loadNpmTasks('grunt-contrib-coffee')

  # Load the plugin that provides the "watch" task.
  grunt.loadNpmTasks('grunt-contrib-watch')

  # Load the plugin that provides the "concat" task.
  grunt.loadNpmTasks('grunt-contrib-concat')

  # Default task(s).
  # grunt.registerTask('default', ['uglify']);
