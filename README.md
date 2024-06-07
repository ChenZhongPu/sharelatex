# ShareLatex

[sharelatex/sharelatex](https://hub.docker.com/r/sharelatex/sharelatex)不是完整的texlive，缺少很多必要的包。本项目基于该镜像添加了完整的（约4500个）texlive包。

## 使用方法
推荐使用[overleaf toolkit](https://github.com/overleaf/toolkit)，初始化后将`config`目录中的`overleaf.rc`文件按如下配置：

```
OVERLEAF_IMAGE_NAME=zhongpu/sharelatex
```