FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.0

RUN gem install dcm_dict --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["dcm_dict_converter.rb"]
CMD ["--help"]
