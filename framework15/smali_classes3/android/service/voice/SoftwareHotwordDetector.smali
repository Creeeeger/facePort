.class Landroid/service/voice/SoftwareHotwordDetector;
.super Landroid/service/voice/AbstractDetector;
.source "SoftwareHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;,
        Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mAudioFormat:Landroid/media/AudioFormat;

.field private final blacklist mCallback:Landroid/service/voice/HotwordDetector$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method public static synthetic blacklist $r8$lambda$NXZyJnkb3BXRZgLmtgzakeg6mJ8(Landroid/service/voice/SoftwareHotwordDetector;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/voice/SoftwareHotwordDetector;->lambda$onDetectorRemoteException$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pRsKk_JIL7rYX76hUHPg95aFJqg(Landroid/service/voice/SoftwareHotwordDetector;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/voice/SoftwareHotwordDetector;->lambda$onDetectorRemoteException$1()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/service/voice/SoftwareHotwordDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/service/voice/SoftwareHotwordDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/voice/SoftwareHotwordDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/media/AudioFormat;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p3, p4}, Landroid/service/voice/AbstractDetector;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)V

    iput-object p1, p0, Landroid/service/voice/SoftwareHotwordDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iput-object p2, p0, Landroid/service/voice/SoftwareHotwordDetector;->mAudioFormat:Landroid/media/AudioFormat;

    iput-object p4, p0, Landroid/service/voice/SoftwareHotwordDetector;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    :goto_0
    iput-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Landroid/service/voice/SoftwareHotwordDetector;->mAttributionTag:Ljava/lang/String;

    return-void
.end method

.method private synthetic blacklist lambda$onDetectorRemoteException$0()V
    .locals 4

    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    new-instance v1, Landroid/service/voice/HotwordDetectionServiceFailure;

    const/4 v2, 0x7

    const-string v3, "Detector remote exception occurs"

    invoke-direct {v1, v2, v3}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/service/voice/HotwordDetector$Callback;->onFailure(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDetectorRemoteException$1()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/voice/SoftwareHotwordDetector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/service/voice/SoftwareHotwordDetector$$ExternalSyntheticLambda1;-><init>(Landroid/service/voice/SoftwareHotwordDetector;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist maybeCloseExistingSession()V
    .locals 0

    return-void
.end method


# virtual methods
.method public whitelist destroy()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/service/voice/SoftwareHotwordDetector;->stopRecognition()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/service/voice/SoftwareHotwordDetector;->TAG:Ljava/lang/String;

    const-string v2, "failed to stopRecognition in destroy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-direct {p0}, Landroid/service/voice/SoftwareHotwordDetector;->maybeCloseExistingSession()V

    invoke-super {p0}, Landroid/service/voice/AbstractDetector;->destroy()V

    return-void
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method blacklist initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .locals 6

    new-instance v3, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;

    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/service/voice/SoftwareHotwordDetector;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-direct {v3, v0, v1}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;-><init>(Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)V

    const/4 v4, 0x2

    iget-object v5, p0, Landroid/service/voice/SoftwareHotwordDetector;->mAttributionTag:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/service/voice/SoftwareHotwordDetector;->initAndVerifyDetector(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILjava/lang/String;)V

    return-void
.end method

.method public blacklist isUsingSandboxedDetectionService()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method blacklist onDetectorRemoteException()V
    .locals 1

    new-instance v0, Landroid/service/voice/SoftwareHotwordDetector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/service/voice/SoftwareHotwordDetector$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/SoftwareHotwordDetector;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public whitelist startRecognition()Z
    .locals 5

    invoke-virtual {p0}, Landroid/service/voice/SoftwareHotwordDetector;->throwIfDetectorIsNoLongerActive()V

    invoke-direct {p0}, Landroid/service/voice/SoftwareHotwordDetector;->maybeCloseExistingSession()V

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/SoftwareHotwordDetector;->mAudioFormat:Landroid/media/AudioFormat;

    new-instance v2, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;

    iget-object v3, p0, Landroid/service/voice/SoftwareHotwordDetector;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/service/voice/SoftwareHotwordDetector;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-direct {v2, v3, v4}, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;-><init>(Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startListeningFromMic(Landroid/media/AudioFormat;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v0

    sget-object v1, Landroid/service/voice/SoftwareHotwordDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRecognition failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public whitelist stopRecognition()Z
    .locals 1

    invoke-virtual {p0}, Landroid/service/voice/SoftwareHotwordDetector;->throwIfDetectorIsNoLongerActive()V

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->stopListeningFromMic()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
