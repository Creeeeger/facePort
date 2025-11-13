.class public final Landroid/media/soundtrigger/SoundTriggerManager;
.super Ljava/lang/Object;
.source "SoundTriggerManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger/SoundTriggerManager$Model;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field public static final greylist-max-o EXTRA_MESSAGE_TYPE:Ljava/lang/String; = "android.media.soundtrigger.MESSAGE_TYPE"

.field public static final greylist-max-o EXTRA_RECOGNITION_EVENT:Ljava/lang/String; = "android.media.soundtrigger.RECOGNITION_EVENT"

.field public static final greylist-max-o EXTRA_STATUS:Ljava/lang/String; = "android.media.soundtrigger.STATUS"

.field public static final greylist-max-o FLAG_MESSAGE_TYPE_RECOGNITION_ERROR:I = 0x1

.field public static final greylist-max-o FLAG_MESSAGE_TYPE_RECOGNITION_EVENT:I = 0x0

.field public static final greylist-max-o FLAG_MESSAGE_TYPE_RECOGNITION_PAUSED:I = 0x2

.field public static final greylist-max-o FLAG_MESSAGE_TYPE_RECOGNITION_RESUMED:I = 0x3

.field public static final greylist-max-o FLAG_MESSAGE_TYPE_UNKNOWN:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SoundTriggerManager"


# instance fields
.field private final blacklist mBinderToken:Landroid/os/IBinder;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mReceiverInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/UUID;",
            "Landroid/media/soundtrigger/SoundTriggerDetector;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

.field private final blacklist mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/app/ISoundTriggerService;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mBinderToken:Landroid/os/IBinder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mReceiverInstanceMap:Ljava/util/HashMap;

    :try_start_0
    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :try_start_1
    invoke-interface {p2, v0}, Lcom/android/internal/app/ISoundTriggerService;->listModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/soundtrigger/SoundTriggerManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/media/soundtrigger/SoundTriggerManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mBinderToken:Landroid/os/IBinder;

    invoke-interface {p2, v0, v2, v3}, Lcom/android/internal/app/ISoundTriggerService;->attachAsOriginator(Landroid/media/permission/Identity;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerSession;

    move-result-object v3

    iput-object v3, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    goto :goto_0

    :cond_0
    iput-object v3, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    nop

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    return-void

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/ISoundTriggerService;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mBinderToken:Landroid/os/IBinder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mReceiverInstanceMap:Ljava/util/HashMap;

    :try_start_0
    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :try_start_1
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mBinderToken:Landroid/os/IBinder;

    invoke-interface {p2, v0, v2, v3}, Lcom/android/internal/app/ISoundTriggerService;->attachAsOriginator(Landroid/media/permission/Identity;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerSession;

    move-result-object v2

    iput-object v2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    nop

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ISoundTriggerService;

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    return-void

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist attachInstrumentation(Ljava/util/concurrent/Executor;Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;)Landroid/media/soundtrigger/SoundTriggerInstrumentation;
    .locals 2

    nop

    const-string v0, "soundtrigger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ISoundTriggerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerService;

    move-result-object v0

    new-instance v1, Landroid/media/soundtrigger/SoundTriggerInstrumentation;

    invoke-direct {v1, v0, p0, p1}, Landroid/media/soundtrigger/SoundTriggerInstrumentation;-><init>(Lcom/android/internal/app/ISoundTriggerService;Ljava/util/concurrent/Executor;Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;)V

    return-object v1
.end method

.method private final blacklist getTestModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 3

    invoke-static {}, Landroid/media/soundtrigger/SoundTriggerManager;->listModuleProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/media/soundtrigger/SoundTriggerManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/soundtrigger/SoundTriggerManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Fake ST HAL should always be available"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method static synthetic blacklist lambda$getTestModuleProperties$1(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object v0

    const-string v1, "injection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$new$0(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object v0

    const-string v1, "injection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist listModuleProperties()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "soundtrigger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ISoundTriggerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerService;

    move-result-object v0

    new-instance v1, Landroid/media/permission/Identity;

    invoke-direct {v1}, Landroid/media/permission/Identity;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerService;->listModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v3

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_3
    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public blacklist createManagerForModule(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Landroid/media/soundtrigger/SoundTriggerManager;
    .locals 4

    new-instance v0, Landroid/media/soundtrigger/SoundTriggerManager;

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    invoke-direct {v0, v1, v2, v3}, Landroid/media/soundtrigger/SoundTriggerManager;-><init>(Landroid/content/Context;Lcom/android/internal/app/ISoundTriggerService;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)V

    return-object v0
.end method

.method public blacklist createManagerForTestModule()Landroid/media/soundtrigger/SoundTriggerManager;
    .locals 4

    new-instance v0, Landroid/media/soundtrigger/SoundTriggerManager;

    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    invoke-direct {p0}, Landroid/media/soundtrigger/SoundTriggerManager;->getTestModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/media/soundtrigger/SoundTriggerManager;-><init>(Landroid/content/Context;Lcom/android/internal/app/ISoundTriggerService;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)V

    return-object v0
.end method

.method public whitelist createSoundTriggerDetector(Ljava/util/UUID;Landroid/media/soundtrigger/SoundTriggerDetector$Callback;Landroid/os/Handler;)Landroid/media/soundtrigger/SoundTriggerDetector;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mReceiverInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/soundtrigger/SoundTriggerDetector;

    nop

    :try_start_0
    new-instance v1, Landroid/media/soundtrigger/SoundTriggerDetector;

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    iget-object v3, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/UUID;

    invoke-direct {v4, v5}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v3, v4}, Lcom/android/internal/app/ISoundTriggerSession;->getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2, p3}, Landroid/media/soundtrigger/SoundTriggerDetector;-><init>(Lcom/android/internal/app/ISoundTriggerSession;Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;Landroid/media/soundtrigger/SoundTriggerDetector$Callback;Landroid/os/Handler;)V

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mReceiverInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist deleteModel(Ljava/util/UUID;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->deleteSoundModel(Landroid/os/ParcelUuid;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDetectionServiceOperationsTimeout()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_trigger_detection_service_op_timeout"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const v1, 0x7fffffff

    return v1
.end method

.method public whitelist getModel(Ljava/util/UUID;)Landroid/media/soundtrigger/SoundTriggerManager$Model;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Landroid/media/soundtrigger/SoundTriggerManager$Model;

    invoke-direct {v1, v0}, Landroid/media/soundtrigger/SoundTriggerManager$Model;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getModelState(Ljava/util/UUID;)I
    .locals 2

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/high16 v0, -0x80000000

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->getModelState(Landroid/os/ParcelUuid;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 2

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    invoke-interface {v0}, Lcom/android/internal/app/ISoundTriggerSession;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getParameter(Ljava/util/UUID;I)I
    .locals 3

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1, p2}, Lcom/android/internal/app/ISoundTriggerSession;->getParameter(Landroid/os/ParcelUuid;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist isRecognitionActive(Ljava/util/UUID;)Z
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->isRecognitionActive(Landroid/os/ParcelUuid;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)I
    .locals 2

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "SoundTriggerManager"

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    move-object v1, p1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    move-object v1, p1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I

    move-result v0

    return v0

    :goto_0
    const-string v1, "Unkown model type"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v0, -0x80000000

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist queryParameter(Ljava/util/UUID;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .locals 3

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1, p2}, Lcom/android/internal/app/ISoundTriggerSession;->queryParameter(Landroid/os/ParcelUuid;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setParameter(Ljava/util/UUID;II)I
    .locals 3

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/app/ISoundTriggerSession;->setParameter(Landroid/os/ParcelUuid;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist startRecognition(Ljava/util/UUID;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/android/internal/app/ISoundTriggerSession;->startRecognitionForService(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r stopRecognition(Ljava/util/UUID;)I
    .locals 3

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->stopRecognitionForService(Landroid/os/ParcelUuid;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r unloadSoundModel(Ljava/util/UUID;)I
    .locals 3

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->unloadSoundModel(Landroid/os/ParcelUuid;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateModel(Landroid/media/soundtrigger/SoundTriggerManager$Model;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    invoke-virtual {p1}, Landroid/media/soundtrigger/SoundTriggerManager$Model;->getGenericSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No underlying SoundTriggerModule available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
