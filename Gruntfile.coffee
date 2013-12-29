module.exports = (grunt) ->
  # Project configuration.
  grunt.initConfig {
    watch:
      scripts:
        files: ['scripts/**']
        tasks: ['coffee']
        options:
          spawn: false
    coffee:
      compile:
        files:
          'public/dist/main.js': ['scripts/main.coffee', 'scripts/sub1.coffee']
  }

  # Load the plugin that provides the "coffee" task.
  grunt.loadNpmTasks('grunt-contrib-coffee')

  # Load the plugin that provides the "watch" task.
  grunt.loadNpmTasks('grunt-contrib-watch')

  # Default task(s).
  # grunt.registerTask('default', ['uglify']);
