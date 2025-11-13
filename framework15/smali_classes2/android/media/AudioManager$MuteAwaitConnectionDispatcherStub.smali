.class final Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;
.super Landroid/media/IMuteAwaitConnectionCallback$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MuteAwaitConnectionDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method private constructor blacklist <init>(Landroid/media/AudioManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IMuteAwaitConnectionCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioManager;Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchOnMutedUntilConnection$0(Landroid/media/AudioDeviceAttributes;[ILandroid/media/AudioManager$MuteAwaitConnectionCallback;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Landroid/media/AudioManager$MuteAwaitConnectionCallback;->onMutedUntilConnection(Landroid/media/AudioDeviceAttributes;[I)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchOnUnmutedEvent$1(ILandroid/media/AudioDeviceAttributes;[ILandroid/media/AudioManager$MuteAwaitConnectionCallback;)V
    .locals 0

    invoke-virtual {p3, p0, p1, p2}, Landroid/media/AudioManager$MuteAwaitConnectionCallback;->onUnmutedEvent(ILandroid/media/AudioDeviceAttributes;[I)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchOnMutedUntilConnection(Landroid/media/AudioDeviceAttributes;[I)V
    .locals 3

    iget-object v0, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmMuteAwaitConnectionListeners(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmMuteAwaitConnectionListenerLock(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2}, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda1;-><init>(Landroid/media/AudioDeviceAttributes;[I)V

    invoke-static {v0, v1, v2}, Landroid/media/CallbackUtil;->callListeners(Ljava/util/ArrayList;Ljava/lang/Object;Landroid/media/CallbackUtil$CallbackMethod;)V

    return-void
.end method

.method public blacklist dispatchOnUnmutedEvent(ILandroid/media/AudioDeviceAttributes;[I)V
    .locals 3

    iget-object v0, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmMuteAwaitConnectionListeners(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmMuteAwaitConnectionListenerLock(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2, p3}, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda0;-><init>(ILandroid/media/AudioDeviceAttributes;[I)V

    invoke-static {v0, v1, v2}, Landroid/media/CallbackUtil;->callListeners(Ljava/util/ArrayList;Ljava/lang/Object;Landroid/media/CallbackUtil$CallbackMethod;)V

    return-void
.end method

.method public blacklist register(Z)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/media/IAudioService;->registerMuteAwaitConnectionDispatcher(Landroid/media/IMuteAwaitConnectionCallback;Z)V
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
