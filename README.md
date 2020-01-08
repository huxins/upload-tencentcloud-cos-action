# upload-tencentcloud-cos-action

upload-tencentcloud-cos-action cos上传插件

## 简介

基于 [coscmd](https://cloud.tencent.com/document/product/436/10976) 封装的cos上传插件

## 栗子


```yaml
---
name: upload-tencentcloud-cos-action

on: [push]

jobs:
  upload:
    name: Upload cos
    runs-on: ubuntu-latest
    steps:
      - name: upload file
        uses: upload-tencentcloud-cos-action@master
        with:
          secret_id: ${{ secrets.secret_id }}
          secret_key: ${{ secrets.secret_key }}
          bucketname_appid: {存储桶名称}
          region: {存储桶区域}
          localpath: {本地文件路径}
          cospath: {cos文件路径}
```