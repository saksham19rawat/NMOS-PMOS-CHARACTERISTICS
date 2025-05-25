# NMOS AND PMOS CHARACTERISTICS

## BEFORE WE PROCEED
In my circuit-design-simulation-tools repository, I covered the basics of EDA tools and how to set them up using a CMOS inverter as an example. So in this repository, we’ll dive straight into the actual working of the CMOS inverter





## PLOTTING Vds CHARACTERISTICS OF NMOS

The components used are:
**nfet_01v8.sym** - from xschem_sky130 library
**vsource.sym** - from xschem devices library
**code_shown.sym** - from xschem devices library

I used the above to plot the basic characteristic plots for an NMOS Transistor, That is **Ids vs Vds** and **Ids vs Vgs**.After this just hit **Netlist** then Simulate. ngspice would pop up and start doing the simulation based calculations. It will take time as all the libraries need to be called and attached to the simulation spice engine. Once that is done, you need to write a couple commands in the ngspice terminal:

**display** - This would display all the vectors available for plotting and printing.

# NMOS CHARACTERISTICS
An **NMOS transistor (n-type metal-oxide-semiconductor transistor)** is a type of MOSFET (Metal-Oxide-Semiconductor Field-Effect Transistor) that uses **n-type carriers (electrons)** as the majority charge carriers.

The **Channel** is made up of electrons and the substrate is of **P-Type** 

The flow of current is from the **Drain towards the source**
![image alt](https://www.censtry.com/files/ueditor/image/20240131/6384228715111282221516252.png)

![image alt](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ09uWkCK_FGyIydn89HTp6dpdWlScXAzbCNw&s)

### CIRCUIT DIAGRAM
![image alt](https://github.com/saksham19rawat/NMOS-PMOS-CHARACTERISTICS/blob/main/project%20work/1.png?raw=true)

### NGSPICE
![image alt](https://github.com/saksham19rawat/NMOS-PMOS-CHARACTERISTICS/blob/main/project%20work/ng%20spice%201.png?raw=true)

### Vds-DCsweep
![image alt](https://github.com/saksham19rawat/NMOS-PMOS-CHARACTERISTICS/blob/main/project%20work/-vgs.png?raw=true)

### Vgs-DCsweep
![image alt](https://github.com/saksham19rawat/NMOS-PMOS-CHARACTERISTICS/blob/main/project%20work/-vds.png?raw=true)

###




