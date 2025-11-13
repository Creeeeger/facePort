.class public Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;
.super Landroid/net/IPacProxyInstalledListener$Stub;
.source "PacProxyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/PacProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PacProxyInstalledListenerProxy"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/net/PacProxyManager$PacProxyInstalledListener;

.field final synthetic blacklist this$0:Landroid/net/PacProxyManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$J7leXbBVh9N4yXe7YMjjJq6Lmds(Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;Landroid/net/Network;Landroid/net/ProxyInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;->lambda$onPacProxyInstalled$0(Landroid/net/Network;Landroid/net/ProxyInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wLInjCMN7x0U0xk-BT2OsJpBC9c(Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;Landroid/net/Network;Landroid/net/ProxyInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;->lambda$onPacProxyInstalled$1(Landroid/net/Network;Landroid/net/ProxyInfo;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/PacProxyManager;Ljava/util/concurrent/Executor;Landroid/net/PacProxyManager$PacProxyInstalledListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;->this$0:Landroid/net/PacProxyManager;

    invoke-direct {p0}, Landroid/net/IPacProxyInstalledListener$Stub;-><init>()V

    iput-object p2, p0, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;->mListener:Landroid/net/PacProxyManager$PacProxyInstalledListener;

    return-void
.end method

.method private synthetic blacklist lambda$onPacProxyInstalled$0(Landroid/net/Network;Landroid/net/ProxyInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;->mListener:Landroid/net/PacProxyManager$PacProxyInstalledListener;

    invoke-interface {v0, p1, p2}, Landroid/net/PacProxyManager$PacProxyInstalledListener;->onPacProxyInstalled(Landroid/net/Network;Landroid/net/ProxyInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPacProxyInstalled$1(Landroid/net/Network;Landroid/net/ProxyInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;Landroid/net/Network;Landroid/net/ProxyInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onPacProxyInstalled(Landroid/net/Network;Landroid/net/ProxyInfo;)V
    .locals 1

    new-instance v0, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;Landroid/net/Network;Landroid/net/ProxyInfo;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
