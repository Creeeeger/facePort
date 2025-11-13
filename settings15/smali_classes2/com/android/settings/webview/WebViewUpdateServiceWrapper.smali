.class public final Lcom/android/settings/webview/WebViewUpdateServiceWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewUpdateManager;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    const-string v1, "WVUSWrapper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
