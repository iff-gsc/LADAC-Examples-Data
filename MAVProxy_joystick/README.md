# MAVProxy Joystick

Instructions of how to use MAVProxy joystick module to control the multicopter.

## Motivation

It is not immediately clear from the [MAVProxy Joystick Documentation on Github](https://github.com/ArduPilot/MAVProxy/blob/master/docs/JOYSTICKS.md) and the instruction on the [ArduPilot website](https://ardupilot.org/mavproxy/docs/modules/joystick.html) how to use a joystick.
Some notes here.

## Installation

Copy and replace the joystick parameters (e.g. `xbox-360.yml`) into MAVProxy installation folder:
`~/.local/lib/python3.8/site-packages/MAVProxy/modules/mavproxy_joystick/joysticks/`

If you have a different joystick or want to reconfigure it, you have to modify the yml file or add a new one.
Note that MAVProxy will automatically use the parameters file with the right name for your joystick that is specified in the `match` section.

## Test

1. Start SITL with adjusted Bebop2 parameter file:
    ```
    sim_vehicle.py -v ArduCopter --model=gazebo --add-param-file=<path_to_multicopter>/data/ArduPilot_Frame_params/Parrot_Bebop2_MATLAB_SITL.param
    ```
2. Run the Bebop2 flight dynamics simulation (Simulink).
3. Load joystick module with MAVProxy (Note that there are some problems:
Sometimes it does not connect if QGroundControl is open, sometimes it does not connects until you open QGroundControl. However, make sure to close QGroundControl after the connection is established.):
    ```
    mavproxy.py --master=udp:127.0.0.1:14550
    ```
    Of course, the IP must be adjusted if flying with the real vehicle (e.g. `mavproxy.py --master=udp:192.168.42.9:14550`).
)
4. Then load the joystick module in the same terminal:
    ```
    module load joystick
    ```