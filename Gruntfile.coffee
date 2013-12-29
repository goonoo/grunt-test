module.exports = (grunt) ->
  # Project configuration.
  grunt.initConfig {
    coffee:
      compile:
        files:
          'public/dist/main.js': 'scripts/main.coffee'
  }

  # Load the plugin that provides the "coffee" task.
  grunt.loadNpmTasks('grunt-contrib-coffee')

  # Default task(s).
  # grunt.registerTask('default', ['uglify']);
