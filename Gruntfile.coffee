module.exports = 
	(grunt)->
		grunt.initConfig(
			watch:
				html:
					files:"test.html"
					tasks:[]
					options:
						livereload:1337
						debounceDelay:3000
			)
		grunt.loadNpmTasks("grunt-contrib-watch")
		grunt.registerTask("default",["watch"])