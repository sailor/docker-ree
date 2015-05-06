FROM sailor/ruby-build:latest

RUN CONFIGURE_OPTS=--no-tcmalloc CFLAGS="-O2 -fno-tree-dce -fno-optimize-sibling-calls" ruby-build ree-1.8.7-2012.02 /usr/local/ree-1.8.7-2012.02
ENV PATH /usr/local/ree-1.8.7-2012.02/bin:$PATH
RUN gem install bundler

CMD 'irb'
