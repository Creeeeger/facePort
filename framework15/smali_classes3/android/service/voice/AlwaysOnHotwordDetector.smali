.class public Landroid/service/voice/AlwaysOnHotwordDetector;
.super Landroid/service/voice/AbstractDetector;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;,
        Landroid/service/voice/AlwaysOnHotwordDetector$Callback;,
        Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;,
        Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;,
        Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;,
        Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;,
        Landroid/service/voice/AlwaysOnHotwordDetector$ModelParams;,
        Landroid/service/voice/AlwaysOnHotwordDetector$AudioCapabilities;,
        Landroid/service/voice/AlwaysOnHotwordDetector$RecognitionModes;,
        Landroid/service/voice/AlwaysOnHotwordDetector$RecognitionFlags;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CAPABILITY_ECHO_CANCELLATION:I = 0x1

.field public static final whitelist AUDIO_CAPABILITY_NOISE_SUPPRESSION:I = 0x2

.field static final greylist-max-o DBG:Z = false

.field public static final whitelist MODEL_PARAM_THRESHOLD_FACTOR:I = 0x0

.field private static final greylist-max-o MSG_AVAILABILITY_CHANGED:I = 0x1

.field private static final greylist-max-o MSG_DETECTION_ERROR:I = 0x3

.field private static final blacklist MSG_DETECTION_HOTWORD_DETECTION_SERVICE_FAILURE:I = 0x9

.field private static final greylist-max-o MSG_DETECTION_PAUSE:I = 0x4

.field private static final greylist-max-o MSG_DETECTION_RESUME:I = 0x5

.field private static final blacklist MSG_DETECTION_SOUND_TRIGGER_FAILURE:I = 0xa

.field private static final blacklist MSG_DETECTION_UNKNOWN_FAILURE:I = 0xb

.field private static final greylist-max-o MSG_HOTWORD_DETECTED:I = 0x2

.field private static final blacklist MSG_HOTWORD_REJECTED:I = 0x6

.field private static final blacklist MSG_HOTWORD_STATUS_REPORTED:I = 0x7

.field private static final blacklist MSG_PROCESS_RESTARTED:I = 0x8

.field public static final whitelist RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS:I = 0x2

.field public static final whitelist RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO:I = 0x1

.field public static final whitelist RECOGNITION_FLAG_ENABLE_AUDIO_ECHO_CANCELLATION:I = 0x4

.field public static final whitelist RECOGNITION_FLAG_ENABLE_AUDIO_NOISE_SUPPRESSION:I = 0x8

.field public static final greylist-max-o RECOGNITION_FLAG_NONE:I = 0x0

.field public static final whitelist RECOGNITION_FLAG_RUN_IN_BATTERY_SAVER:I = 0x10

.field public static final whitelist RECOGNITION_MODE_USER_IDENTIFICATION:I = 0x2

.field public static final whitelist RECOGNITION_MODE_VOICE_TRIGGER:I = 0x1

.field static final blacklist SEND_ON_FAILURE_FOR_ASYNC_EXCEPTIONS:J = 0x10b7a7d9L

.field public static final whitelist STATE_ERROR:I = 0x3

.field public static final whitelist STATE_HARDWARE_UNAVAILABLE:I = -0x2

.field private static final greylist-max-o STATE_INVALID:I = -0x3

.field public static final whitelist STATE_KEYPHRASE_ENROLLED:I = 0x2

.field public static final whitelist STATE_KEYPHRASE_UNENROLLED:I = 0x1

.field public static final whitelist STATE_KEYPHRASE_UNSUPPORTED:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o STATE_NOT_READY:I = 0x0

.field private static final greylist-max-o STATUS_ERROR:I = -0x80000000

.field private static final greylist-max-o STATUS_OK:I = 0x0

.field static final greylist-max-o TAG:Ljava/lang/String; = "AlwaysOnHotwordDetector"

.field static final blacklist THROW_ON_INITIALIZE_IF_NO_DSP:J = 0x100b2394L


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private greylist-max-o mAvailability:I

.field private final blacklist mBinder:Landroid/os/IBinder;

.field private final greylist-max-o mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

.field private final blacklist mExternalExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

.field private blacklist mIsAvailabilityOverriddenByTestApi:Z

.field private final greylist-max-o mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

.field private greylist-max-o mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

.field private final greylist-max-o mLocale:Ljava/util/Locale;

.field private final greylist-max-o mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field private blacklist mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

.field private final blacklist mSupportSandboxedDetectionService:Z

.field private final greylist-max-o mText:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAvailability(Landroid/service/voice/AlwaysOnHotwordDetector;)I
    .locals 0

    iget p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExternalCallback(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExternalExecutor(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyphraseMetadata(Landroid/service/voice/AlwaysOnHotwordDetector;)Landroid/hardware/soundtrigger/KeyphraseMetadata;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocale(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmModelManagementService(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSoundTriggerSession(Landroid/service/voice/AlwaysOnHotwordDetector;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmText(Landroid/service/voice/AlwaysOnHotwordDetector;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKeyphraseMetadata(Landroid/service/voice/AlwaysOnHotwordDetector;Landroid/hardware/soundtrigger/KeyphraseMetadata;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendUnknownFailure(Landroid/service/voice/AlwaysOnHotwordDetector;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->sendUnknownFailure(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateAndNotifyStateChangedLocked(Landroid/service/voice/AlwaysOnHotwordDetector;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->updateAndNotifyStateChangedLocked(I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/concurrent/Executor;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;Lcom/android/internal/app/IVoiceInteractionManagerService;IZLjava/lang/String;)V
    .locals 3

    invoke-direct {p0, p6, p3, p4}, Landroid/service/voice/AbstractDetector;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mIsAvailabilityOverriddenByTestApi:Z

    iput v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$MyHandler;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    iput-object p5, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    iput-object p4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    :goto_0
    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mExternalExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    iput-object p6, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iput-boolean p8, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSupportSandboxedDetectionService:Z

    iput-object p9, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAttributionTag:Ljava/lang/String;

    return-void
.end method

.method private blacklist detachSessionLocked()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->detach()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method private greylist-max-o getManageIntentLocked(I)Landroid/content/Intent;
    .locals 3

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Managing the given keyphrase is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;->getManageKeyphraseIntent(ILjava/lang/String;Ljava/util/Locale;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getManageIntent called on an invalid detector or error state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getParameterLocked(I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->getParameter(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getSupportedAudioCapabilitiesLocked()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->getDspModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getAudioCapabilities()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o getSupportedRecognitionModesLocked()I
    .locals 2

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getRecognitionModeFlags()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Getting supported recognition modes for the keyphrase is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSupportedRecognitionModes called on an invalid detector or error state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$initialize$0(Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "injection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private greylist-max-o notifyStateChangedLocked()V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist queryParameterLocked(I)Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;

    invoke-direct {v1, v0}, Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist sendSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist sendUnknownFailure(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->updateAvailabilityLocked(I)V

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist setParameterLocked(II)I
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->setParameter(III)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "AlwaysOnHotwordDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setParameter failed with error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist startRecognitionLocked(I[B)I
    .locals 16

    move-object/from16 v1, p0

    iget v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v0, v2, :cond_7

    iget v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    iget v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    new-array v8, v0, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    new-instance v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iget-object v3, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v3}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v3

    iget-object v4, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v4}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getRecognitionModeFlags()I

    move-result v4

    const/4 v5, 0x0

    new-array v6, v5, [Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)V

    aput-object v2, v8, v5

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_2

    move v14, v0

    goto :goto_2

    :cond_2
    move v14, v5

    :goto_2
    const/4 v0, 0x0

    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_4

    or-int/lit8 v0, v0, 0x2

    move v15, v0

    goto :goto_3

    :cond_4
    move v15, v0

    :goto_3
    :try_start_0
    iget-object v9, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v10

    iget-object v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    new-instance v13, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    move-object v2, v13

    move-object v5, v8

    move-object/from16 v6, p2

    move v7, v15

    invoke-direct/range {v2 .. v7}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;-><init>(ZZ[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;[BI)V

    invoke-interface/range {v9 .. v14}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->startRecognition(ILjava/lang/String;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz v0, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRecognition() failed with error code "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "AlwaysOnHotwordDetector"

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Recognition for the given keyphrase is not supported"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "startRecognition called on an invalid detector or error state"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o stopRecognitionLocked()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getId()I

    move-result v1

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->stopRecognition(ILcom/android/internal/app/IHotwordRecognitionStatusCallback;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopRecognition() failed with error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlwaysOnHotwordDetector"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist updateAndNotifyStateChangedLocked(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->updateAvailabilityLocked(I)V

    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->notifyStateChangedLocked()V

    return-void
.end method

.method private blacklist updateAvailabilityLocked(I)V
    .locals 1

    iget-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mIsAvailabilityOverriddenByTestApi:Z

    if-nez v0, :cond_0

    iput p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist createEnrollIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist createReEnrollIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist createUnEnrollIntent()Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getManageIntentLocked(I)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist destroy()V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->detachSessionLocked()V

    const/4 v1, -0x3

    iput v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mIsAvailabilityOverriddenByTestApi:Z

    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->notifyStateChangedLocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroid/service/voice/AbstractDetector;->destroy()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Text="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Locale="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Availability="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "KeyphraseMetadata="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "EnrollmentInfo="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const-wide/32 v0, 0xb847d3f

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/service/voice/AlwaysOnHotwordDetector;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/service/voice/AlwaysOnHotwordDetector;

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    iget-object v3, v0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    iget-object v3, v0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist getParameter(I)I
    .locals 3

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->getParameterLocked(I)I

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getParameter called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getSupportedAudioCapabilities()I
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->getSupportedAudioCapabilitiesLocked()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getSupportedRecognitionModes()I
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->getSupportedRecognitionModesLocked()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method blacklist initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .locals 0

    return-void
.end method

.method blacklist initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)V
    .locals 7

    iget-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSupportSandboxedDetectionService:Z

    if-eqz v0, :cond_0

    iget-object v4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    const/4 v5, 0x1

    iget-object v6, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAttributionTag:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/service/voice/AlwaysOnHotwordDetector;->initAndVerifyDetector(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILjava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    if-nez p3, :cond_2

    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->listModuleProperties(Landroid/media/permission/Identity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/service/voice/AlwaysOnHotwordDetector$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/service/voice/AlwaysOnHotwordDetector$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-object p3, v1

    const-wide/32 v1, 0x100b2394

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No DSP module available to attach to"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v0, v2, p3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->createSoundTriggerSessionAsOriginator(Landroid/media/permission/Identity;Landroid/os/IBinder;Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;)Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    move-result-object v1

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSoundTriggerSession:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;

    invoke-direct {v0, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isUsingSandboxedDetectionService()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSupportSandboxedDetectionService:Z

    return v0
.end method

.method blacklist onDetectorRemoteException()V
    .locals 4

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/voice/HotwordDetectionServiceFailure;

    const/4 v2, 0x7

    const-string v3, "Detector remote exception occurs"

    invoke-direct {v1, v2, v3}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x9

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method greylist-max-o onSoundModelsChanged()V
    .locals 7

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_5

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_5

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mIsAvailabilityOverriddenByTestApi:Z

    if-eqz v1, :cond_1

    const-string v1, "AlwaysOnHotwordDetector"

    const-string v2, "Suppressing system availability update. Availability is overridden by test API."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_4

    :try_start_1
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->stopRecognitionLocked()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v3, Landroid/service/voice/SoundTriggerFailure;

    const-string/jumbo v5, "stopped recognition because of enrollment update"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Landroid/service/voice/SoundTriggerFailure;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->sendSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V

    :cond_2
    const-string v3, "AlwaysOnHotwordDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to stop recognition after enrollment update: code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "AlwaysOnHotwordDetector"

    const-string v5, "Failed to stop recognition after enrollment update"

    invoke-static {v3, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/32 v5, 0x10b7a7d9

    invoke-static {v5, v6}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Landroid/service/voice/SoundTriggerFailure;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to stop recognition after enrollment update: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Landroid/service/voice/SoundTriggerFailure;-><init>(ILjava/lang/String;I)V

    invoke-direct {p0, v3}, Landroid/service/voice/AlwaysOnHotwordDetector;->sendSoundTriggerFailure(Landroid/service/voice/SoundTriggerFailure;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Landroid/service/voice/AlwaysOnHotwordDetector;->updateAndNotifyStateChangedLocked(I)V

    :goto_0
    monitor-exit v0

    return-void

    :cond_4
    :goto_1
    new-instance v1, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;

    invoke-direct {v1, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit v0

    return-void

    :cond_5
    :goto_2
    const-string v1, "AlwaysOnHotwordDetector"

    const-string v2, "Received onSoundModelsChanged for an unsupported keyphrase/config or in the error state"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist overrideAvailability(I)V
    .locals 5

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mIsAvailabilityOverriddenByTestApi:Z

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    if-nez v2, :cond_0

    iget v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLocale:Ljava/util/Locale;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/hardware/soundtrigger/KeyphraseMetadata;

    iget-object v4, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mText:Ljava/lang/String;

    invoke-direct {v3, v1, v4, v2, v1}, Landroid/hardware/soundtrigger/KeyphraseMetadata;-><init>(ILjava/lang/String;Ljava/util/Set;I)V

    iput-object v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mKeyphraseMetadata:Landroid/hardware/soundtrigger/KeyphraseMetadata;

    :cond_0
    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->notifyStateChangedLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist queryParameter(I)Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;
    .locals 3

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-direct {p0, p1}, Landroid/service/voice/AlwaysOnHotwordDetector;->queryParameterLocked(I)Landroid/service/voice/AlwaysOnHotwordDetector$ModelParamRange;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "queryParameter called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist resetAvailability()V
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mIsAvailabilityOverriddenByTestApi:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;

    invoke-direct {v0, p0}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;-><init>(Landroid/service/voice/AlwaysOnHotwordDetector;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$RefreshAvailabilityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist setParameter(II)I
    .locals 3

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/service/voice/AlwaysOnHotwordDetector;->setParameterLocked(II)I

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "setParameter called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist startRecognition()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->startRecognition(I)Z

    move-result v0

    return v0
.end method

.method public whitelist startRecognition(I)Z
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->startRecognitionLocked(I[B)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist startRecognition(I[B)Z
    .locals 2

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/service/voice/AlwaysOnHotwordDetector;->startRecognitionLocked(I[B)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic whitelist startRecognition(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/service/voice/AbstractDetector;->startRecognition(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;)Z

    move-result p1

    return p1
.end method

.method public whitelist stopRecognition()Z
    .locals 3

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Landroid/service/voice/AlwaysOnHotwordDetector;->stopRecognitionLocked()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Recognition for the given keyphrase is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "stopRecognition called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist triggerHardwareRecognitionEventForTest(IIJZIIIZLandroid/media/AudioFormat;[BLjava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJZIIIZ",
            "Landroid/media/AudioFormat;",
            "[B",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "AlwaysOnHotwordDetector"

    const-string/jumbo v2, "triggerHardwareRecognitionEventForTest()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v3, -0x3

    if-eq v0, v3, :cond_0

    iget v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    :try_start_1
    iget-object v0, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mModelManagementService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    new-instance v14, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    move-object/from16 v15, p12

    invoke-interface {v15, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    new-instance v16, Landroid/os/Binder;

    invoke-direct/range {v16 .. v16}, Landroid/os/Binder;-><init>()V

    move-object v3, v14

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v17, v14

    move-wide/from16 v14, p3

    invoke-direct/range {v3 .. v16}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;JLandroid/os/IBinder;)V

    iget-object v3, v1, Landroid/service/voice/AlwaysOnHotwordDetector;->mInternalCallback:Landroid/service/voice/AlwaysOnHotwordDetector$SoundTriggerListener;

    move-object/from16 v4, v17

    invoke-interface {v0, v4, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->triggerHardwareRecognitionEventForTest(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "triggerHardwareRecognitionEventForTest called on an invalid detector or error state"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final whitelist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .locals 3

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mSupportSandboxedDetectionService:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector;->mAvailability:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1, p2}, Landroid/service/voice/AbstractDetector;->updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "updateState called on an invalid detector or error state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "updateState called, but it doesn\'t support hotword detection service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
