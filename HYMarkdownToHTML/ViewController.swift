//
//  ViewController.swift
//  HYMarkdownToHTML
//
//  Created by Yan Hu on 2019/1/17.
//  Copyright © 2019 yan. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let markdown =
        """
        Swift 中最简单最优雅的引用 oc，c 方式。

        首先建一个group， 就是你要 import 的，如图文件名叫 Modules，所以在哪里要使用这个module的文件，就直接 `import Modules`。
        ![屏幕快照 2018-11-13 下午2.05.04.png](https://upload-images.jianshu.io/upload_images/2131368-c36fe97e37e71d37.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

        ```
        module Modules {
        umbrella header "umbrella.h"
        export *
        module * { export * }
        }
        // 在 umbrella.h 中引用需要暴露的文件
        // umbrealla.h 和 module.modulemap  必须在同一group下，否则需要配置  umbrella header "/??/umbrella.h"
        #import "NSObject+Convenience.h"
        ```

        同时需要配置如图
        ![](https://upload-images.jianshu.io/upload_images/2131368-df167844376298ad.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

        ![](https://upload-images.jianshu.io/upload_images/2131368-4d23ca79960b92d6.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

        import paths 通过语义就是 可以 import 的，即  `import Modules`。
        可以直接拖拽 group 直接到目录下。

        之后就可以在这个文件夹下放你随便的 c， oc 文件，舒服的使用。
        """
        let webView = WKWebView.init(frame: view.bounds)
        view.addSubview(webView)
        webView.loadHTMLString(markdown.markdownToHTML ?? "", baseURL: nil)
    }
}

