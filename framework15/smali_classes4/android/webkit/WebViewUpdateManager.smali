.class public final Landroid/webkit/WebViewUpdateManager;
.super Ljava/lang/Object;
.source "WebViewUpdateManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field private final blacklist mService:Landroid/webkit/IWebViewUpdateService;


# direct methods
.method public constructor blacklist <init>(Landroid/webkit/IWebViewUpdateService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/WebViewUpdateManager;->mService:Landroid/webkit/IWebViewUpdateService;

    return-void
.end method

.method public static blacklist getInstance()Landroid/webkit/WebViewUpdateManager;
    .locals 1

    const-string/jumbo v0, "webviewupdate"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->getSystemServiceWithNoContext(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewUpdateManager;

    return-object v0
.end method


# virtual methods
.method public blacklist changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewUpdateManager;->mService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v0, p1}, Landroid/webkit/IWebViewUpdateService;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewUpdateManager;->mService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewUpdateManager;->mService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getCurrentWebViewPackageName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewUpdateManager;->mService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewUpdateManager;->mService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewUpdateManager;->mService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist notifyRelroCreationCompleted()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewUpdateManager;->mService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewUpdateManager;->mService:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
