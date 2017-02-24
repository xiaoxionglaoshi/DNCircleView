# CircleProgress
简单实用的圆形进度条，swift版和OC版

![snapshot](https://github.com/626600815/CircleProgress/blob/master/80295E94-EB6F-4775-8767-115A9EE5D1D9.png)


###使用说明
OC中导入CircleView.h 和.m 文件  在需要的地方使用

    self.circleView.progress = sender.value;

Swift中只需导入CircleView.swift文件  添加代码

    circleView.progress = Double(sender.value)

具体使用参考demo中的例子

记得要在主线程中调用进度

    dispatch_async(dispatch_get_main_queue(), ^{
         self.circle.progress = progress.fractionCompleted;
    });
