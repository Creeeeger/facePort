.class Landroid/webkit/WebViewLibraryLoader$RelroFileCreator;
.super Ljava/lang/Object;
.source "WebViewLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelroFileCreator"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o main([Ljava/lang/String;)V
    .locals 10

    const-string v0, "failed to create relro file"

    const-string v1, "error notifying update service"

    const/4 v2, 0x0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v3

    const/4 v4, 0x0

    :try_start_0
    array-length v5, p0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    aget-object v5, p0, v4

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    aget-object v6, p0, v5

    if-nez v6, :cond_0

    goto/16 :goto_5

    :cond_0
    aget-object v6, p0, v4

    aget-object v5, p0, v5

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RelroFileCreator (64bit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " library: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetsAddressSpaceReserved()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v7

    const-string v8, "can\'t create relro file; address space not reserved"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebViewUpdateManager;->notifyRelroCreationCompleted()V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v7

    invoke-interface {v7}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v7

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-nez v2, :cond_2

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_3
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v7, v6, v8, v9}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v7

    nop

    if-eqz v3, :cond_4

    const-string v8, "/data/misc/shared_relro/libwebviewchromium64.relro"

    goto :goto_2

    :cond_4
    const-string v8, "/data/misc/shared_relro/libwebviewchromium32.relro"

    :goto_2
    invoke-virtual {v7}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {v5, v8, v9}, Landroid/webkit/WebViewLibraryLoader;->nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v8

    nop

    :try_start_3
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewUpdateManager;->notifyRelroCreationCompleted()V

    goto :goto_3

    :cond_5
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v5

    invoke-interface {v5}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    goto :goto_4

    :catch_1
    move-exception v5

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    if-nez v2, :cond_6

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    nop

    return-void

    :cond_7
    :goto_5
    :try_start_4
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid RelroFileCreator args: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewUpdateManager;->notifyRelroCreationCompleted()V

    goto :goto_6

    :cond_8
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v5

    invoke-interface {v5}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    goto :goto_7

    :catch_2
    move-exception v5

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    if-nez v2, :cond_9

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    return-void

    :catchall_0
    move-exception v5

    :try_start_6
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebViewUpdateManager;->notifyRelroCreationCompleted()V

    goto :goto_8

    :cond_a
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v6

    invoke-interface {v6}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_8
    goto :goto_9

    :catch_3
    move-exception v6

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    if-nez v2, :cond_b

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->-$$Nest$sfgetLOGTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    throw v5
.end method
