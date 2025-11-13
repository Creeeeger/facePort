.class Landroid/media/soundtrigger/SoundTriggerDetectionService$1;
.super Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;
.source "SoundTriggerDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/soundtrigger/SoundTriggerDetectionService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mBinderLock:Ljava/lang/Object;

.field public final blacklist mParams:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/UUID;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;


# direct methods
.method public static synthetic blacklist $r8$lambda$InkPOEA3D8t7XkKKh-icuCpMIVM(Landroid/media/soundtrigger/SoundTriggerDetectionService;Ljava/util/UUID;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->-$$Nest$mremoveClient(Landroid/media/soundtrigger/SoundTriggerDetectionService;Ljava/util/UUID;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aTf6abWfFNbQdBvde3rB51XFEAg(Landroid/media/soundtrigger/SoundTriggerDetectionService;Ljava/util/UUID;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->-$$Nest$msetClient(Landroid/media/soundtrigger/SoundTriggerDetectionService;Ljava/util/UUID;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerDetectionService;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-direct {p0}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mBinderLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mParams:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/os/ParcelUuid;II)V
    .locals 8

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mBinderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/Bundle;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->-$$Nest$fgetmHandler(Landroid/media/soundtrigger/SoundTriggerDetectionService;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v2, v6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist onGenericRecognitionEvent(Landroid/os/ParcelUuid;ILandroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 8

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mBinderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/Bundle;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->-$$Nest$fgetmHandler(Landroid/media/soundtrigger/SoundTriggerDetectionService;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v2, v6

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist onStopOperation(Landroid/os/ParcelUuid;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mBinderLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->-$$Nest$fgetmHandler(Landroid/media/soundtrigger/SoundTriggerDetectionService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v4, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v0, v2, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist removeClient(Landroid/os/ParcelUuid;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mBinderLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->-$$Nest$fgetmHandler(Landroid/media/soundtrigger/SoundTriggerDetectionService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v4, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-static {v3, v4, v0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist setClient(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mBinderLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->mParams:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerDetectionService;->-$$Nest$fgetmHandler(Landroid/media/soundtrigger/SoundTriggerDetectionService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/media/soundtrigger/SoundTriggerDetectionService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerDetectionService$1;->this$0:Landroid/media/soundtrigger/SoundTriggerDetectionService;

    invoke-static {v2, v3, v0, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
