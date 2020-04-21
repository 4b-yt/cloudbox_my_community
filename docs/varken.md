# cloudbox_my_community varken/grafana

Based originally on https://github.com/Cloudbox/Community/wiki/Varken and DOCKStarter

**TODO** - Copy varken config automatically and configure ini with the local config from docker.
progress so far - the radarr_api_key and sonarr_api_key are gathered in the facts in the common task run.

```
  bash run.sh varken
   ```

This needs

| Grafana Dashboard Settings |    |
|---|---|
|**Username**| admin  |
|**Password**| admin  |
|**Subdomain**| grafana |

1. Run the varken tag to install varken/influxdb/grafana:

2. Edit /opt/varken/config/varken.ini with your instance details (API keys)

   Use your external IP in the Tautilli/PlexPY fallback IP.

3. Restart varken when any changes are made. docker restart varken.

4. Monitor results with docker logs varken to look for any errors with API keys or settings.

5. Visit grafana https://grafana.domain.com - default login is admin.

6. Add data source to Grafana.

   **Type**: InfluxDB 

   **Name**: InfluxDB

   **HTTP**: URL = http://influxdb:8086

   **InfluxDB Details**: Database = varken

   Save & Test

7. Import Grafana Dashboard  (imported via Dashboards > Manage > Import):
  
   **URL** https://grafana.com/grafana/dashboards/9585
  
   **ID** 9585
  