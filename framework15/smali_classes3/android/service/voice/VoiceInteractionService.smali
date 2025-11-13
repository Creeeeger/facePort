.class public Landroid/service/voice/VoiceInteractionService;
.super Landroid/app/Service;
.source "VoiceInteractionService.java"


# static fields
.field static final blacklist MULTIPLE_ACTIVE_HOTWORD_DETECTORS:J = 0xb847d3fL

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.voice.VoiceInteractionService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.voice_interaction"

.field private static final blacklist SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

.field static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mActiveDetectors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/service/voice/HotwordDetector;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

.field private blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field greylist-max-o mInterface:Landroid/service/voice/IVoiceInteractionService;

.field private greylist-max-o mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field greylist-max-o mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field private blacklist mTestModuleForAlwaysOnHotwordDetectorEnabled:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$JMYx-6yfhchP63Tz168rKFGpq2Y(Landroid/service/voice/VoiceInteractionService;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->lambda$new$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$P6N6t5pC6a5IBmC3sK_4dtkgwLI(Landroid/service/voice/VoiceInteractionService;Landroid/service/voice/HotwordDetector;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/voice/VoiceInteractionService;->onHotwordDetectorDestroyed(Landroid/service/voice/HotwordDetector;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YR2k9aseeGgZ6fiR6G00PM050Lo(Landroid/service/voice/VoiceInteractionService;ZLandroid/service/voice/HotwordDetector;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/voice/VoiceInteractionService;->lambda$safelyShutdownAllHotwordDetectors$4(ZLandroid/service/voice/HotwordDetector;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wfImATncamP2VQNcSOIvVvfph5M(Landroid/service/voice/VoiceInteractionService;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->onShutdownInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monDetectorRemoteException(Landroid/service/voice/VoiceInteractionService;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/voice/VoiceInteractionService;->onDetectorRemoteException(Landroid/os/IBinder;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monHandleVoiceActionCheck(Landroid/service/voice/VoiceInteractionService;Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/voice/VoiceInteractionService;->onHandleVoiceActionCheck(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monShutdownInternal(Landroid/service/voice/VoiceInteractionService;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->onShutdownInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSoundModelsChangedInternal(Landroid/service/voice/VoiceInteractionService;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->onSoundModelsChangedInternal()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const-class v0, Landroid/service/voice/VoiceInteractionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    nop

    const-string/jumbo v0, "ro.hotword.visual_query_service_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/service/voice/VoiceInteractionService;->SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/voice/VoiceInteractionService$1;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionService$1;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mInterface:Landroid/service/voice/IVoiceInteractionService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionService;->mTestModuleForAlwaysOnHotwordDetectorEnabled:Z

    new-instance v0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda2;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private blacklist createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_5

    iget-object v2, v1, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const-wide/32 v3, 0xb847d3f

    :try_start_0
    invoke-static {v3, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Landroid/service/voice/VoiceInteractionService;->safelyShutdownAllHotwordDetectors(Z)V

    move/from16 v15, p3

    goto :goto_1

    :cond_0
    iget-object v0, v1, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/voice/HotwordDetector;

    invoke-interface {v3}, Landroid/service/voice/HotwordDetector;->isUsingSandboxedDetectionService()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v15, p3

    if-ne v4, v15, :cond_2

    :try_start_1
    instance-of v4, v3, Landroid/service/voice/AlwaysOnHotwordDetector;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "There is already an active AlwaysOnHotwordDetector. It must be destroyed to create a new one."

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "It disallows to create trusted and non-trusted detectors at the same time."

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move/from16 v15, p3

    :goto_1
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector;

    iget-object v10, v1, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    iget-object v11, v1, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-virtual/range {p0 .. p0}, Landroid/service/voice/VoiceInteractionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v12, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual/range {p0 .. p0}, Landroid/service/voice/VoiceInteractionService;->getAttributionTag()Ljava/lang/String;

    move-result-object v14

    move-object v5, v0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v13, p3

    invoke-direct/range {v5 .. v14}, Landroid/service/voice/AlwaysOnHotwordDetector;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;Lcom/android/internal/app/IVoiceInteractionManagerService;IZLjava/lang/String;)V

    move-object v3, v0

    iget-object v0, v1, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    invoke-virtual {v3, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->registerOnDestroyListener(Ljava/util/function/Consumer;)V

    iget-boolean v0, v1, Landroid/service/voice/VoiceInteractionService;->mTestModuleForAlwaysOnHotwordDetectorEnabled:Z

    if-eqz v0, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/service/voice/VoiceInteractionService;->getTestModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v0

    goto :goto_2

    :cond_4
    move-object/from16 v4, p6

    :goto_2
    move-object/from16 v5, p4

    move-object/from16 v6, p5

    :try_start_3
    invoke-virtual {v3, v5, v6, v4}, Landroid/service/voice/AlwaysOnHotwordDetector;->initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    nop

    :try_start_4
    monitor-exit v2

    return-object v3

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v4, p6

    :goto_3
    iget-object v7, v1, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v7, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->destroy()V

    nop

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move/from16 v15, p3

    :goto_4
    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v4, p6

    :goto_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_5
    move/from16 v15, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Not available until onReady() is called"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist createHotwordDetectorInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)Landroid/service/voice/HotwordDetector;
    .locals 8

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/32 v1, 0xb847d3f

    :try_start_0
    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/service/voice/VoiceInteractionService;->safelyShutdownAllHotwordDetectors(Z)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/HotwordDetector;

    invoke-interface {v2}, Landroid/service/voice/HotwordDetector;->isUsingSandboxedDetectionService()Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v2, Landroid/service/voice/SoftwareHotwordDetector;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "There is already an active SoftwareHotwordDetector. It must be destroyed to create a new one."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "It disallows to create trusted and non-trusted detectors at the same time."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    new-instance v1, Landroid/service/voice/SoftwareHotwordDetector;

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    move-object v2, v1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/service/voice/SoftwareHotwordDetector;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/media/AudioFormat;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    invoke-virtual {v1, v2}, Landroid/service/voice/SoftwareHotwordDetector;->registerOnDestroyListener(Ljava/util/function/Consumer;)V

    invoke-virtual {v1, p1, p2}, Landroid/service/voice/SoftwareHotwordDetector;->initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v2

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/service/voice/SoftwareHotwordDetector;->destroy()V

    nop

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not available until onReady() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final blacklist getTestModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 3

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->listModuleProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda7;-><init>()V

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
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fake ST HAL should always be available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist isActiveService(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voice_interaction_service"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic blacklist lambda$dump$5(Ljava/io/PrintWriter;Landroid/service/voice/HotwordDetector;)V
    .locals 1

    const-string v0, "  Using sandboxed detection service="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/service/voice/HotwordDetector;->isUsingSandboxedDetectionService()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "    "

    invoke-interface {p1, v0, p0}, Landroid/service/voice/HotwordDetector;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method static synthetic blacklist lambda$getTestModuleProperties$3(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "injection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$new$1()V
    .locals 2

    sget-object v0, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "system service binder died shutting down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic blacklist lambda$onDetectorRemoteException$0(ILandroid/os/IBinder;Landroid/service/voice/HotwordDetector;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    instance-of v0, p2, Landroid/service/voice/AlwaysOnHotwordDetector;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-virtual {v0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->isSameToken(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->onDetectorRemoteException()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    instance-of v0, p2, Landroid/service/voice/SoftwareHotwordDetector;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/service/voice/SoftwareHotwordDetector;

    invoke-virtual {v0, p1}, Landroid/service/voice/SoftwareHotwordDetector;->isSameToken(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/service/voice/SoftwareHotwordDetector;->onDetectorRemoteException()V

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic blacklist lambda$onSoundModelsChangedInternal$2(Landroid/service/voice/HotwordDetector;)V
    .locals 1

    instance-of v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/service/voice/AlwaysOnHotwordDetector;

    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->onSoundModelsChanged()V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$safelyShutdownAllHotwordDetectors$4(ZLandroid/service/voice/HotwordDetector;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    invoke-virtual {v0}, Landroid/service/voice/VisualQueryDetector;->getInitializationDelegate()Landroid/service/voice/HotwordDetector;

    move-result-object v0

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-interface {p2}, Landroid/service/voice/HotwordDetector;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    const-string v2, "exception destroying HotwordDetector"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private blacklist onDetectorRemoteException(Landroid/os/IBinder;I)V
    .locals 3

    sget-object v0, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDetectorRemoteException for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/service/voice/HotwordDetector;->detectorTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    new-instance v1, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2, p1}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda5;-><init>(ILandroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist onHandleVoiceActionCheck(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/IVoiceActionCheckCallback;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Landroid/service/voice/VoiceInteractionService;->onGetSupportedVoiceActions(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v2}, Lcom/android/internal/app/IVoiceActionCheckCallback;->onComplete(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist onHotwordDetectorDestroyed(Landroid/service/voice/HotwordDetector;)V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    invoke-virtual {v1}, Landroid/service/voice/VisualQueryDetector;->getInitializationDelegate()Landroid/service/voice/HotwordDetector;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    :cond_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o onShutdownInternal()V
    .locals 1

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->onShutdown()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/service/voice/VoiceInteractionService;->safelyShutdownAllHotwordDetectors(Z)V

    return-void
.end method

.method private greylist-max-o onSoundModelsChangedInternal()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    new-instance v1, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private blacklist safelyShutdownAllHotwordDetectors(Z)V
    .locals 3

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    new-instance v2, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda6;-><init>(Landroid/service/voice/VoiceInteractionService;Z)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

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
.method public final whitelist createAlwaysOnHotwordDetector(Ljava/lang/String;Ljava/util/Locale;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .locals 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createAlwaysOnHotwordDetector(Ljava/lang/String;Ljava/util/Locale;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .locals 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createAlwaysOnHotwordDetector(Ljava/lang/String;Ljava/util/Locale;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .locals 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createAlwaysOnHotwordDetector(Ljava/lang/String;Ljava/util/Locale;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .locals 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist createAlwaysOnHotwordDetectorForTest(Ljava/lang/String;Ljava/util/Locale;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .locals 9

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist createAlwaysOnHotwordDetectorForTest(Ljava/lang/String;Ljava/util/Locale;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .locals 9

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/service/voice/VoiceInteractionService;->createAlwaysOnHotwordDetectorInternal(Ljava/lang/String;Ljava/util/Locale;ZLandroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createHotwordDetector(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/HotwordDetector$Callback;)Landroid/service/voice/HotwordDetector;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/service/voice/VoiceInteractionService;->createHotwordDetectorInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)Landroid/service/voice/HotwordDetector;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createHotwordDetector(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)Landroid/service/voice/HotwordDetector;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/voice/VoiceInteractionService;->createHotwordDetectorInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)Landroid/service/voice/HotwordDetector;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createKeyphraseModelManager()Landroid/media/voice/KeyphraseModelManager;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/media/voice/KeyphraseModelManager;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-direct {v1, v2}, Landroid/media/voice/KeyphraseModelManager;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not available until onReady() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist createVisualQueryDetector(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Ljava/util/concurrent/Executor;Landroid/service/voice/VisualQueryDetector$Callback;)Landroid/service/voice/VisualQueryDetector;
    .locals 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Landroid/service/voice/VoiceInteractionService;->SYSPROP_VISUAL_QUERY_SERVICE_ENABLED:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/HotwordDetector;

    invoke-interface {v2}, Landroid/service/voice/HotwordDetector;->isUsingSandboxedDetectionService()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "It disallows to create trusted and non-trusted detectors at the same time."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Landroid/service/voice/VisualQueryDetector;

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Landroid/service/voice/VisualQueryDetector;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Ljava/util/concurrent/Executor;Landroid/service/voice/VisualQueryDetector$Callback;Landroid/content/Context;Ljava/lang/String;)V

    nop

    invoke-virtual {v1}, Landroid/service/voice/VisualQueryDetector;->getInitializationDelegate()Landroid/service/voice/HotwordDetector;

    move-result-object v2

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda0;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    invoke-virtual {v1, v3}, Landroid/service/voice/VisualQueryDetector;->registerOnDestroyListener(Ljava/util/function/Consumer;)V

    invoke-virtual {v1, p1, p2}, Landroid/service/voice/VisualQueryDetector;->initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    iput-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveVisualQueryDetector:Landroid/service/voice/VisualQueryDetector;

    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v3

    iget-object v4, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/service/voice/VisualQueryDetector;->destroy()V

    nop

    throw v3

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "There is already an active VisualQueryDetector. It must be destroyed to create a new one."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not available until onReady() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VisualQueryDetectionService is not enabled on this system. Please set ro.hotword.visual_query_service_enabled to true."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "VOICE INTERACTION"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "  Sandboxed Detector(s):"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "    No detector."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mActiveDetectors:Ljava/util/Set;

    new-instance v2, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2}, Landroid/service/voice/VoiceInteractionService$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    const-string v1, "Available Model Enrollment Applications:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getDisabledShowContext()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getDisabledShowContext()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method protected final greylist-max-o getKeyphraseEnrollmentInfo()Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    return-object v0
.end method

.method public final greylist isKeyphraseAndLocaleSupportedForHotword(Ljava/lang/String;Ljava/util/Locale;)Z
    .locals 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getKeyphraseMetadata(Ljava/lang/String;Ljava/util/Locale;)Landroid/hardware/soundtrigger/KeyphraseMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final blacklist listModuleProperties()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->listModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.service.voice.VoiceInteractionService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mInterface:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onGetSupportedVoiceActions(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onLaunchVoiceAssistFromKeyguard()V
    .locals 0

    return-void
.end method

.method public whitelist onPrepareToShowSession(Landroid/os/Bundle;I)V
    .locals 0

    return-void
.end method

.method public whitelist onReady()V
    .locals 3

    nop

    const-string/jumbo v0, "voiceinteraction"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/service/voice/VoiceInteractionService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unable to link to death with system service"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    return-void
.end method

.method public whitelist onShowSessionFailed(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onShutdown()V
    .locals 0

    return-void
.end method

.method public whitelist setDisabledShowContext(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setDisabledShowContext(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public final blacklist setTestModuleForAlwaysOnHotwordDetectorEnabled(Z)V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Landroid/service/voice/VoiceInteractionService;->mTestModuleForAlwaysOnHotwordDetectorEnabled:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist setUiHints(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setUiHints(Landroid/os/Bundle;)V
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
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hints must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist showSession(Landroid/os/Bundle;I)V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSession(Landroid/os/Bundle;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not available until onReady() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
