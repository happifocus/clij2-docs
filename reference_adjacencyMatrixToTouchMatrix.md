## adjacencyMatrixToTouchMatrix
<img src="images/mini_empty_logo.png"/><img src="images/mini_clij2_logo.png"/><img src="images/mini_empty_logo.png"/>

Converts a adjacency matrix in a touch matrix

### Usage in ImageJ macro
```
Ext.CLIJ2_adjacencyMatrixToTouchMatrix(Image adjacency_matrix, ByRef Image touch_matrix);
```




### Usage in Java


<details>

<summary>
clij2.adjacencyMatrixToTouchMatrix(adjacency_matrix, touch_matrix);
</summary>
<pre class="highlight">// init CLIJ and GPU
import net.haesleinhuepf.clij2.CLIJ2;
import net.haesleinhuepf.clij.clearcl.ClearCLBuffer;
CLIJ2 clij2 = CLIJ2.getInstance();

// get input parameters
ClearCLBuffer adjacency_matrix = clij2.push(adjacency_matrixImagePlus);
ClearCLBuffer touch_matrix = clij2.push(touch_matrixImagePlus);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.adjacencyMatrixToTouchMatrix(adjacency_matrix, touch_matrix);
</pre>

<pre class="highlight">
//show result

// cleanup memory on GPU
clij2.release(adjacency_matrix);
clij2.release(touch_matrix);
</pre>

</details>





### Usage in Matlab


<details>

<summary>
clij2.adjacencyMatrixToTouchMatrix(adjacency_matrix, touch_matrix);
</summary>
<pre class="highlight">% init CLIJ and GPU
clij2 = init_clatlab();

% get input parameters
adjacency_matrix = clij2.pushMat(adjacency_matrix_matrix);
touch_matrix = clij2.pushMat(touch_matrix_matrix);
</pre>

<pre class="highlight">
% Execute operation on GPU
clij2.adjacencyMatrixToTouchMatrix(adjacency_matrix, touch_matrix);
</pre>

<pre class="highlight">
% show result

% cleanup memory on GPU
clij2.release(adjacency_matrix);
clij2.release(touch_matrix);
</pre>

</details>





### Usage in Icy


<details>

<summary>
clij2.adjacencyMatrixToTouchMatrix(adjacency_matrix, touch_matrix);
</summary>
<pre class="highlight">// init CLIJ and GPU
importClass(net.haesleinhuepf.clicy.CLICY);
importClass(Packages.icy.main.Icy);

clij2 = CLICY.getInstance();

// get input parameters
adjacency_matrix_sequence = getSequence();adjacency_matrix = clij2.pushSequence(adjacency_matrix_sequence);
touch_matrix_sequence = getSequence();touch_matrix = clij2.pushSequence(touch_matrix_sequence);
</pre>

<pre class="highlight">
// Execute operation on GPU
clij2.adjacencyMatrixToTouchMatrix(adjacency_matrix, touch_matrix);
</pre>

<pre class="highlight">
// show result

// cleanup memory on GPU
clij2.release(adjacency_matrix);
clij2.release(touch_matrix);
</pre>

</details>



[Back to CLIJ2 reference](https://clij.github.io/clij2-docs/reference)
[Back to CLIJ2 documentation](https://clij.github.io/clij2-docs)

[Imprint](https://clij.github.io/imprint)
