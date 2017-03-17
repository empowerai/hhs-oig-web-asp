
[![HHS OIG Website](https://img.shields.io/badge/-HHS%20OIG-a3c5ff.svg?colorA=133670&logo=data%3Aimage%2Fjpeg%3Bbase64%2C%2F9j%2F4AAQSkZJRgABAQAASABIAAD%2F4QCMRXhpZgAATU0AKgAAAAgABQESAAMAAAABAAEAAAEaAAUAAAABAAAASgEbAAUAAAABAAAAUgEoAAMAAAABAAIAAIdpAAQAAAABAAAAWgAAAAAAAABIAAAAAQAAAEgAAAABAAOgAQADAAAAAQABAACgAgAEAAAAAQAAABmgAwAEAAAAAQAAABgAAAAA%2F%2B0AOFBob3Rvc2hvcCAzLjAAOEJJTQQEAAAAAAAAOEJJTQQlAAAAAAAQ1B2M2Y8AsgTpgAmY7PhCfv%2FAABEIABgAGQMBIgACEQEDEQH%2FxAAfAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgv%2FxAC1EAACAQMDAgQDBQUEBAAAAX0BAgMABBEFEiExQQYTUWEHInEUMoGRoQgjQrHBFVLR8CQzYnKCCQoWFxgZGiUmJygpKjQ1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4eLj5OXm5%2Bjp6vHy8%2FT19vf4%2Bfr%2FxAAfAQADAQEBAQEBAQEBAAAAAAAAAQIDBAUGBwgJCgv%2FxAC1EQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4%2BTl5ufo6ery8%2FT19vf4%2Bfr%2F2wBDAAkGBxMSEhUSExIWFRUXFRgYGRcYGBcVFxcXGhcXFxgXGhgYHSghGB0lHRcVITEhJSkrLi4uGB8zODUtNygtLiv%2F2wBDAQoKCg4NDhsQEBsvJR4lLS0rLS8uLS0tLS0tLi0tLS0tLS8tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS3%2F3QAEAAL%2F2gAMAwEAAhEDEQA%2FAOO8HeGVumBkdVTkjdkLgHGWPvyAuRuwa6oS6KhMZlcjO0yLCTED%2FvBcED1z2qnYXJGiTeUBkPbh%2BAf3QKk5yOB1ye3NMhtnNjMgRv3kglKlCTvjZVXEoOxTkKMZ5zz3qZT97XYElbQyPF2gpbMrRujxyDchQ5BXAOf9k89PTkd65vFd7coq6S%2B7af8ASyYyFAOQm2Tnvg7xn8K4DNbUpOUdSZpJ6H%2F%2F0OD8L%2BJXs2YbQ8bAh42xtcEfdb0XqcjOCTwa6yLW9NSIxo90kJbebdJgIi%2FX733gv%2ByCB7V5rQv3B%2FnuKuUVchM6XxJ4kNyFjRFjhjG1I0%2B6qg8Y4HbGfyrnt1Ef3R9KbWiSS0E2f%2F%2FZ)](https://hhs-oig-web-asp-dev.herokuapp.com)
[![Gemnasium Dependency Status](https://gemnasium.com/badges/github.com/nci-ats/hhs-oig-web-asp.svg)](https://gemnasium.com/github.com/nci-ats/hhs-oig-web-asp)
[![GitHub Tags](https://img.shields.io/github/tag/nci-ats/hhs-oig-web-asp.svg)](https://github.com/nci-ats/hhs-oig-web-asp/tags)
[![GitHub Contributors](https://img.shields.io/github/contributors/nci-ats/hhs-oig-web-asp.svg)](https://github.com/nci-ats/hhs-oig-web-asp/graphs/contributors)
[![GitHub Issues](https://img.shields.io/github/issues/nci-ats/hhs-oig-web-asp.svg)](https://github.com/nci-ats/hhs-oig-web-asp/issues)
[![Semver](https://img.shields.io/badge/SemVer-2.0-blue.svg)](http://semver.org/spec/v2.0.0.html)

# HHS OIG Website

A repository for the HHS OIG Website.  Serving Classic ASP through Node.js with assets in AWS S3.

## Setup

1. Clone or download this repository.
2. Run `npm install` to install application and all dependencies.
3. Run `npm start` to start Node.js server.

## Configuration

- Environment variables:
  - PORT | Default: 3001
- Dotenv:
  - [Dotenv](https://www.npmjs.com/package/dotenv) is used which can load environment variables from a .env file into process.env
  - Example: PORT=8080

## Dependencies

Refer to application package and dependency trackers for dependency information:
- Application package:
  - [package.json](https://github.com/nci-ats/hhs-oig-web-asp/blob/dev/package.json)
  - [npm-shrinkwrap.json](https://github.com/nci-ats/hhs-oig-web-asp/blob/dev/npm-shrinkwrap.json)
- Dependency trackers:
  - [Gemnasium](https://gemnasium.com/github.com/nci-ats/hhs-oig-web-asp/)

## Point of Contact and Notifications
You can report issues and submit questions by opening a new [Issue](https://help.github.com/articles/creating-an-issue/) in GitHub. You can [Watch](https://help.github.com/articles/watching-repositories/) this repo to receive notifications from GitHub when a new issue is posted, when an existing issue’s status is updated, and when a pull request is created. 

## Contributing

See [CONTRIBUTING](CONTRIBUTING.md) for additional information.
