require 'spec_helper'
require 'practica12'
require 'thread'


describe Orange do
	before :each do

		@arbol = Orange.new

		@mutex = Mutex.new
	
		@th1 = Thread.new do 

=begin
			for i in 1..10
			#loop do
				#mutex.synchronize do
			
					@arbol.oneYearPasses
					sleep(0.2)
					#cv.wait(mutex)
		
				#end
			end
			
=end			
			@arbol.oneYearPasses
			print "Creciendo arbol\n"
			sleep(2)
			@arbol.oneYearPasses
			print "Creciendo arbol\n"
			sleep(2)
			
			for i in 1..8 do
			@arbol.pickAnOrange
			print "Recogiendo algunas naranjas\n"
			sleep(0.1)
			end
			@arbol.oneYearPasses
			sleep(1)
			@arbol.oneYearPasses
			sleep(1)
			@arbol.oneYearPasses
			sleep(1)
			@arbol.oneYearPasses
			sleep(1)
			@arbol.pickAnOrange
			
			
			
			
			
			
			
	
		end


		@th2 = Thread.new do
			#for i in 1..20
			#while arbol.dead != true do
	
=begin	
	
			for i in 1..20
	
			    # mutex.synchronize do
			     #	cv.signal
				@arbol.pickAnOrange
				sleep(0.5)
			     #end
			end
=end

			@arbol.pickAnOrange
			sleep(0)
			@arbol.oneYearPasses
			sleep(2)
			@arbol.oneYearPasses
			sleep(2)
			@arbol.oneYearPasses
			

		
		end

		@th1.join
		@th2.join

	end


		


describe "#Class Orange" do

	it ":Constructor Orange y ejecuion hilos" do
	
	
		expect(@arbol.class).to eq(Orange)
		
		
	end
	
	it ":Clase hilos" do
	
		expect(@th1.class).to eq(Thread)
		expect(@th2.class).to eq(Thread)
	end
	
	it ":Naranjas al final del arbol muerto" do
	

		expect(@arbol.orangeCount).to eq(0)
	
	end
	
	it ":Edad final del arbol" do
	
		expect(@arbol.edad).to eq(9)
	
	end
	

end

end
