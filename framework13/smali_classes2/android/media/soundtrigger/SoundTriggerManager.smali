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

.field private final blacklist mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/app/ISoundTriggerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "soundTriggerService"    # Lcom/android/internal/app/ISoundTriggerService;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mBinderToken:Landroid/os/IBinder;

    .line 91
    :try_start_0
    new-instance v1, Landroid/media/permission/Identity;

    invoke-direct {v1}, Landroid/media/permission/Identity;-><init>()V

    .line 92
    .local v1, "originatorIdentity":Landroid/media/permission/Identity;
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 94
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v2, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_1
    invoke-interface {p2, v1, v0}, Lcom/android/internal/app/ISoundTriggerService;->attachAsOriginator(Landroid/media/permission/Identity;Landroid/os/IBinder;)Lcom/android/internal/app/ISoundTriggerSession;

    move-result-object v0

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    .end local v1    # "originatorIdentity":Landroid/media/permission/Identity;
    .end local v2    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_0
    nop

    .line 101
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mContext:Landroid/content/Context;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mReceiverInstanceMap:Ljava/util/HashMap;

    .line 103
    return-void

    .line 94
    .restart local v1    # "originatorIdentity":Landroid/media/permission/Identity;
    .restart local v2    # "ignored":Landroid/media/permission/SafeCloseable;
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-interface {v2}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/media/soundtrigger/SoundTriggerManager;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "soundTriggerService":Lcom/android/internal/app/ISoundTriggerService;
    :cond_1
    :goto_0
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 98
    .end local v1    # "originatorIdentity":Landroid/media/permission/Identity;
    .end local v2    # "ignored":Landroid/media/permission/SafeCloseable;
    .restart local p0    # "this":Landroid/media/soundtrigger/SoundTriggerManager;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "soundTriggerService":Lcom/android/internal/app/ISoundTriggerService;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public whitelist createSoundTriggerDetector(Ljava/util/UUID;Landroid/media/soundtrigger/SoundTriggerDetector$Callback;Landroid/os/Handler;)Landroid/media/soundtrigger/SoundTriggerDetector;
    .locals 3
    .param p1, "soundModelId"    # Ljava/util/UUID;
    .param p2, "callback"    # Landroid/media/soundtrigger/SoundTriggerDetector$Callback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 167
    if-nez p1, :cond_0

    .line 168
    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mReceiverInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/soundtrigger/SoundTriggerDetector;

    .line 172
    .local v0, "oldInstance":Landroid/media/soundtrigger/SoundTriggerDetector;
    nop

    .line 175
    new-instance v1, Landroid/media/soundtrigger/SoundTriggerDetector;

    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    invoke-direct {v1, v2, p1, p2, p3}, Landroid/media/soundtrigger/SoundTriggerDetector;-><init>(Lcom/android/internal/app/ISoundTriggerSession;Ljava/util/UUID;Landroid/media/soundtrigger/SoundTriggerDetector$Callback;Landroid/os/Handler;)V

    .line 177
    .local v1, "newInstance":Landroid/media/soundtrigger/SoundTriggerDetector;
    iget-object v2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mReceiverInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-object v1
.end method

.method public whitelist deleteModel(Ljava/util/UUID;)V
    .locals 2
    .param p1, "soundModelId"    # Ljava/util/UUID;

    .line 145
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->deleteSoundModel(Landroid/os/ParcelUuid;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    nop

    .line 149
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDetectionServiceOperationsTimeout()I
    .locals 2

    .line 445
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_trigger_detection_service_op_timeout"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const v1, 0x7fffffff

    return v1
.end method

.method public whitelist getModel(Ljava/util/UUID;)Landroid/media/soundtrigger/SoundTriggerManager$Model;
    .locals 2
    .param p1, "soundModelId"    # Ljava/util/UUID;

    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 128
    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v0

    .line 129
    .local v0, "model":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    if-nez v0, :cond_0

    .line 130
    const/4 v1, 0x0

    return-object v1

    .line 133
    :cond_0
    new-instance v1, Landroid/media/soundtrigger/SoundTriggerManager$Model;

    invoke-direct {v1, v0}, Landroid/media/soundtrigger/SoundTriggerManager$Model;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 134
    .end local v0    # "model":Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getModelState(Ljava/util/UUID;)I
    .locals 2
    .param p1, "soundModelId"    # Ljava/util/UUID;

    .line 461
    if-nez p1, :cond_0

    .line 462
    const/high16 v0, -0x80000000

    return v0

    .line 465
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

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 2

    .line 481
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    invoke-interface {v0}, Lcom/android/internal/app/ISoundTriggerSession;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getParameter(Ljava/util/UUID;I)I
    .locals 2
    .param p1, "soundModelId"    # Ljava/util/UUID;
    .param p2, "modelParam"    # I

    .line 530
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1, p2}, Lcom/android/internal/app/ISoundTriggerSession;->getParameter(Landroid/os/ParcelUuid;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist isRecognitionActive(Ljava/util/UUID;)Z
    .locals 2
    .param p1, "soundModelId"    # Ljava/util/UUID;

    .line 426
    if-nez p1, :cond_0

    .line 427
    const/4 v0, 0x0

    return v0

    .line 430
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

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)I
    .locals 3
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 328
    const/high16 v0, -0x80000000

    if-nez p1, :cond_0

    .line 329
    return v0

    .line 333
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 341
    const-string v1, "SoundTriggerManager"

    goto :goto_0

    .line 335
    :pswitch_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    move-object v1, p1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I

    move-result v0

    return v0

    .line 338
    :pswitch_1
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    move-object v1, p1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I

    move-result v0

    return v0

    .line 341
    :goto_0
    const-string v2, "Unkown model type"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    return v0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist queryParameter(Ljava/util/UUID;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .locals 2
    .param p1, "soundModelId"    # Ljava/util/UUID;
    .param p2, "modelParam"    # I

    .line 550
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1, p2}, Lcom/android/internal/app/ISoundTriggerSession;->queryParameter(Landroid/os/ParcelUuid;I)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setParameter(Ljava/util/UUID;II)I
    .locals 2
    .param p1, "soundModelId"    # Ljava/util/UUID;
    .param p2, "modelParam"    # I
    .param p3, "value"    # I

    .line 507
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/app/ISoundTriggerSession;->setParameter(Landroid/os/ParcelUuid;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist startRecognition(Ljava/util/UUID;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 2
    .param p1, "soundModelId"    # Ljava/util/UUID;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "detectionService"    # Landroid/content/ComponentName;
    .param p4, "config"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 372
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/android/internal/app/ISoundTriggerSession;->startRecognitionForService(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r stopRecognition(Ljava/util/UUID;)I
    .locals 2
    .param p1, "soundModelId"    # Ljava/util/UUID;

    .line 391
    if-nez p1, :cond_0

    .line 392
    const/high16 v0, -0x80000000

    return v0

    .line 395
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->stopRecognitionForService(Landroid/os/ParcelUuid;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r unloadSoundModel(Ljava/util/UUID;)I
    .locals 2
    .param p1, "soundModelId"    # Ljava/util/UUID;

    .line 408
    if-nez p1, :cond_0

    .line 409
    const/high16 v0, -0x80000000

    return v0

    .line 412
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->unloadSoundModel(Landroid/os/ParcelUuid;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateModel(Landroid/media/soundtrigger/SoundTriggerManager$Model;)V
    .locals 2
    .param p1, "model"    # Landroid/media/soundtrigger/SoundTriggerManager$Model;

    .line 111
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerSession:Lcom/android/internal/app/ISoundTriggerSession;

    invoke-virtual {p1}, Landroid/media/soundtrigger/SoundTriggerManager$Model;->getGenericSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerSession;->updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    nop

    .line 115
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
