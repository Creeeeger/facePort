.class public Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;
.super Ljava/lang/Object;
.source "SemSoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionEvent;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseSoundModel;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;
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

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_PERMISSION_DENIED:I

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_NO_INIT:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_NO_INIT:I

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_BAD_VALUE:I

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_DEAD_OBJECT:I

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_INVALID_OPERATION:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_INVALID_OPERATION:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist attachModule(ILcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;Landroid/os/Handler;)Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;-><init>(ILcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static whitelist listModules(Ljava/util/ArrayList;)I
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;",
            ">;)I"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/media/permission/Identity;

    invoke-direct {v1}, Landroid/media/permission/Identity;-><init>()V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iput v2, v1, Landroid/media/permission/Identity;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iput v2, v1, Landroid/media/permission/Identity;->uid:I

    invoke-static {v0, v1}, Landroid/hardware/soundtrigger/SoundTrigger;->listModulesAsOriginator(Ljava/util/ArrayList;Landroid/media/permission/Identity;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    new-instance v21, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;

    move-object/from16 v4, v21

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getId()I

    move-result v5

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getImplementor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getVersion()I

    move-result v9

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxSoundModels()I

    move-result v11

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxKeyphrases()I

    move-result v12

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxUsers()I

    move-result v13

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getRecognitionModes()I

    move-result v14

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isCaptureTransitionSupported()Z

    move-result v15

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxBufferMillis()I

    move-result v16

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isConcurrentCaptureSupported()Z

    move-result v17

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getPowerConsumptionMw()I

    move-result v18

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isTriggerReturnedInEvent()Z

    move-result v19

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getAudioCapabilities()I

    move-result v20

    invoke-direct/range {v4 .. v20}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIZIZIZI)V

    move-object/from16 v5, p0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v5, p0

    const/4 v2, 0x0

    return v2
.end method
