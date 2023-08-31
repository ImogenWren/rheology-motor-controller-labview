# Rheology-LabVIEW-Motor-Controller
 Desktop UI for Rheology experiment Nanotec PD4-C Motor Controller
 
 ![image](https://user-images.githubusercontent.com/97303986/194104709-ff4f2dba-26d3-4cc1-a354-eafea82d6166.png)

 
## Description

This software is designed to control Nanotec PD4-C Stepper Motors, with a user friendly LabVIEW Graphical User Interface. It allows users to Start & Stop the motor, change the rotation speed and direction and obtain an estimated Torque value for the motor under load.

## Prerequisits

Proper function of the software relies on the correct NanoJ program to be installed on the PD4-C Stepper motor. This program can be found in the `PD4-C NanoJ Program` folder. 

Inside this folder is the C++ like NanoJ program `vmmcode.cpp` and a copy of the `nanotec.h` library. It also contains an additonal folder called `CURRENT MOTOR FIRMWARE` which contains the latest working copy of the contents of the PD4-C Motor Flash storage drive. 
This includes:

- CFG.TXT  _Config file for motor initialisation_
- INFO.BIN   _Hardware generated file_
- VMMCODE.USR  _Compiled NanoJ program using Plug & Drive Studio_

The NanoJ software can be updated and programmed into the PD4-C Motor using Nanotec's Plug & Drive Studio.

## Installation

1. Copy the contents of Rheology Motor Controller V1.0 directory into a suitable location on the working PC
2. Connect motor to PC using Micro USB B cable
3. Run `Rheology Motor Controller.exe`

# Usage

## Hardware Controller

When the motor is first powered on, it will immediatly start running the internal NanoJ program. This allows the motor to be controlled via the supplied hardware controller. This has 3 controls:

- Enable Motor _(On/Off)_
- Speed _(0-100 RPM)_
- Direction _(CW/CCW)_

# /////////////////// --- Warning!  --- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

# Hardware controller has no automatic stop on power on! Motor will actuate if speed control is not at ZERO position and Enable Motor is switched to ON.

# It is reccomended to **ALWAYS** zero the speed control and switch **Enable Motor to OFF** before powering off the system, and ensure that the controls are in this position before powering up the system.
# \\\\\\\\\\\\\\\\\\\\\\\\\\ --- ---------  --- /////////////////////
-------------------------------------------------------------------------------------
<br><br>

## Software Controller

To start the software controller. Connect the the DC4-C Motor to the PC with a Micro-B USB Cable, then open the .exe file `Rheology Motor Controller`.

The software will set up the motor in a stable configuration, including zeroing the speed and disabling drive.

When the motor is ready for use, the Motor Status will highlight `Motor Paused` with an amber light.

The speed can be set using the `Set Speed RPM` control, which will send a new velocity command to the motor when the `Apply Speed` button is pressed.

The speed currently set in the motor internal storage is indicated by the `Actual Speed RPM` gauge. The speed can be set to positive values for clockwise movement, or negative values for anti-clockwise movement.

<br><br>

To start the motor, click `Start Motor`. It will start turning at the speed indicated by the `Actual Speed RPM` gauge. The Motor Status window will indicate `Motor Running` with a green light. The speed can be adjusted while the motor is running.

To halt the motor, click the `Halt Motor` button.

## Torque Measurements

_Torque values are calculated via the `Max Torque Nm` value, and the percentage of max current the motor is reporting using. The max current the motor will consume is set via the internal registers, and the value displayed in the `Max Motor Current mA` window is the value interrogated from the internal registers. This value can be changed using Nanotec Plug & Drive Studio, or by updating the CFG.TXT File saved on the motors flash storage._

To obtain an accurate `Torque Nm` reading, the correct value for the maximum torque available from the motor at `Max Motor Current mA` must be input into the `Max Torque Nm` input box. This may be found by measuring the torque delivered by the motor during a stall.

<br><br>

To start Torque Measurements, click `Read Torque` The data will be output to the graph and displayed on the `Motor Current mA`, `Torque %` and `Torque Nm` indicator boxes.

## Exiting Software

To Exist the desktop app, click `Exit Program` This will shut down the motor and leave it in a safe state.

## Engineering Mode & Additional Features

To show the full engineering display, click the `Engineering Mode` button. Additional controls and indicators will appear. To hide the additional controls, click this button again.


To restart the internal NanoJ program in order to use the hardware controller, the `Start NanoJ` button can be pressed, or the motor can be re-powered. Pressing this button will grey out the motor controls. The `Stop NanoJ` button can be used if NanoJ has been restarted at any point to resume software control.

## Exiting Software

Fom any state, pressing the `Exit Program` button will perform a safe stop and shutdown of the motor before exiting the software.



