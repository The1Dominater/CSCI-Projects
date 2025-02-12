
|  Method 	        | Local  	| Same-Zone  	|  Different Region 	|
|-------------------|-----------|---------------|-----------------------|
|   REST add	    |  2.232    |   2.640	    |  	301.272             |
|   gRPC add	    |  0.681    |   0.533       |   112.653             |
|   REST rawimg	    |  4.577    |   6.821       |  1103.241	            |
|   gRPC rawimg	    |  6.329    |   7.214       |   190.991	            |
|   REST dotproduct	|  3.062    |   4.573	    |  	425.477             |
|   gRPC dotproduct	|  3.001    |   4.119	    |   183.881             |
|   REST jsonimg	| 214.827   | 264.991	    |  1310.633 	        |
|   gRPC jsonimg	| 201.003   | 214.003       |   700.821             |
|   PING            |  0.036    |   0.301       |    57.237             |

You should measure the basic latency  using the `ping` command - this can be construed to be the latency without any RPC or python overhead.

You should examine your results and provide a short paragraph with your observations of the performance difference between REST and gRPC. You should explicitly comment on the role that network latency plays -- it's useful to know that REST makes a new TCP connection for each query while gRPC makes a single TCP connection that is used for all the queries.

It appears that for the local client-server and same-zone calls REST and gRPC did not have to great of a difference, with unnoticeable variations on the local connections and minor improvements by rGPC on same-zone connections. However, noticeable differences appeared when the latency increased signficantly when makes calls to the server running on a VM in the European zone. In this category rGPC outperformed REST noticeably in all procedures. Knowing how REST makes a new TPC connection for each query, while rGPC only uses one TCP connection for all queries, this difference makes sense. The increased latency compounds the impact of the REST protocols inefficient use of a new TCP connections for each query, while hardly changing the speed of the gRPC procedures. Since the gRPC procedures don't need to establish multiple TCP connections, the increase in runtime primarly can be contributed to the increased latency needed to reach the far away zone. 