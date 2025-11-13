.class Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;
.super Landroid/net/INetworkScoreCache$Stub;
.source "NetworkScoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkScoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkScoreCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/net/NetworkScoreManager$NetworkScoreCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$0:Landroid/net/NetworkScoreManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$BrwBU-t86uPSaVE6votMrC2vE7w(Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->lambda$updateScores$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NJZyQDseSfJFYr0AiRb68mkMwhE(Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->lambda$clearScores$1()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/NetworkScoreManager;Ljava/util/concurrent/Executor;Landroid/net/NetworkScoreManager$NetworkScoreCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->this$0:Landroid/net/NetworkScoreManager;

    invoke-direct {p0}, Landroid/net/INetworkScoreCache$Stub;-><init>()V

    iput-object p2, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mCallback:Landroid/net/NetworkScoreManager$NetworkScoreCallback;

    return-void
.end method

.method private synthetic blacklist lambda$clearScores$1()V
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mCallback:Landroid/net/NetworkScoreManager$NetworkScoreCallback;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager$NetworkScoreCallback;->onScoresInvalidated()V

    return-void
.end method

.method private synthetic blacklist lambda$updateScores$0(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mCallback:Landroid/net/NetworkScoreManager$NetworkScoreCallback;

    invoke-virtual {v0, p1}, Landroid/net/NetworkScoreManager$NetworkScoreCallback;->onScoresUpdated(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public blacklist clearScores()V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist updateScores(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
