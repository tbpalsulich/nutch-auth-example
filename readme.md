Nutch HTTP Client Authentication
--------------------------------

This WIP Nutch deployment uses Nutch to automatically log into and crawl www.mrs.org.

Run `build.sh` to checkout the Nutch trunk, build it, and copy the necessary
configuration files. Once finished, `cd dist` to use the newly configured Nutch distribution.

Please see `[conf/nutch-site.xml](../master/conf/nutch-site.xml)` and
`[conf/httpclient-auth.xml](../master/conf/httpclient-auth.xml)` for the updated
configuration files.

`[urls/seed.txt](urls/seed.txt)` is used as a seed for crawling when you run the command
`bin/crawl urls/ CrawlData/ N`, where `N` is the number of rounds of fetching.

You can try crawling a single page by running `bin/nutch parsechecker http://mrs.org/home/`.

After running a crawl or using `parsechecker`, the logs will be in `logs/hadoop.log`.

Make sure to update the credentials in `dist/conf/httpclient-auth.xml`!
