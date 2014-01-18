module.exports = (grunt) ->

  grunt.initConfig

    bowerRequire:
      target:
        rjsConfig: 'app/config.js'

    bowerTask:
      install:
        options:
          install: true
          prune: true

    release:
      options:
        add: false
        commit: false
        tag: false
        push: false
        npm: false
        pushTags: false

    watch:
      bower:
        files: 'bower.json'
        tasks: ['updateDependencies']
      npm:
        files: 'package.json'
        tasks: ['sync']

  require('load-grunt-tasks') grunt

  # Hey, let's all call our task bower! Sweet!
  grunt.renameTask    'bower', 'bowerTask'
  grunt.loadNpmTasks  'grunt-bower-requirejs'
  grunt.renameTask    'bower', 'bowerRequire'

  grunt.registerTask 'default' , ['updateDependencies','watch']
  grunt.registerTask 'updateDependencies' , ['sync','bowerTask','bowerRequire']
