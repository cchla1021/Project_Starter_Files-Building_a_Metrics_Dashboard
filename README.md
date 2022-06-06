**Note:** For the screenshots, you can store all of your answer images in the `answer-img` directory.

## Commands for Exposing Grafana - Resolve Unable to access project on localhost:3000
* kubectl patch svc "prometheus-grafana" --namespace "monitoring" -p '{"spec": {"type": "LoadBalancer"}}'
* kubectl --namespace monitoring port-forward svc/prometheus-grafana --address 0.0.0.0 3000:80

## Commands for Exposing the application
* kubectl patch svc "fronte end-service" -p '{"spec": {"type": "LoadBalancer"}}'
* kubectl port-forward svc/frontend-service 8080:8080


## Verify the monitoring installation
![pods](https://github.com/cchla1021/Project_Starter_Files-Building_a_Metrics_Dashboard/blob/main/answer-img/verify-installation.PNG)

## Setup the Jaeger and Prometheus source
![pods](https://github.com/cchla1021/Project_Starter_Files-Building_a_Metrics_Dashboard/blob/main/answer-img/Setup-the-Jaeger-and-Prometheus-source.PNG)

## Create a Basic Dashboard
Create a dashboard in Grafana that shows Prometheus as a source. Take a screenshot and include it here.
![pods](https://github.com/cchla1021/Project_Starter_Files-Building_a_Metrics_Dashboard/blob/main/answer-img/Grafana-Prometheus-Basic-Dashboard.PNG)

## Describe SLO/SLI
A Service-Level Objectives is a measurable goal set by the SRE team to ensure a standard level of performance during a specified period of time. Once we have a clear definition and objective for the level of performance we want to deliver then Service-Level Indicators (SLIs) comes in to do actual measurement of performance we defined in the SLO. In this case, SLI would be the actual measurement of the uptime. Perhaps during that year, you actually achieved 99.5% uptime and request-response time or 97.3% uptime and request response time. These measurements are SLI. Notice that the above example is a ratio which is a measurement to a given amount of time (the measured uptime and request-response time per year).

## Creating SLI metrics.
It is important to know why we want to measure certain metrics for our customer. Describe in detail 5 metrics to measure these SLIs. 
A Service-Level Indicator (SLI) is a specific metric used to measure the performance of a service. These metrics are relevant and built around the four signals (latency, Memory Usage, Error Rate, Uptime, Network)

* Latency: Latency is important to monitor since this will tell the developers the time it takes for data to pass form one point to another.
* Memory Usage: Memory usage is important for moniotoring since if the application uses too much memory the applicaiton can start to feel slow and the user will be impacted. Tracking this metric the developer can make tweaks to bring down the memory usage of the application.
* Error Rate: Error rate is important to monitor since this will tell the developers the amount of errors that are appearing and at the rate they appear. This can point to more important errors by seeing how many of said errors appeared at a given rate the developers can know which will need to be a priority.
* Uptime: Uptime is important to monitor so that developers know the percentage of the time the service is running. If it drops below a certain point this can be cause for concern and if it was not tracked it would be hard to tell how the service is handling.
* Network: Network is important to monitor since the developer can see how much bandwith is required for a service to function. With this data the developer can look for ways to decrese the amount of bandwith required.

## Create a Dashboard to measure our SLIs
*TODO:* Create a dashboard to measure the uptime of the frontend and backend services We will also want to measure to measure 40x and 50x errors. Create a dashboard that show these values over a 24 hour period and take a screenshot.

## Tracing our Flask App
*TODO:*  We will create a Jaeger span to measure the processes on the backend. Once you fill in the span, provide a screenshot of it here. Also provide a (screenshot) sample Python file containing a trace and span code used to perform Jaeger traces on the backend service.

## Jaeger in Dashboards
*TODO:* Now that the trace is running, let's add the metric to our current Grafana dashboard. Once this is completed, provide a screenshot of it here.

## Report Error
*TODO:* Using the template below, write a trouble ticket for the developers, to explain the errors that you are seeing (400, 500, latency) and to let them know the file that is causing the issue also include a screenshot of the tracer span to demonstrate how we can user a tracer to locate errors easily.

TROUBLE TICKET

Name:

Date:

Subject:

Affected Area:

Severity:

Description:


## Creating SLIs and SLOs
*TODO:* We want to create an SLO guaranteeing that our application has a 99.95% uptime per month. Name four SLIs that you would use to measure the success of this SLO.

## Building KPIs for our plan
*TODO*: Now that we have our SLIs and SLOs, create a list of 2-3 KPIs to accurately measure these metrics as well as a description of why those KPIs were chosen. We will make a dashboard for this, but first write them down here.

## Final Dashboard
*TODO*: Create a Dashboard containing graphs that capture all the metrics of your KPIs and adequately representing your SLIs and SLOs. Include a screenshot of the dashboard here, and write a text description of what graphs are represented in the dashboard.  
