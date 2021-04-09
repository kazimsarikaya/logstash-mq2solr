FROM docker.elastic.co/logstash/logstash-oss:7.9.3
RUN  logstash-plugin install logstash-output-solr_http \
     && sed -i '/iso8601/d' /usr/share/logstash/vendor/bundle/jruby/2.5.0/gems/logstash-output-solr_http-3.0.5/lib/logstash/outputs/solr_http.rb
     
