.class public Landroid/hardware/soundtrigger/SoundTrigger;
.super Ljava/lang/Object;
.source "SoundTrigger.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;,
        Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;,
        Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;,
        Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;,
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;,
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionModes;,
        Landroid/hardware/soundtrigger/SoundTrigger$ModelParamTypes;,
        Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;,
        Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;,
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;,
        Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;,
        Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    }
.end annotation


# static fields
.field public static final blacklist FAKE_HAL_ARCH:Ljava/lang/String; = "injection"

.field public static final blacklist MODEL_PARAM_INVALID:I = -0x1

.field public static final blacklist MODEL_PARAM_THRESHOLD_FACTOR:I = 0x0

.field public static final whitelist RECOGNITION_MODE_GENERIC:I = 0x8

.field public static final whitelist RECOGNITION_MODE_USER_AUTHENTICATION:I = 0x4

.field public static final whitelist RECOGNITION_MODE_USER_IDENTIFICATION:I = 0x2

.field public static final whitelist RECOGNITION_MODE_VOICE_TRIGGER:I = 0x1

.field public static final greylist-max-o RECOGNITION_STATUS_ABORT:I = 0x1

.field public static final greylist-max-o RECOGNITION_STATUS_FAILURE:I = 0x2

.field public static final blacklist RECOGNITION_STATUS_GET_STATE_RESPONSE:I = 0x3

.field public static final greylist-max-o RECOGNITION_STATUS_SUCCESS:I = 0x0

.field public static final greylist-max-o STATUS_BAD_VALUE:I

.field public static final blacklist STATUS_BUSY:I

.field public static final greylist-max-o STATUS_DEAD_OBJECT:I

.field public static final greylist-max-o STATUS_ERROR:I = -0x80000000

.field public static final greylist-max-o STATUS_INVALID_OPERATION:I

.field public static final greylist-max-o STATUS_NO_INIT:I

.field public static final whitelist STATUS_OK:I = 0x0

.field public static final greylist-max-o STATUS_PERMISSION_DENIED:I

.field private static final blacklist TAG:Ljava/lang/String; = "SoundTrigger"

.field private static blacklist mServiceLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget v0, Landroid/system/OsConstants;->EPERM:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    sget v0, Landroid/system/OsConstants;->ENODEV:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_NO_INIT:I

    sget v0, Landroid/system/OsConstants;->EINVAL:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    sget v0, Landroid/system/OsConstants;->EPIPE:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    sget v0, Landroid/system/OsConstants;->ENOSYS:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_INVALID_OPERATION:I

    sget v0, Landroid/system/OsConstants;->EBUSY:I

    neg-int v0, v0

    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BUSY:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger;->mServiceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist attachModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)Landroid/hardware/soundtrigger/SoundTriggerModule;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist attachModuleAsMiddleman(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/hardware/soundtrigger/SoundTriggerModule;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    move-object v5, v0

    :try_start_0
    new-instance v0, Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-static {}, Landroid/hardware/soundtrigger/SoundTrigger;->getService()Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    move-result-object v2

    const/4 v8, 0x0

    move-object v1, v0

    move v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Landroid/hardware/soundtrigger/SoundTriggerModule;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;Landroid/media/permission/Identity;Landroid/media/permission/Identity;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SoundTrigger"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist attachModuleAsOriginator(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;Landroid/media/permission/Identity;)Landroid/hardware/soundtrigger/SoundTriggerModule;
    .locals 7

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    move-object v5, v0

    :try_start_0
    new-instance v0, Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-static {}, Landroid/hardware/soundtrigger/SoundTrigger;->getService()Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    move-result-object v2

    move-object v1, v0

    move v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/soundtrigger/SoundTriggerModule;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;Landroid/media/permission/Identity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SoundTrigger"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist convertDescriptorsToModuleProperties([Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiModuleDescriptor(Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static blacklist getService()Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;
    .locals 5

    sget-object v0, Landroid/hardware/soundtrigger/SoundTrigger;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "soundtrigger_middleware"

    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    move-object v1, v2

    invoke-static {v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "SoundTrigger"

    const-string v4, "Failed to bind to soundtrigger service"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    goto :goto_0

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static blacklist handleException(Ljava/lang/Exception;)I
    .locals 2

    const-string v0, "Exception caught"

    const-string v1, "SoundTrigger"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    instance-of v0, p0, Landroid/os/RemoteException;

    if-eqz v0, :cond_0

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    return v0

    :cond_0
    instance-of v0, p0, Landroid/os/ServiceSpecificException;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/os/ServiceSpecificException;

    iget v0, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/high16 v1, -0x80000000

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v1

    :pswitch_1
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    return v0

    :pswitch_2
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    return v0

    :pswitch_3
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_INVALID_OPERATION:I

    return v0

    :pswitch_4
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BUSY:I

    return v0

    :cond_1
    instance-of v0, p0, Ljava/lang/SecurityException;

    if-eqz v0, :cond_2

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    return v0

    :cond_2
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_3

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_INVALID_OPERATION:I

    return v0

    :cond_3
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "Escalating unexpected exception: "

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    :goto_0
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist listModules(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist listModulesAsMiddleman(Ljava/util/ArrayList;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;",
            "Landroid/media/permission/Identity;",
            "Landroid/media/permission/Identity;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/hardware/soundtrigger/SoundTrigger;->getService()Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;->listModulesAsMiddleman(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/hardware/soundtrigger/SoundTrigger;->convertDescriptorsToModuleProperties([Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1

    return v1
.end method

.method public static blacklist listModulesAsOriginator(Ljava/util/ArrayList;Landroid/media/permission/Identity;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;",
            "Landroid/media/permission/Identity;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/hardware/soundtrigger/SoundTrigger;->getService()Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;->listModulesAsOriginator(Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/hardware/soundtrigger/SoundTrigger;->convertDescriptorsToModuleProperties([Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->handleException(Ljava/lang/Exception;)I

    move-result v1

    return v1
.end method
