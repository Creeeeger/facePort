.class public Landroid/webkit/WebViewZygote;
.super Ljava/lang/Object;
.source "WebViewZygote.java"


# static fields
.field private static final greylist-max-o LOGTAG:Ljava/lang/String; = "WebViewZygote"

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist-max-o sMultiprocessEnabled:Z

.field private static greylist-max-o sPackage:Landroid/content/pm/PackageInfo;

.field private static greylist-max-o sZygote:Landroid/os/ChildZygoteProcess;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o connectToZygoteIfNeededLocked()V
    .locals 15

    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    const-string v1, "WebViewZygote"

    if-nez v0, :cond_1

    const-string v0, "Cannot connect to zygote, no package specified"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    sget-object v0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    sget-object v2, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/os/Zygote;->getMemorySafetyRuntimeFlagsForSecondaryZygote(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;)I

    move-result v8

    sget-object v2, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    const-string v3, "com.android.internal.os.WebViewZygoteInit"

    const-string/jumbo v4, "webview_zygote"

    const-string/jumbo v9, "webview_zygote"

    const-string v5, ","

    sget-object v6, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/16 v5, 0x41d

    const/16 v6, 0x41d

    const/4 v7, 0x0

    const/4 v12, 0x0

    const v13, 0x182b8

    const v14, 0x7fffffff

    move-object v10, v0

    invoke-virtual/range {v2 .. v14}, Landroid/os/ZygoteProcess;->startChildZygote(Ljava/lang/String;Ljava/lang/String;II[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/os/ChildZygoteProcess;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    sget-object v2, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    invoke-virtual {v2}, Landroid/os/ChildZygoteProcess;->getPrimarySocketAddress()Landroid/net/LocalSocketAddress;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Landroid/net/LocalSocketAddress;)V

    sget-object v2, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    sget-object v3, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3, v0}, Landroid/os/ChildZygoteProcess;->preloadApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Error connecting to webview zygote"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroid/webkit/WebViewZygote;->stopZygoteLocked()V

    :goto_0
    return-void
.end method

.method public static greylist-max-o getPackageName()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist-max-o getProcess()Landroid/os/ZygoteProcess;
    .locals 2

    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-static {}, Landroid/webkit/WebViewZygote;->connectToZygoteIfNeededLocked()V

    sget-object v1, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist-max-o isMultiprocessEnabled()Z
    .locals 4

    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/webkit/Flags;->updateServiceV2()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    monitor-exit v0

    return v2

    :cond_1
    sget-boolean v1, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    if-eqz v1, :cond_2

    sget-object v1, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static blacklist onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    .locals 2

    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    invoke-static {}, Landroid/webkit/Flags;->updateServiceV2()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Landroid/webkit/WebViewZygote;->stopZygoteLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist-max-o setMultiprocessEnabled(Z)V
    .locals 2

    invoke-static {}, Landroid/webkit/Flags;->updateServiceV2()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    if-nez p0, :cond_0

    invoke-static {}, Landroid/webkit/WebViewZygote;->stopZygoteLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setMultiprocessEnabled shouldn\'t be called if update_service_v2 flag is set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o stopZygoteLocked()V
    .locals 1

    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    invoke-virtual {v0}, Landroid/os/ChildZygoteProcess;->close()V

    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    invoke-virtual {v0}, Landroid/os/ChildZygoteProcess;->getPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ChildZygoteProcess;

    :cond_0
    return-void
.end method
