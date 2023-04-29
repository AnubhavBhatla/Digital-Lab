import matplotlib.pyplot as plt
import numpy as np

current_GreenLED = np.array([0, 0.101, 0.203, 0.301, 0.401, 0.505, 0.602, 0.705, 0.796, 0.905, 0.997])
current_GreenLED = np.log(current_GreenLED)
voltage_GreenLED = np.array([0, 0.689, 1.375, 1.770, 1.812, 1.845, 1.847, 1.855, 1.863, 1.868, 1.871])

plt.plot(voltage_GreenLED, current_GreenLED, marker='x', color='green', label='Green')

current_RedLED = np.array([0, 0.101, 0.204, 0.297, 0.400, 0.499, 0.596, 0.695, 0.806, 0.896, 0.993])
current_RedLED = np.log(current_RedLED)
voltage_RedLED = np.array([0, 0.692, 1.377, 1.568, 1.598, 1.612, 1.623, 1.629, 1.636, 1.639, 1.644])

plt.plot(voltage_RedLED, current_RedLED, marker='x', color='red', label='Red')

current_4148Diode = np.array([0, 0.105, 0.200, 0.296, 0.398, 0.494, 0.603, 0.702, 0.795, 0.901, 1.001])
current_4148Diode = np.log(current_4148Diode)
voltage_4148Diode = np.array([0, 0.458, 0.505, 0.534, 0.552, 0.565, 0.577, 0.585, 0.590, 0.596, 0.6])

plt.plot(voltage_4148Diode, current_4148Diode, marker='x', color='black', label='4148')

plt.xlabel("Voltage (V)")
plt.ylabel("log of Current")
plt.title("Diodes")
plt.legend(fancybox=True, shadow=True)
plt.show()