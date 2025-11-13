.class Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;
.super Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;
.source "SoftwareHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/SoftwareHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitializationStateListener"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/service/voice/HotwordDetector$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$1ICSCkpWgKLjkYxB4G7FDQWfdX0(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->lambda$onUnknownFailure$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3zepdbCSJl0i1qtanWlLOCx020c(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->lambda$onStatusReported$5(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BaUOsNzbqRXnAYLD0RGrW_fkHrQ(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->lambda$onProcessRestarted$6()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$G-LB7jxnsqCbMm-VIP0xmD6Y7E0(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->lambda$onHotwordDetectionServiceFailure$0(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IDrp1i8zZBogIwejMzsnoKQUyDY(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->lambda$onUnknownFailure$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WVJZClChZrTA6J9fvR2MISlgkM4(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->lambda$onHotwordDetectionServiceFailure$1(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gMjig6sCTNdyRC07dYFDtuOWzys(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->lambda$onProcessRestarted$7()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lcRlcwqcxGhA8Mw_DIfaYd1BE7Q(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->lambda$onStatusReported$4(I)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/IHotwordRecognitionStatusCallback$Stub;-><init>()V

    iput-object p2, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    iput-object p1, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic blacklist lambda$onHotwordDetectionServiceFailure$0(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-interface {v0, p1}, Landroid/service/voice/HotwordDetector$Callback;->onFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    const-string v1, "Error data is null"

    invoke-interface {v0, v1}, Landroid/service/voice/HotwordDetector$Callback;->onUnknownFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$onHotwordDetectionServiceFailure$1(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda4;-><init>(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;Landroid/service/voice/HotwordDetectionServiceFailure;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onProcessRestarted$6()V
    .locals 1

    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-interface {v0}, Landroid/service/voice/HotwordDetector$Callback;->onHotwordDetectionServiceRestarted()V

    return-void
.end method

.method private synthetic blacklist lambda$onProcessRestarted$7()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda6;-><init>(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onStatusReported$4(I)V
    .locals 1

    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-interface {v0, p1}, Landroid/service/voice/HotwordDetector$Callback;->onHotwordDetectionServiceInitialized(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onStatusReported$5(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda1;-><init>(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$onUnknownFailure$2(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const-string v1, "Error data is null"

    :goto_0
    invoke-interface {v0, v1}, Landroid/service/voice/HotwordDetector$Callback;->onUnknownFailure(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onUnknownFailure$3(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda2;-><init>(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist onHotwordDetectionServiceFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/service/voice/SoftwareHotwordDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHotwordDetectionServiceFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;Landroid/service/voice/HotwordDetectionServiceFailure;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/service/voice/HotwordDetectedResult;)V
    .locals 0

    return-void
.end method

.method public blacklist onKeyphraseDetectedFromExternalSource(Landroid/service/voice/HotwordDetectedResult;)V
    .locals 0

    return-void
.end method

.method public blacklist onOpenFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Hotword cannot access files from the disk."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist onProcessRestarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/service/voice/SoftwareHotwordDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onProcessRestarted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda7;-><init>(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onRecognitionPaused()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist onRecognitionResumed()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist onSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/service/voice/SoftwareHotwordDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected STFailure in software detector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onStatusReported(I)V
    .locals 3

    invoke-static {}, Landroid/service/voice/SoftwareHotwordDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStatusReported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda5;-><init>(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onUnknownFailure(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/service/voice/SoftwareHotwordDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnknownFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener$$ExternalSyntheticLambda3;-><init>(Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/service/voice/SoftwareHotwordDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVisualQueryDetectionServiceFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
