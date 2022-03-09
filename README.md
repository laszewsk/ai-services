# Install

## Clone with ssh

```bash
git clone --recurse-submodules --depth 1 git@github.com:laszewsk/nist.git
git clone --recurse-submodules --depth 1 git@github.com:laszewsk/ai-services.git
pip install cloudmesh-installer -U
cloudmesh-installer get catalog
cms help
cd ai-services
npm install
hugo -D server
open  http://localhost:1313/ai-services/
```

## Clone with https

```bash
git clone --recurse-submodules --depth 1 https://github.com/laszewsk/nist.git
git clone --recurse-submodules --depth 1 https://github.com/laszewsk/ai-services.git
pip install cloudmesh-installer -U
cloudmesh-installer get catalog
cms help
cd ai-services
npm install
hugo -D server
open  http://localhost:1313/ai-services/
```

## Running a container locally

You can run docsy-example inside a [Docker](https://docs.docker.com/)
container, the container runs with a volume bound to the `docsy-example`
folder. This approach doesn't require you to install any dependencies other
than [Docker Desktop](https://www.docker.com/products/docker-desktop) on
Windows and Mac, and [Docker Compose](https://docs.docker.com/compose/install/)
on Linux.

1. Build the docker image 

   ```bash
   docker-compose build
   ```

1. Run the built image

   ```bash
   docker-compose up
   ```

   > NOTE: You can run both commands at once with `docker-compose up --build`.

1. Verify that the service is working. 

   Open your web browser and type `http://localhost:1313` in your navigation bar,
   This opens a local instance of the docsy-example homepage. You can now make
   changes to the docsy example and those changes will immediately show up in your
   browser after you save.

### Cleanup

To stop Docker Compose, on your terminal window, press **Ctrl + C**. 

To remove the produced images run:

```console
docker-compose rm
```
For more information see the [Docker Compose
documentation](https://docs.docker.com/compose/gettingstarted/).

## Troubleshooting

As you run the website locally, you may run into the following error:

```
➜ hugo server

INFO 2021/01/21 21:07:55 Using config file: 
Building sites … INFO 2021/01/21 21:07:55 syncing static files to /
Built in 288 ms
Error: Error building site: TOCSS: failed to transform "scss/main.scss" (text/x-scss): resource "scss/scss/main.scss_9fadf33d895a46083cdd64396b57ef68" not found in file cache
```

This error occurs if you have not installed the extended version of Hugo.
See our [user guide](https://www.docsy.dev/docs/getting-started/) for instructions on how to install Hugo.

[alternate dashboard]: https://app.netlify.com/sites/goldydocs/deploys
[deploys]: https://app.netlify.com/sites/docsy-example/deploys
[Docsy user guide]: https://docsy.dev/docs
[Docsy]: https://github.com/google/docsy
[example.docsy.dev]: https://example.docsy.dev
[Hugo theme]: https://www.mikedane.com/static-site-generators/hugo/installing-using-themes/
[Netlify]: https://netlify.com
