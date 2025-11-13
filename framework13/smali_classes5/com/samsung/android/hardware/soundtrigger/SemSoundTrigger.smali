.class public Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;
.super Ljava/lang/Object;
.source "SemSoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionEvent;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseSoundModel;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;
    }
.end annotation


# static fields
.field public static final whitelist RECOGNITION_MODE_USER_AUTHENTICATION:I = 0x4

.field public static final whitelist RECOGNITION_MODE_USER_IDENTIFICATION:I = 0x2

.field public static final whitelist RECOGNITION_MODE_VOICE_TRIGGER:I = 0x1

.field public static final whitelist RECOGNITION_STATUS_ABORT:I = 0x1

.field public static final whitelist RECOGNITION_STATUS_FAILURE:I = 0x2

.field public static final whitelist RECOGNITION_STATUS_SUCCESS:I = 0x0

.field public static final whitelist SERVICE_STATE_DISABLED:I = 0x1

.field public static final whitelist SERVICE_STATE_ENABLED:I = 0x0

.field public static final whitelist STATUS_BAD_VALUE:I

.field public static final whitelist STATUS_DEAD_OBJECT:I

.field public static final whitelist STATUS_ERROR:I = -0x80000000

.field public static final whitelist STATUS_INVALID_OPERATION:I

.field public static final whitelist STATUS_NO_INIT:I

.field public static final whitelist STATUS_OK:I

.field public static final whitelist STATUS_PERMISSION_DENIED:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 30
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_PERMISSION_DENIED:I

    .line 32
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_NO_INIT:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_NO_INIT:I

    .line 34
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_BAD_VALUE:I

    .line 36
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_DEAD_OBJECT:I

    .line 38
    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_INVALID_OPERATION:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_INVALID_OPERATION:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static whitelist attachModule(ILcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;Landroid/os/Handler;)Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;
    .locals 1
    .param p0, "moduleId"    # I
    .param p1, "listener"    # Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 459
    if-nez p1, :cond_0

    .line 460
    const/4 v0, 0x0

    return-object v0

    .line 462
    :cond_0
    new-instance v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;-><init>(ILcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static whitelist listModules(Ljava/util/ArrayList;)I
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;",
            ">;)I"
        }
    .end annotation

    .line 422
    .local p0, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v0, "soundTriggerModules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;>;"
    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->listModules(Ljava/util/ArrayList;)I

    .line 424
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 425
    .local v2, "module":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    new-instance v20, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;

    move-object/from16 v3, v20

    .line 427
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getId()I

    move-result v4

    .line 428
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getImplementor()Ljava/lang/String;

    move-result-object v5

    .line 429
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 430
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 431
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getVersion()I

    move-result v8

    .line 432
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object v9

    .line 433
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxSoundModels()I

    move-result v10

    .line 434
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxKeyphrases()I

    move-result v11

    .line 435
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxUsers()I

    move-result v12

    .line 436
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getRecognitionModes()I

    move-result v13

    .line 437
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isCaptureTransitionSupported()Z

    move-result v14

    .line 438
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxBufferMillis()I

    move-result v15

    .line 439
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isConcurrentCaptureSupported()Z

    move-result v16

    .line 440
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getPowerConsumptionMw()I

    move-result v17

    .line 441
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isTriggerReturnedInEvent()Z

    move-result v18

    .line 442
    invoke-virtual {v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getAudioCapabilities()I

    move-result v19

    invoke-direct/range {v3 .. v19}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIZIZIZI)V

    .line 443
    .local v3, "moduleProperties":Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;
    move-object/from16 v4, p0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    .end local v2    # "module":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .end local v3    # "moduleProperties":Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;
    goto :goto_0

    .line 445
    :cond_0
    move-object/from16 v4, p0

    const/4 v1, 0x0

    return v1
.end method
