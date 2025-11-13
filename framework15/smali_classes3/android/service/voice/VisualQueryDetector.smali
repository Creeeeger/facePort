.class public Landroid/service/voice/VisualQueryDetector;
.super Ljava/lang/Object;
.source "VisualQueryDetector.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;,
        Landroid/service/voice/VisualQueryDetector$Callback;,
        Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;,
        Landroid/service/voice/VisualQueryDetector$BinderCallback;,
        Landroid/service/voice/VisualQueryDetector$InitializationStateListener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist SETTINGS_DISABLE_BIT:I = 0x0

.field private static final blacklist SETTINGS_ENABLE_BIT:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mActiveAccessibilityListenerWrapper:Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;

.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

.field private final blacklist mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionTag(Landroid/service/voice/VisualQueryDetector;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetector;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/service/voice/VisualQueryDetector;)Landroid/service/voice/VisualQueryDetector$Callback;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetector;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/service/voice/VisualQueryDetector;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/service/voice/VisualQueryDetector;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetector;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmManagerService(Landroid/service/voice/VisualQueryDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/VisualQueryDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/service/voice/VisualQueryDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/service/voice/VisualQueryDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/voice/VisualQueryDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Ljava/util/concurrent/Executor;Landroid/service/voice/VisualQueryDetector$Callback;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mActiveAccessibilityListenerWrapper:Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iput-object p3, p0, Landroid/service/voice/VisualQueryDetector;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    iput-object p2, p0, Landroid/service/voice/VisualQueryDetector;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-direct {v0, p0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;-><init>(Landroid/service/voice/VisualQueryDetector;)V

    iput-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    iput-object p4, p0, Landroid/service/voice/VisualQueryDetector;->mContext:Landroid/content/Context;

    iput-object p5, p0, Landroid/service/voice/VisualQueryDetector;->mAttributionTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist clearAccessibilityDetectionEnabledListener()V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object v0, Landroid/service/voice/VisualQueryDetector;->TAG:Ljava/lang/String;

    const-string v1, "Unregistering Accessibility settings listener."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mActiveAccessibilityListenerWrapper:Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/VisualQueryDetector;->mActiveAccessibilityListenerWrapper:Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->unregisterAccessibilityDetectionSettingsListener(Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mActiveAccessibilityListenerWrapper:Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/service/voice/VisualQueryDetector;->TAG:Ljava/lang/String;

    const-string v2, "Not able to remove the listener: listener does not exist."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot clear listener since it is not set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist destroy()V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-virtual {v1}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->destroy()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-virtual {v1, p1, p2}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getInitializationDelegate()Landroid/service/voice/HotwordDetector;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    return-object v0
.end method

.method blacklist initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    return-void
.end method

.method public whitelist isAccessibilityDetectionEnabled()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object v0, Landroid/service/voice/VisualQueryDetector;->TAG:Ljava/lang/String;

    const-string v1, "Fetching accessibility setting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getAccessibilityDetectionEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    nop

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method blacklist registerOnDestroyListener(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/voice/AbstractDetector;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-virtual {v1, p1}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->registerOnDestroyListener(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setAccessibilityDetectionEnabledListener(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/service/voice/VisualQueryDetector;->TAG:Ljava/lang/String;

    const-string v1, "Registering Accessibility settings listener."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mActiveAccessibilityListenerWrapper:Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;

    if-nez v1, :cond_0

    new-instance v1, Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;

    invoke-direct {v1, p0, p1}, Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;-><init>(Landroid/service/voice/VisualQueryDetector;Ljava/util/function/Consumer;)V

    iput-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mActiveAccessibilityListenerWrapper:Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;

    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/VisualQueryDetector;->mActiveAccessibilityListenerWrapper:Landroid/service/voice/VisualQueryDetector$AccessibilityDetectionEnabledListenerWrapper;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->registerAccessibilityDetectionSettingsListener(Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;)V

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/service/voice/VisualQueryDetector;->TAG:Ljava/lang/String;

    const-string v2, "Fail to register accessibility setting listener: already registered and not unregistered."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot register listener with listeners already set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist startRecognition()Z
    .locals 6

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-virtual {v1}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->startRecognition()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    new-instance v2, Landroid/service/voice/VisualQueryDetector$BinderCallback;

    iget-object v3, p0, Landroid/service/voice/VisualQueryDetector;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroid/service/voice/VisualQueryDetector;->mCallback:Landroid/service/voice/VisualQueryDetector$Callback;

    iget-object v5, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v5}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/service/voice/VisualQueryDetector$BinderCallback;-><init>(Ljava/util/concurrent/Executor;Landroid/service/voice/VisualQueryDetector$Callback;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startPerceiving(Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v1

    sget-object v2, Landroid/service/voice/VisualQueryDetector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRecognition failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist stopRecognition()Z
    .locals 2

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-virtual {v1}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->stopRecognition()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->stopPerceiving()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->-$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector;->mInitializationDelegate:Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;

    invoke-virtual {v1, p1, p2}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
