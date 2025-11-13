.class public Landroid/webkit/WebViewBootstrapFrameworkInitializer;
.super Ljava/lang/Object;
.source "WebViewBootstrapFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/os/IBinder;)Landroid/webkit/WebViewUpdateManager;
    .locals 2

    new-instance v0, Landroid/webkit/WebViewUpdateManager;

    invoke-static {p0}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewUpdateManager;-><init>(Landroid/webkit/IWebViewUpdateService;)V

    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .locals 3

    const-class v0, Landroid/webkit/WebViewUpdateManager;

    new-instance v1, Landroid/webkit/WebViewBootstrapFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/webkit/WebViewBootstrapFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string/jumbo v2, "webviewupdate"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerForeverStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V

    return-void
.end method
