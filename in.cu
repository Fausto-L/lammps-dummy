# Cu melt
# Basic Parameters of the model
units metal
boundary p p p
atom_style atomic # is commnly used for metals, no info of bonds, bond angles, etc; 
                  # full for ploymers all info included
timestep 0.001 # 1fs 1/10 of the period of atom oscillation
neighbor 2.0 bin #?截断半径

# modeling of cu crystal cell
lattice fcc 3.61
region box block 0 5 0 5 0 5 units  # 5 lattices ;+box 5Am
create_box 1 box
create_atoms 1 box

# thermodynamics output
thermo 100
thermo_style custom step temp pe ke

# potential function(势函数、立场)
pair_style eam
pair_coeff * * Cu_u3.eam

# temp initialization 
velocity all 300 90985

#* 含多种原子，防止原子重叠，可以能量最小化

# melt
dump 1 all atom 1000 melt.xyz
fix 1 all nvt temp 300 2000 0.01 #(系综ensemble) 300K-2000K 升温速率:1700K/10ps #!step*100?
run 10000 # 10ps
