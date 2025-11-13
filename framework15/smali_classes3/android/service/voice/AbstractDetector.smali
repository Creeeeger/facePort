.class abstract Landroid/service/voice/AbstractDetector;
.super Ljava/lang/Object;
.source "AbstractDetector.java"

# interfaces
.implements Landroid/service/voice/HotwordDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/AbstractDetector$BinderCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field static final blacklist IS_IDENTITY_WITH_ATTRIBUTION_TAG:Z

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCallback:Landroid/service/voice/HotwordDetector$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field private blacklist mOnDestroyListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/service/voice/AbstractDetector;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/service/voice/AbstractDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/service/voice/AbstractDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/voice/AbstractDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/voice/AbstractDetector;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/service/voice/AbstractDetector;->mToken:Landroid/os/IBinder;

    iput-object p1, p0, Landroid/service/voice/AbstractDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iput-object p3, p0, Landroid/service/voice/AbstractDetector;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    :goto_0
    iput-object v0, p0, Landroid/service/voice/AbstractDetector;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/service/voice/AbstractDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public whitelist destroy()V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->destroyDetector(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mOnDestroyListener:Ljava/util/function/Consumer;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected blacklist initAndVerifyDetector(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILjava/lang/String;)V
    .locals 8

    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v5, p0, Landroid/service/voice/AbstractDetector;->mToken:Landroid/os/IBinder;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/app/IVoiceInteractionManagerService;->initAndVerifyDetector(Landroid/media/permission/Identity;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IBinder;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method abstract blacklist initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
.end method

.method blacklist isSameToken(Landroid/os/IBinder;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method blacklist registerOnDestroyListener(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/voice/AbstractDetector;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mOnDestroyListener:Ljava/util/function/Consumer;

    if-nez v1, :cond_0

    iput-object p1, p0, Landroid/service/voice/AbstractDetector;->mOnDestroyListener:Ljava/util/function/Consumer;

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "only one destroy listener can be registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist startRecognition(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/service/voice/AbstractDetector;->throwIfDetectorIsNoLongerActive()V

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v4, p0, Landroid/service/voice/AbstractDetector;->mToken:Landroid/os/IBinder;

    new-instance v5, Landroid/service/voice/AbstractDetector$BinderCallback;

    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/service/voice/AbstractDetector;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-direct {v5, v1, v2}, Landroid/service/voice/AbstractDetector$BinderCallback;-><init>(Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startListeningFromExternalSource(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/IBinder;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
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

.method protected blacklist throwIfDetectorIsNoLongerActive()V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/service/voice/AbstractDetector;->TAG:Ljava/lang/String;

    const-string v1, "attempting to use a destroyed detector which is no longer active"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .locals 2

    invoke-virtual {p0}, Landroid/service/voice/AbstractDetector;->throwIfDetectorIsNoLongerActive()V

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AbstractDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/AbstractDetector;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IBinder;)V
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
