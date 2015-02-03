---
title: Testen von HTTP-Verbindungen
author: Dennis Neumann
layout: post
excerpt_separator: <!--more-->
---

HTTP Verbindungen Testen:

<!--more-->

{% highlight java %}
public class JackrabbitHotfolder {

	private HttpClient client;

	// for unit tests
	void setHttpClient(HttpClient newClient) {
		client = newClient;
	}

	public void configureConnection(String serverUrl) {
		...
		client = new HttpClient();
		...
		client.setHostConfiguration(hostConfig);
	}

	public void copyFile(URI from, URI to) throws IOException {
		...
		try {
			responseCode = client.executeMethod(method);
			if (responseCode >= 401) {
				throw new IllegalStateException("Got illegal response code " + responseCode);
			}
		} catch (IOException e) {
			...
		}

	}
}
{% endhighlight %}

Test:

{% highlight java %}
HttpClient clientMock = mock(HttpClient.class);
JackrabbitHotfolder jack = new JackrabbitHotfolder();

// kein configureConnection()

jack.setHttpClient(clientMock);
jack.copyFile(fromUri, toUri);

verify(clientMock).executeMethod(any(PutMethod.class));

when(clientMock.executeMethod(...)).thenReturn(401);
when(clientMock.executeMethod(...)).thenThrow(new IOException());
{% endhighlight %}