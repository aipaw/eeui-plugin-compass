# 指南针

## 安装

```shell script
eeui plugin install https://github.com/aipaw/eeui-plugin-compass
```

## 卸载

```shell script
eeui plugin uninstall https://github.com/aipaw/eeui-plugin-compass
```

## 引用

```js
const compass = app.requireModule("eeui/compass");
```

### get(callback) 获取当前方位角

#### 参数

1.  [`callback`] (Function)

#### 返回

1.  `result` (Object)
    *   `heading` (Float) (0~359.99, magnetic)

#### 示例

```
compass.get((ret) => {
    console.log(ret)
})
```

* * *

### watch(options, callback) 实时监听方位角

1.  [`options`] (Object)
    *   `interval` (Int) (ms, default: `32`)

2.  [`callback`] (Function)

#### 返回

1.  `result` (Object)
    *   `heading` (Float) (0~359.99, magnetic)

#### 示例

```
compass.watch((ret) => {
    console.log(ret)
})
```

* * *

### clearWatch(callback) 取消监听方位角

#### 参数

1.  [`callback`] (Function)

#### 示例

```
compass.clearWatch(() => {
    console.log('cleared')
})
```

* * *

> **Error**<br/>
> COMPASS_PERMISSION_DENIED<br/>
> COMPASS_NOT_SUPPORTED<br/>
> COMPASS_INTERNAL_ERROR<br/>
> GET_COMPASS_INVALID_ARGUMENT<br/>
> WATCH_COMPASS_INVALID_ARGUMENT
