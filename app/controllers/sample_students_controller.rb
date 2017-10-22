class SampleStudentsController < ApplicationController
	def create
		@student = Student.new(student_params)
		# Student.new({name: 'foo bar', matric_no: '23972634'})
		
		if @student.save
			# redirect or do something nice
		else
			# show error or anything related
		end
	end

	private

		# INPUT   -> PROCESS    -> OUTPUT
		# REQUEST -> CONTROLLER -> RESPONSE
		def student_params
			# when request comes in, these are the key & values in params object
			# params = {
			# 	utf8: '123123',
			#   authenticity_token: '29362834267834',
			#   student: {
			# 		name: 'foo bar',
			# 		matric_no: '23972634',
			# 		cgpa: '4.0',
			# 		ic_picture: 'foo_bar.jpg'
			# 	},
			#   malicious_malware: 'virus.pdf'
			# }
			params.require(:student).permit(:name, :matric_no)
			# return {name: 'foo bar', matric_no: '23972634'}
		end
end
