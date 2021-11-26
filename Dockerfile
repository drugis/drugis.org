FROM node:16 as yarndeps

COPY . /var/drugisorg
WORKDIR /var/drugisorg
RUN yarn
RUN ls node_modules && ls

FROM ruby

RUN gem install jekyll jekyll-paginate jekyll-sass-converter jekyll-scholar webrick

COPY . /var/drugisorg
WORKDIR /var/drugisorg

RUN git submodule init && git submodule update --remote --recursive
COPY --from=yarndeps /var/drugisorg/node_modules /var/drugisorg/node_modules
RUN ls node_modules
RUN ln -sf /var/drugisorg/node_modules/foundation-sites/scss/util/ _sass/drugis-css/util

CMD jekyll build

