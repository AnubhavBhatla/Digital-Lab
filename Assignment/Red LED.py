import matplotlib.pyplot as plt

current = [0, 0.101, 0.204, 0.297, 0.400, 0.499, 0.596, 0.695, 0.806, 0.896, 0.993]
voltage = [0, 0.692, 1.377, 1.568, 1.598, 1.612, 1.623, 1.629, 1.636, 1.639, 1.644]

plt.plot(voltage, current, marker='x')
plt.xlabel("Voltage (V)")
plt.ylabel("Current (mA)")
plt.title("Red LED")
plt.show()