.class Landroid/media/tv/TvInputManager$4;
.super Landroid/media/tv/ITvInputHardwareCallback$Stub;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager;->acquireTvInputHardwareInternal(ILandroid/media/tv/TvInputInfo;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputManager;

.field final synthetic blacklist val$callback:Landroid/media/tv/TvInputManager$HardwareCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvInputManager;Ljava/util/concurrent/Executor;Landroid/media/tv/TvInputManager$HardwareCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/tv/TvInputManager$4;->this$0:Landroid/media/tv/TvInputManager;

    iput-object p2, p0, Landroid/media/tv/TvInputManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/media/tv/TvInputManager$4;->val$callback:Landroid/media/tv/TvInputManager$HardwareCallback;

    invoke-direct {p0}, Landroid/media/tv/ITvInputHardwareCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onReleased$0(Landroid/media/tv/TvInputManager$HardwareCallback;)V
    .locals 0

    invoke-virtual {p0}, Landroid/media/tv/TvInputManager$HardwareCallback;->onReleased()V

    return-void
.end method

.method static synthetic blacklist lambda$onStreamConfigChanged$1(Landroid/media/tv/TvInputManager$HardwareCallback;[Landroid/media/tv/TvStreamConfig;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputManager$HardwareCallback;->onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V

    return-void
.end method


# virtual methods
.method public blacklist onReleased()V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/media/tv/TvInputManager$4;->val$callback:Landroid/media/tv/TvInputManager$HardwareCallback;

    new-instance v4, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/TvInputManager$HardwareCallback;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
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

.method public blacklist onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/media/tv/TvInputManager$4;->val$callback:Landroid/media/tv/TvInputManager$HardwareCallback;

    new-instance v4, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, p1}, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/TvInputManager$HardwareCallback;[Landroid/media/tv/TvStreamConfig;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
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
