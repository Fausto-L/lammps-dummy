# Introduction to LAMMPS

## Brief intro

- can run on serial, but when it comes to hundreds of atoms, mpi should be implemented for greater efficiency.

## Conventions of LAMMPS

*Credits to [PARISlab@UCLA](https://www.youtube.com/@paris_lab)*

### Cubic box

- For a cubix box, $$l_x=l_y=l_z=edgeofthebox$$ and $$xy=xz=yz=0$$

- $x_{lo},y_{lo},z_{lo}$ can always be chosen as being zero, so that:

$x_{lo}=0,x_{hi}=l_x=a,$
$y_{lo}=0,y_{hi}=l_y=a,$
$z_{lo}=0,z_{hi}=l_z=a,$

![cube](single%20cube.png)

In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole, filled with the ends of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it to sit down on or to eat: it was a [hobbit-hole][1], and that means comfort.

[1]: <https://en.wikipedia.org/wiki/Hobbit#Lifestyle> "Hobbit lifestyles"
