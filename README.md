## See

![Blur Glass - Google Chrome.png](https://github.com/shAdow-XJY/blur_glass/blob/master/example/assets/BlurGlass-GoogleChrome.png)

## use

```aidl
BlurGlass(
                        marginValue: 5.0,
                        paddingValue: 5.0,
                        child: Row(
                          children: [
                            Icon(Icons.star),
                            Icon(Icons.list),
                            Icon(Icons.zoom_in),
                          ],
                        )
                    )
```

## Function creator

```
  BlurGlass({Key? key,
             required this.child,
             this.marginValue = 20.0,
             this.paddingValue = 20.0,
             this.color,
             this.outBorderRadius = 20.0, //
             this.inBorderRadius = 30.0,  //
             this.filterX = 10.0,         //The degree of blurriness
             this.filterY = 10.0          //模糊程度
             }) : super(key: key);
```

## Link

Github:[shAdow-XJY/blur_glass: A simple blur glass widget easy to use in Flutter. (github.com)](https://github.com/shAdow-XJY/blur_glass)

Gitee:[shAdow-XJY/blur_glass (gitee.com)](https://gitee.com/shAdowPlusing/blur_glass)