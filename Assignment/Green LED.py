import matplotlib.pyplot as plt

current = [0, 0.101, 0.203, 0.301, 0.401, 0.505, 0.602, 0.705, 0.796, 0.905, 0.997]
voltage = [0, 0.689, 1.375, 1.770, 1.812, 1.845, 1.847, 1.855, 1.863, 1.868, 1.871]

plt.plot(voltage, current, marker='x')
plt.xlabel("Voltage (V)")
plt.ylabel("Current (mA)")
plt.title("Green LED")
plt.show()