---
tags:
- doc
- page-doc
abstract: |
  All the configuration options for how to run the generation script.
---

# Config
There are several different ways ot build the site, there's also several commands you can run
including one to sync your site to s3.

## Flags

All configuration variables that can be passed to the command line can also be defined in a config
file named `.sitefs-config.yml`.

| Flag | CLI | Description | Default |
|---|---|---|---|
| `port` | yes | What port should the dev server run on | 8050 |
| `force` | yes | Rebuild or upload all files regardless of cache status | false |
| `index_format` | yes | How to generate the html files so that they're served without a `.html` extension | all-index |
| `aws_region` | | When uploading what region the S3 instance is | |
| `aws_s3_bucket` | | Bucket to upload the files to | |
| `aws_access_key_id` | | Access key for using S3 api | |
| `aws_secret_access_key` | | Secret key for using S3 api | |
| `ignore_patterns` | | File patterns to not upload or build | [Link](...) |

### Index Format

Basic fileservers often require `filename.html` to be accessed via `mysite.com/filename`. In order to allow the files to be
served with other means you can build them into different formats.

| Format Key | Description | Output |
|---|---|---|
| `all-index` | Unless it's an index file create a new folder | `filename/index.html` |
| `github` | Creates file with extension, github pages allows these urls to be accessed simply | `filename.html` |
| `aws` | Creates a file without the extension | `filename` |

## Commands

There are a few commands you can tell `sitefs` to do.

| Command | Description |
|---|---|
| `build` | Build the asset files and return |
| `watch` | (default) Build and watch the directory for chanages. Also spawns a server for development, don't use this for production |
| `upload` | Will sync all files to the S3 bucket specified in the config file |
| `clean` | Deletes all generated files, useful if you're changingwhat index format you're using |