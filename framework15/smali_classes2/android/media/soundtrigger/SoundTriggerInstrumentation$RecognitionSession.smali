.class public Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;
.super Ljava/lang/Object;
.source "SoundTriggerInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecognitionSession"
.end annotation


# instance fields
.field private final blacklist mAudioSession:I

.field private final blacklist mDroppedConsumerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mInjectRecognitionEvent:Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

.field private blacklist mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

.field private final blacklist mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private blacklist mRecognitionExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mwrap(Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->wrap(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mDroppedConsumerList:Ljava/util/List;

    iput p2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mAudioSession:I

    invoke-static {p3}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiRecognitionConfig(Landroid/media/soundtrigger/RecognitionConfig;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iput-object p4, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mInjectRecognitionEvent:Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;-><init>(Landroid/media/soundtrigger/SoundTriggerInstrumentation;ILandroid/media/soundtrigger/RecognitionConfig;Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;)V

    return-void
.end method

.method static synthetic blacklist lambda$setRecognitionCallback$0(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$wrap$1(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist wrap(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mDroppedConsumerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist clearRecognitionCallback()V
    .locals 2

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    iput-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getAudioSession()I
    .locals 1

    iget v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mAudioSession:I

    return v0
.end method

.method public blacklist getRecognitionConfig()Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .locals 1

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    return-object v0
.end method

.method public blacklist setRecognitionCallback(Ljava/util/concurrent/Executor;Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V
    .locals 4

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mDroppedConsumerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Consumer;

    new-instance v3, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mDroppedConsumerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionCallback:Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionCallback;

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mRecognitionExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist triggerAbortRecognition()V
    .locals 3

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmRecognitionSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mInjectRecognitionEvent:Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mInjectRecognitionEvent:Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    invoke-interface {v1}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;->triggerAbortRecognition()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist triggerRecognitionEvent([BLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)Landroid/media/soundtrigger/PhraseRecognitionExtra;

    move-result-object v5

    aput-object v5, v0, v1

    move v1, v4

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmLock(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->this$0:Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-static {v2}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;->-$$Nest$fgetmRecognitionSessionMap(Landroid/media/soundtrigger/SoundTriggerInstrumentation;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mInjectRecognitionEvent:Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    invoke-interface {v3}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;->mInjectRecognitionEvent:Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;

    invoke-interface {v2, p1, v0}, Landroid/media/soundtrigger_middleware/IInjectRecognitionEvent;->triggerRecognitionEvent([B[Landroid/media/soundtrigger/PhraseRecognitionExtra;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
