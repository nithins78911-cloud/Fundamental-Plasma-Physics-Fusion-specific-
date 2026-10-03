program guiding_Centre
implicit none
real(8), parameter :: q = 1.602176634d-19  ! charge in coulombs
real(8), parameter :: m = 1.676221923d-27  ! mass in kgs

real(8) :: r(3), v(3) , B(3)   ! (x,y,z) components
real(8) :: v_cross_B(3)
real(8) :: R_gyro(3)

print *, "enter the initial parameters" 

print*, "enter the intital position vector (x,y,z) in meters separately in spaces and commas"
read(*,*) r(1), r(2), r(3)

print *, "enter velocity vector (VX, VY, VZ) in m/s eg: 1e5 0 0)"
read(*,*) V(1), v(2), v(3)

print *, "enter the magnetic field vector Bx,By, Bz in tesla eg: 0 0 1.5"
read(*,*) B(1), B(2), B(3)

print *, "-----------------------------------------------------------------"
v_cross_B(1) = v(2)*B(3) - v(3)*B(2)
v_cross_B(2) = v(3)*B(1) - v(1)*B(3) 
v_cross_B(3) = v(1)*B(2) - v(2)*B(1)

R_gyro = r + (m / (q * dot_product(B, B))) * v_cross_B 

!results 

print *, ""
print *, "-----particle Micro-dynamics results -----"
print *, "your input position(m): ", r
print *, "your input velocity(v): ", v
print *, "your input B-Field(T):  ", B

print *, "calculated gyro: " ,R_gyro 
print *, "larmor radius / y-shift (m): ", R_gyro(2) - r(2)
print *, "-----------------------------------------------------"

end program guiding_centre
















