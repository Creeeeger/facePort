.class Lcom/android/internal/os/WebViewZygoteInit;
.super Ljava/lang/Object;
.source "WebViewZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;,
        Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;
    }
.end annotation


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "WebViewZygoteInit"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist main([Ljava/lang/String;)V
    .locals 2

    const-string v0, "WebViewZygoteInit"

    const-string v1, "Starting WebViewZygoteInit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;-><init>(Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer-IA;)V

    invoke-static {v0, p0}, Lcom/android/internal/os/ChildZygoteInit;->runZygoteServer(Lcom/android/internal/os/ZygoteServer;[Ljava/lang/String;)V

    return-void
.end method
