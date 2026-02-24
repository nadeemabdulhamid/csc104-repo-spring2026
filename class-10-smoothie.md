# CSC 104 - Class 10 - The Smoothie Station

You are the lead engineer for a smoothie factory. Your signature drinks are the **Classic Berry**, **Banana Dream**, and the **Power Mix**. To ensure consistency, your factory uses a strict "Recipe Matrix" for every bottle produced.

### The Recipe Matrix
The ingredients required for one bottle of each smoothie (in ounces) are:

| Ingredient | Classic Berry | Banana Dream | Power Mix |
| :--- | :--- | :--- | :--- |
| **Strawberries** | 8 oz | 2 oz | 5 oz |
| **Bananas** | 2 oz | 10 oz | 5 oz |
| **Yogurt** | 6 oz | 4 oz | 6 oz |

(Note, each one uses exactly 16 oz = 1 lb of ingredients.)

## Tasks

### Part 1: Procurement (Forward Calculation)
A local school district has placed an order for the following:
* **120** Classic Berry smoothies
* **80** Banana Dream smoothies
* **150** Power Mix smoothies

Define your order vector and recipe matrix in MatLab code. Calculate the total ounces of *strawberries*, *bananas*, and *yogurt* needed to fulfill this order using matrix multiplication.

<details><summary>Numerical answer (to check your code output against)</summary>
You need to buy 1,870 oz of Strawberries, 1,790 oz of Bananas, and 1,940 oz of Yogurt.
</details>


### Part 2: Bottleneck
An equipment failure has limited your yogurt supply to **1,400 oz**. You must fulfill the school’s order while maintaining the original order *ratio* (120:80:150).

- Identify the required yogurt from Part 1.
- Calculate the scale factor $k = \frac{\text{Available Yogurt}}{\text{Required Yogurt}}$.
- Determine the new maximum number of bottles you can produce of each smoothie type.

<details><summary>Numerical answer</summary>
To maintain the 120:80:150 ratio with limited yogurt, you can only make approximately 86 Classic, 57 Banana, and 108 Power smoothies.
</details>


### Part 3: Inventory on Hand
A surprise delivery arrives at the loading dock with exactly:
* **2,000 oz** of Strawberries
* **1,800 oz** of Bananas
* **1,900 oz** of Yogurt

Calculate exactly how many of each smoothie type you must produce to use every single ounce of this delivery. Use the MATLAB backslash operator ($x = A \setminus B$) or the `inv()` function to solve the system. 

Are the results realistic? How many wasted ounces of each ingredient will you end up with?

<details><summary>Numerical answer</summary>

```matlab
bottles =
   191.67
   118.75
    45.83

wasted =
   11.00
   13.00
   12.00
```

</details>


### Part 4: Revenue Computation

Now that you have determined the production capacity based on your inventory, the Accounting Department needs to know the projected revenue. Each smoothie has a different market price based on its ingredient cost and popularity.

### Price Vector ($p$)
The selling price for each bottle is:
* **Classic Berry:** $6.50
* **Banana Dream:** $5.25
* **Power Mix:** $7.50

Using the production results from **Part 3**:

1. Define a vector `p` containing the prices for the three smoothies.
2. Use matrix multiplication (row x column or the dot product) to calculate the potential total revenue.
3. How much revenue is being lost due to waste?

<details><summary>Numerical answer</summary>

These are my numbers:
```
total_revenue = 2213.02
wasted_revenue = 14.52
```

</details>