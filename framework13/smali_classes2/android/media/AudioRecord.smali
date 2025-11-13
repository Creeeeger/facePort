.class public Landroid/media/AudioRecord;
.super Ljava/lang/Object;
.source "AudioRecord.java"

# interfaces
.implements Landroid/media/AudioRouting;
.implements Landroid/media/MicrophoneDirection;
.implements Landroid/media/AudioRecordingMonitor;
.implements Landroid/media/AudioRecordingMonitorClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecord$MetricsConstants;,
        Landroid/media/AudioRecord$NativeEventHandler;,
        Landroid/media/AudioRecord$OnRecordPositionUpdateListener;,
        Landroid/media/AudioRecord$OnRoutingChangedListener;,
        Landroid/media/AudioRecord$Builder;,
        Landroid/media/AudioRecord$ReadMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final greylist-max-o AUDIORECORD_ERROR_SETUP_INVALIDFORMAT:I = -0x12

.field private static final greylist-max-o AUDIORECORD_ERROR_SETUP_INVALIDSOURCE:I = -0x13

.field private static final greylist-max-o AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED:I = -0x14

.field private static final greylist-max-o AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT:I = -0x10

.field public static final whitelist ERROR:I = -0x1

.field public static final whitelist ERROR_BAD_VALUE:I = -0x2

.field public static final whitelist ERROR_DEAD_OBJECT:I = -0x6

.field public static final whitelist ERROR_INVALID_OPERATION:I = -0x3

.field private static final blacklist MAX_SHARED_AUDIO_HISTORY_MS:J = 0x1388L

.field private static final greylist-max-o NATIVE_EVENT_MARKER:I = 0x2

.field private static final greylist-max-o NATIVE_EVENT_NEW_POS:I = 0x3

.field public static final whitelist READ_BLOCKING:I = 0x0

.field public static final whitelist READ_NON_BLOCKING:I = 0x1

.field public static final whitelist RECORDSTATE_RECORDING:I = 0x3

.field public static final whitelist RECORDSTATE_STOPPED:I = 0x1

.field public static final whitelist STATE_INITIALIZED:I = 0x1

.field public static final whitelist STATE_UNINITIALIZED:I = 0x0

.field public static final greylist-max-o SUBMIX_FIXED_VOLUME:Ljava/lang/String; = "fixedVolume"

.field public static final whitelist SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "android.media.AudioRecord"


# instance fields
.field private greylist-max-r mAudioAttributes:Landroid/media/AudioAttributes;

.field private blacklist mAudioCapturePolicy:Landroid/media/audiopolicy/AudioPolicy;

.field private greylist-max-o mAudioFormat:I

.field private greylist-max-o mChannelCount:I

.field private greylist-max-o mChannelIndexMask:I

.field private greylist-max-o mChannelMask:I

.field private greylist-max-o mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

.field private final greylist-max-o mICallBack:Landroid/os/IBinder;

.field private greylist mInitializationLooper:Landroid/os/Looper;

.field private greylist-max-o mIsSubmixFullVolume:Z

.field private blacklist mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private greylist mNativeAudioRecordHandle:J

.field private greylist-max-o mNativeBufferSizeInBytes:I

.field private greylist-max-r mNativeJNIDataHandle:J

.field private greylist-max-o mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

.field private final greylist-max-o mPositionListenerLock:Ljava/lang/Object;

.field private greylist-max-o mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private greylist-max-o mRecordSource:I

.field blacklist mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

.field private greylist-max-o mRecordingState:I

.field private final greylist-max-o mRecordingStateLock:Ljava/lang/Object;

.field private greylist-max-o mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSampleRate:I

.field private greylist-max-o mSessionId:I

.field private greylist-max-o mState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPositionListener(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPositionListenerLock(Landroid/media/AudioRecord;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterAudioPolicyOnRelease(Landroid/media/AudioRecord;Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->unregisterAudioPolicyOnRelease(Landroid/media/audiopolicy/AudioPolicy;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smloge(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>(IIIII)V
    .locals 3
    .param p1, "audioSource"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 323
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 324
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 327
    const/4 v2, 0x1

    invoke-static {p3, v2}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 329
    invoke-virtual {v1, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 330
    invoke-virtual {v1, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    .line 323
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p5, v2}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    .line 334
    return-void
.end method

.method constructor greylist-max-o <init>(J)V
    .locals 3
    .param p1, "nativeRecordInJavaObj"    # J

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 243
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 247
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    .line 254
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 258
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    .line 262
    iput-object v1, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 266
    iput-object v1, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 271
    iput v0, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 275
    iput v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    .line 281
    iput-boolean v0, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 287
    sget-object v2, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v2, p0, Landroid/media/AudioRecord;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 1485
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    .line 1953
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 2085
    iput-object v1, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2169
    new-instance v1, Landroid/media/AudioRecordingMonitorImpl;

    invoke-direct {v1, p0}, Landroid/media/AudioRecordingMonitorImpl;-><init>(Landroid/media/AudioRecordingMonitorClient;)V

    iput-object v1, p0, Landroid/media/AudioRecord;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    .line 491
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/AudioRecord;->mNativeAudioRecordHandle:J

    .line 492
    iput-wide v1, p0, Landroid/media/AudioRecord;->mNativeJNIDataHandle:J

    .line 495
    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 496
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioRecord;->deferred_connect(J)V

    goto :goto_0

    .line 498
    :cond_0
    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 500
    :goto_0
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V
    .locals 7
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "sessionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 360
    nop

    .line 361
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v5

    .line 360
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IILandroid/content/Context;I)V

    .line 362
    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IILandroid/content/Context;I)V
    .locals 25
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "sessionId"    # I
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "maxSharedAudioHistoryMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 388
    move-object/from16 v14, p0

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const/4 v15, 0x0

    iput v15, v14, Landroid/media/AudioRecord;->mState:I

    .line 243
    const/4 v13, 0x1

    iput v13, v14, Landroid/media/AudioRecord;->mRecordingState:I

    .line 247
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v14, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    .line 254
    const/4 v1, 0x0

    iput-object v1, v14, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 258
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v14, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    .line 262
    iput-object v1, v14, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 266
    iput-object v1, v14, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 271
    iput v15, v14, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 275
    iput v15, v14, Landroid/media/AudioRecord;->mSessionId:I

    .line 281
    iput-boolean v15, v14, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 287
    sget-object v2, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v2, v14, Landroid/media/AudioRecord;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 1485
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v14, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    .line 1953
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v14, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 2085
    iput-object v1, v14, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2169
    new-instance v1, Landroid/media/AudioRecordingMonitorImpl;

    invoke-direct {v1, v14}, Landroid/media/AudioRecordingMonitorImpl;-><init>(Landroid/media/AudioRecordingMonitorClient;)V

    iput-object v1, v14, Landroid/media/AudioRecord;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    .line 389
    iput v13, v14, Landroid/media/AudioRecord;->mRecordingState:I

    .line 391
    if-eqz v0, :cond_10

    .line 394
    if-eqz p2, :cond_f

    .line 399
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v14, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 400
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v14, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 404
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 405
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1, v0}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 407
    .local v1, "ab":Landroid/media/AudioAttributes$Builder;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 408
    .local v3, "filteredTags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 409
    .local v4, "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 410
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 411
    .local v5, "tag":Ljava/lang/String;
    const-string v6, "fixedVolume"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 412
    iput-boolean v13, v14, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 413
    const-string v6, "android.media.AudioRecord"

    const-string v7, "Will record from REMOTE_SUBMIX at full fixed volume"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 415
    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 417
    .end local v5    # "tag":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 418
    :cond_2
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->replaceTags(Ljava/util/HashSet;)Landroid/media/AudioAttributes$Builder;

    .line 419
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    move-object v11, v0

    .end local p1    # "attributes":Landroid/media/AudioAttributes;
    .local v0, "attributes":Landroid/media/AudioAttributes;
    goto :goto_2

    .line 404
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    .end local v1    # "ab":Landroid/media/AudioAttributes$Builder;
    .end local v3    # "filteredTags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local p1    # "attributes":Landroid/media/AudioAttributes;
    :cond_3
    move-object v11, v0

    .line 422
    .end local p1    # "attributes":Landroid/media/AudioAttributes;
    .local v11, "attributes":Landroid/media/AudioAttributes;
    :goto_2
    iput-object v11, v14, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

    .line 425
    .local v0, "rate":I
    if-nez v0, :cond_4

    .line 426
    const/4 v0, 0x0

    move v12, v0

    goto :goto_3

    .line 425
    :cond_4
    move v12, v0

    .line 429
    .end local v0    # "rate":I
    .local v12, "rate":I
    :goto_3
    const/4 v0, 0x1

    .line 430
    .local v0, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v1

    and-int/2addr v1, v13

    if-eqz v1, :cond_5

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    move v10, v0

    goto :goto_4

    .line 430
    :cond_5
    move v10, v0

    .line 435
    .end local v0    # "encoding":I
    .local v10, "encoding":I
    :goto_4
    iget-object v0, v14, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v0

    invoke-direct {v14, v0, v12, v10}, Landroid/media/AudioRecord;->audioParamCheck(III)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v0

    iput v0, v14, Landroid/media/AudioRecord;->mChannelIndexMask:I

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v0

    iput v0, v14, Landroid/media/AudioRecord;->mChannelCount:I

    .line 442
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v0

    invoke-static {v0, v15}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v0

    iput v0, v14, Landroid/media/AudioRecord;->mChannelMask:I

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v0

    iput v0, v14, Landroid/media/AudioRecord;->mChannelCount:I

    goto :goto_5

    .line 446
    :cond_7
    iget v0, v14, Landroid/media/AudioRecord;->mChannelIndexMask:I

    if-nez v0, :cond_8

    .line 447
    invoke-static {v13, v15}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v0

    iput v0, v14, Landroid/media/AudioRecord;->mChannelMask:I

    .line 448
    invoke-static {v0}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v0

    iput v0, v14, Landroid/media/AudioRecord;->mChannelCount:I

    .line 451
    :cond_8
    :goto_5
    move/from16 v9, p3

    invoke-direct {v14, v9}, Landroid/media/AudioRecord;->audioBuffSizeCheck(I)V

    .line 453
    if-eqz p5, :cond_9

    .line 454
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    goto :goto_6

    :cond_9
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 455
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    :goto_6
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_7

    .line 455
    :cond_a
    move-object/from16 v16, v0

    .line 460
    .end local v0    # "attributionSource":Landroid/content/AttributionSource;
    .local v16, "attributionSource":Landroid/content/AttributionSource;
    :goto_7
    new-array v0, v13, [I

    iget v1, v14, Landroid/media/AudioRecord;->mSampleRate:I

    aput v1, v0, v15

    move-object/from16 v17, v0

    .line 461
    .local v17, "sampleRate":[I
    new-array v8, v13, [I

    .line 462
    .local v8, "session":[I
    aput p4, v8, v15

    .line 466
    invoke-virtual/range {v16 .. v16}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v18

    .line 467
    .local v18, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :try_start_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, v14, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    iget v5, v14, Landroid/media/AudioRecord;->mChannelMask:I

    iget v6, v14, Landroid/media/AudioRecord;->mChannelIndexMask:I

    iget v7, v14, Landroid/media/AudioRecord;->mAudioFormat:I

    iget v0, v14, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 469
    invoke-virtual/range {v18 .. v18}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v20, 0x0

    .line 467
    move-object/from16 v1, p0

    move-object/from16 v4, v17

    move-object/from16 v22, v8

    .end local v8    # "session":[I
    .local v22, "session":[I
    move v8, v0

    move-object/from16 v9, v22

    move/from16 v23, v10

    .end local v10    # "encoding":I
    .local v23, "encoding":I
    move-object/from16 v10, v19

    move-object/from16 v19, v11

    move/from16 v24, v12

    .end local v11    # "attributes":Landroid/media/AudioAttributes;
    .end local v12    # "rate":I
    .local v19, "attributes":Landroid/media/AudioAttributes;
    .local v24, "rate":I
    move-wide/from16 v11, v20

    move v0, v13

    move/from16 v13, p6

    :try_start_1
    invoke-direct/range {v1 .. v13}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILandroid/os/Parcel;JI)I

    move-result v1

    .line 471
    .local v1, "initResult":I
    if-eqz v1, :cond_c

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " when initializing native AudioRecord object."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    if-eqz v18, :cond_b

    invoke-virtual/range {v18 .. v18}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 473
    :cond_b
    return-void

    .line 475
    .end local v1    # "initResult":I
    :cond_c
    if-eqz v18, :cond_d

    invoke-virtual/range {v18 .. v18}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 477
    .end local v18    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_d
    aget v1, v17, v15

    iput v1, v14, Landroid/media/AudioRecord;->mSampleRate:I

    .line 478
    aget v1, v22, v15

    iput v1, v14, Landroid/media/AudioRecord;->mSessionId:I

    .line 480
    iput v0, v14, Landroid/media/AudioRecord;->mState:I

    .line 481
    return-void

    .line 466
    .restart local v18    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_8

    .end local v19    # "attributes":Landroid/media/AudioAttributes;
    .end local v22    # "session":[I
    .end local v23    # "encoding":I
    .end local v24    # "rate":I
    .restart local v8    # "session":[I
    .restart local v10    # "encoding":I
    .restart local v11    # "attributes":Landroid/media/AudioAttributes;
    .restart local v12    # "rate":I
    :catchall_1
    move-exception v0

    move-object/from16 v22, v8

    move/from16 v23, v10

    move-object/from16 v19, v11

    move/from16 v24, v12

    move-object v1, v0

    .end local v8    # "session":[I
    .end local v10    # "encoding":I
    .end local v11    # "attributes":Landroid/media/AudioAttributes;
    .end local v12    # "rate":I
    .restart local v19    # "attributes":Landroid/media/AudioAttributes;
    .restart local v22    # "session":[I
    .restart local v23    # "encoding":I
    .restart local v24    # "rate":I
    :goto_8
    if-eqz v18, :cond_e

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_9
    throw v1

    .line 395
    .end local v16    # "attributionSource":Landroid/content/AttributionSource;
    .end local v17    # "sampleRate":[I
    .end local v18    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    .end local v19    # "attributes":Landroid/media/AudioAttributes;
    .end local v22    # "session":[I
    .end local v23    # "encoding":I
    .end local v24    # "rate":I
    .restart local p1    # "attributes":Landroid/media/AudioAttributes;
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal null AudioFormat"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal null AudioAttributes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IILandroid/content/Context;ILandroid/media/AudioRecord-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IILandroid/content/Context;I)V

    return-void
.end method

.method private greylist-max-o audioBuffSizeCheck(I)V
    .locals 4
    .param p1, "audioBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1161
    iget v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    iget v1, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 1162
    invoke-static {v1}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v1

    mul-int/2addr v0, v1

    .line 1163
    .local v0, "frameSizeInBytes":I
    rem-int v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    .line 1168
    iput p1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 1169
    return-void

    .line 1164
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid audio buffer size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (frame size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o audioParamCheck(III)V
    .locals 3
    .param p1, "audioSource"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "audioFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1109
    if-ltz p1, :cond_4

    .line 1110
    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v0

    if-le p1, v0, :cond_0

    const/16 v0, 0x7ce

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7cd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_4

    .line 1117
    :cond_0
    iput p1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    .line 1121
    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    if-lt p2, v0, :cond_1

    sget v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    if-le p2, v0, :cond_2

    :cond_1
    if-nez p2, :cond_3

    .line 1127
    :cond_2
    iput p2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 1131
    sparse-switch p3, :sswitch_data_0

    .line 1143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported sample encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Should be ENCODING_PCM_8BIT, ENCODING_PCM_16BIT, ENCODING_PCM_24BIT_PACKED, ENCODING_PCM_32BIT, or ENCODING_PCM_FLOAT."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1140
    :sswitch_0
    iput p3, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 1141
    goto :goto_0

    .line 1133
    :sswitch_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 1134
    nop

    .line 1148
    :goto_0
    return-void

    .line 1124
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1115
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid audio source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o broadcastRoutingChange()V
    .locals 3

    .line 2055
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 2056
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2057
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 2058
    .local v2, "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    invoke-virtual {v2}, Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V

    .line 2059
    .end local v2    # "delegate":Landroid/media/NativeRoutingEventHandlerDelegate;
    goto :goto_0

    .line 2060
    :cond_0
    monitor-exit v0

    .line 2061
    return-void

    .line 2060
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static greylist-max-o getChannelMaskFromLegacyConfig(IZ)I
    .locals 3
    .param p0, "inChannelConfig"    # I
    .param p1, "allowLegacyConfig"    # Z

    .line 1074
    sparse-switch p0, :sswitch_data_0

    .line 1088
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1085
    :sswitch_0
    move v0, p0

    .line 1086
    .local v0, "mask":I
    goto :goto_0

    .line 1082
    .end local v0    # "mask":I
    :sswitch_1
    const/16 v0, 0xc

    .line 1083
    .restart local v0    # "mask":I
    goto :goto_0

    .line 1078
    .end local v0    # "mask":I
    :sswitch_2
    const/16 v0, 0x10

    .line 1079
    .restart local v0    # "mask":I
    nop

    .line 1091
    :goto_0
    if-nez p1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 1094
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported deprecated configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1097
    :cond_1
    :goto_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_2
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist getMaxSharedAudioHistoryMillis()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1874
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public static whitelist getMinBufferSize(III)I
    .locals 3
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .line 1371
    const/4 v0, 0x0

    .line 1372
    .local v0, "channelCount":I
    const/4 v1, -0x2

    sparse-switch p1, :sswitch_data_0

    .line 1385
    const-string v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 1386
    return v1

    .line 1381
    :sswitch_0
    const/4 v0, 0x2

    .line 1382
    goto :goto_0

    .line 1376
    :sswitch_1
    const/4 v0, 0x1

    .line 1377
    nop

    .line 1389
    :goto_0
    invoke-static {p0, v0, p2}, Landroid/media/AudioRecord;->native_get_min_buff_size(III)I

    move-result v2

    .line 1390
    .local v2, "size":I
    if-nez v2, :cond_0

    .line 1391
    return v1

    .line 1393
    :cond_0
    const/4 v1, -0x1

    if-ne v2, v1, :cond_1

    .line 1394
    return v1

    .line 1397
    :cond_1
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0xc -> :sswitch_0
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o handleFullVolumeRec(Z)V
    .locals 5
    .param p1, "starting"    # Z

    .line 1487
    iget-boolean v0, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    if-nez v0, :cond_0

    .line 1488
    return-void

    .line 1490
    :cond_0
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1491
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 1493
    .local v1, "ias":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioService;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1496
    goto :goto_0

    .line 1494
    :catch_0
    move-exception v2

    .line 1495
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "android.media.AudioRecord"

    const-string v4, "Error talking to AudioService when handling full submix volume"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1497
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private static greylist-max-o logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 2467
    const-string v0, "android.media.AudioRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    return-void
.end method

.method private static greylist-max-o loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 2471
    const-string v0, "android.media.AudioRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    return-void
.end method

.method private final native greylist-max-o native_disableDeviceCallback()V
.end method

.method private final native greylist-max-o native_enableDeviceCallback()V
.end method

.method private native greylist-max-o native_finalize()V
.end method

.method private native greylist-max-o native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private native blacklist native_getPortId()I
.end method

.method private final native greylist-max-o native_getRoutedDeviceId()I
.end method

.method private final native greylist-max-o native_get_active_microphones(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MicrophoneInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method private final native greylist-max-o native_get_buffer_size_in_frames()I
.end method

.method private final native greylist-max-o native_get_marker_pos()I
.end method

.method private static final native greylist-max-o native_get_min_buff_size(III)I
.end method

.method private final native greylist-max-o native_get_pos_update_period()I
.end method

.method private final native greylist-max-o native_get_timestamp(Landroid/media/AudioTimestamp;I)I
.end method

.method private final native greylist-max-o native_read_in_byte_array([BIIZ)I
.end method

.method private final native greylist-max-o native_read_in_direct_buffer(Ljava/lang/Object;IZ)I
.end method

.method private final native greylist-max-o native_read_in_float_array([FIIZ)I
.end method

.method private final native greylist-max-o native_read_in_short_array([SIIZ)I
.end method

.method private final native greylist-max-o native_setInputDevice(I)Z
.end method

.method private native blacklist native_setLogSessionId(Ljava/lang/String;)V
.end method

.method private final native greylist-max-o native_set_marker_pos(I)I
.end method

.method private final native greylist-max-o native_set_pos_update_period(I)I
.end method

.method private native blacklist native_set_preferred_microphone_direction(I)I
.end method

.method private native blacklist native_set_preferred_microphone_field_dimension(F)I
.end method

.method private native blacklist native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILandroid/os/Parcel;JI)I
.end method

.method private greylist-max-r native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILjava/lang/String;J)I
    .locals 17
    .param p1, "audiorecordThis"    # Ljava/lang/Object;
    .param p2, "attributes"    # Ljava/lang/Object;
    .param p3, "sampleRate"    # [I
    .param p4, "channelMask"    # I
    .param p5, "channelIndexMask"    # I
    .param p6, "audioFormat"    # I
    .param p7, "buffSizeInBytes"    # I
    .param p8, "sessionId"    # [I
    .param p9, "opPackageName"    # Ljava/lang/String;
    .param p10, "nativeRecordInJavaObj"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2388
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 2389
    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/content/AttributionSource;->withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;

    move-result-object v2

    .line 2390
    .local v2, "attributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v2}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v3

    .line 2391
    .local v3, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    nop

    .line 2393
    :try_start_0
    invoke-virtual {v3}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v13

    const/16 v16, 0x0

    .line 2391
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move-wide/from16 v14, p10

    invoke-direct/range {v4 .. v16}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILandroid/os/Parcel;JI)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2394
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 2391
    :cond_0
    return v0

    .line 2390
    :catchall_0
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v3}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v4
.end method

.method private native blacklist native_shareAudioHistory(Ljava/lang/String;J)I
.end method

.method private final native greylist-max-o native_start(II)I
.end method

.method private final native greylist-max-o native_stop()V
.end method

.method private static greylist-max-r postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "audiorecord_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 2353
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioRecord;

    .line 2354
    .local v0, "recorder":Landroid/media/AudioRecord;
    if-nez v0, :cond_0

    .line 2355
    return-void

    .line 2358
    :cond_0
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_1

    .line 2359
    invoke-direct {v0}, Landroid/media/AudioRecord;->broadcastRoutingChange()V

    .line 2360
    return-void

    .line 2363
    :cond_1
    iget-object v1, v0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    if-eqz v1, :cond_2

    .line 2364
    nop

    .line 2365
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/AudioRecord$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2366
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, v1}, Landroid/media/AudioRecord$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2369
    .end local v1    # "m":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private greylist-max-o testDisableNativeRoutingCallbacksLocked()V
    .locals 1

    .line 1940
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1941
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_disableDeviceCallback()V

    .line 1943
    :cond_0
    return-void
.end method

.method private greylist-max-o testEnableNativeRoutingCallbacksLocked()V
    .locals 1

    .line 1930
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1931
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_enableDeviceCallback()V

    .line 1933
    :cond_0
    return-void
.end method

.method private blacklist unregisterAudioPolicyOnRelease(Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 0
    .param p1, "audioPolicy"    # Landroid/media/audiopolicy/AudioPolicy;

    .line 509
    iput-object p1, p0, Landroid/media/AudioRecord;->mAudioCapturePolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 510
    return-void
.end method


# virtual methods
.method public whitelist addOnRoutingChangedListener(Landroid/media/AudioRecord$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2036
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioRecord;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 2037
    return-void
.end method

.method public whitelist addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 5
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1969
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1970
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1971
    invoke-direct {p0}, Landroid/media/AudioRecord;->testEnableNativeRoutingCallbacksLocked()V

    .line 1972
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 1974
    if-eqz p2, :cond_0

    move-object v3, p2

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    invoke-direct {v2, p0, p1, v3}, Landroid/media/NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 1972
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1976
    :cond_1
    monitor-exit v0

    .line 1977
    return-void

    .line 1976
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o deferred_connect(J)V
    .locals 19
    .param p1, "nativeRecordInJavaObj"    # J

    .line 516
    move-object/from16 v14, p0

    iget v0, v14, Landroid/media/AudioRecord;->mState:I

    const/4 v15, 0x1

    if-eq v0, v15, :cond_3

    .line 517
    new-array v0, v15, [I

    const/16 v16, 0x0

    aput v16, v0, v16

    move-object/from16 v17, v0

    .line 518
    .local v17, "session":[I
    new-array v4, v15, [I

    aput v16, v4, v16

    .line 524
    .local v4, "rates":[I
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v18

    .line 526
    .local v18, "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :try_start_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 534
    invoke-virtual/range {v18 .. v18}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v10

    const/4 v13, 0x0

    .line 526
    move-object/from16 v1, p0

    move-object/from16 v9, v17

    move-wide/from16 v11, p1

    invoke-direct/range {v1 .. v13}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIII[ILandroid/os/Parcel;JI)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    .local v0, "initResult":I
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    .line 538
    .end local v18    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_0
    if-eqz v0, :cond_1

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when initializing native AudioRecord object."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 540
    return-void

    .line 543
    :cond_1
    aget v1, v17, v16

    iput v1, v14, Landroid/media/AudioRecord;->mSessionId:I

    .line 545
    iput v15, v14, Landroid/media/AudioRecord;->mState:I

    goto :goto_1

    .line 524
    .end local v0    # "initResult":I
    .restart local v18    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v18, :cond_2

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1

    .line 547
    .end local v4    # "rates":[I
    .end local v17    # "session":[I
    .end local v18    # "attributionSourceState":Landroid/content/AttributionSource$ScopedParcelState;
    :cond_3
    :goto_1
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    .line 1196
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 1197
    return-void
.end method

.method public whitelist getActiveMicrophones()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MicrophoneInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2140
    .local v0, "activeMicrophones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MicrophoneInfo;>;"
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->native_get_active_microphones(Ljava/util/ArrayList;)I

    move-result v1

    .line 2141
    .local v1, "status":I
    if-eqz v1, :cond_1

    .line 2142
    const/4 v2, -0x3

    const-string v3, "android.media.AudioRecord"

    if-eq v1, v2, :cond_0

    .line 2143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveMicrophones failed:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :cond_0
    const-string v2, "getActiveMicrophones failed, fallback on routed device info"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    :cond_1
    invoke-static {v0}, Landroid/media/AudioManager;->setPortIdForMicrophones(Ljava/util/ArrayList;)V

    .line 2150
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 2151
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 2152
    .local v2, "device":Landroid/media/AudioDeviceInfo;
    if-eqz v2, :cond_3

    .line 2153
    invoke-static {v2}, Landroid/media/AudioManager;->microphoneInfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MicrophoneInfo;

    move-result-object v3

    .line 2154
    .local v3, "microphone":Landroid/media/MicrophoneInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2155
    .local v4, "channelMapping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Landroid/media/AudioRecord;->mChannelCount:I

    if-ge v5, v6, :cond_2

    .line 2156
    new-instance v6, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2155
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2158
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {v3, v4}, Landroid/media/MicrophoneInfo;->setChannelMapping(Ljava/util/List;)V

    .line 2159
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2162
    .end local v2    # "device":Landroid/media/AudioDeviceInfo;
    .end local v3    # "microphone":Landroid/media/MicrophoneInfo;
    .end local v4    # "channelMapping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_3
    return-object v0
.end method

.method public whitelist getActiveRecordingConfiguration()Landroid/media/AudioRecordingConfiguration;
    .locals 1

    .line 2201
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    invoke-virtual {v0}, Landroid/media/AudioRecordingMonitorImpl;->getActiveRecordingConfiguration()Landroid/media/AudioRecordingConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .line 551
    iget-object v0, p0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public whitelist getAudioFormat()I
    .locals 1

    .line 1227
    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    return v0
.end method

.method public whitelist getAudioSessionId()I
    .locals 1

    .line 1407
    iget v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    return v0
.end method

.method public whitelist getAudioSource()I
    .locals 1

    .line 1219
    iget v0, p0, Landroid/media/AudioRecord;->mRecordSource:I

    return v0
.end method

.method public whitelist getBufferSizeInFrames()I
    .locals 1

    .line 1302
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_buffer_size_in_frames()I

    move-result v0

    return v0
.end method

.method public whitelist getChannelConfiguration()I
    .locals 1

    .line 1240
    iget v0, p0, Landroid/media/AudioRecord;->mChannelMask:I

    return v0
.end method

.method public whitelist getChannelCount()I
    .locals 1

    .line 1265
    iget v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    return v0
.end method

.method public whitelist getFormat()Landroid/media/AudioFormat;
    .locals 2

    .line 1249
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 1250
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 1251
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1252
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

    if-eqz v1, :cond_0

    .line 1253
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 1255
    :cond_0
    iget v1, p0, Landroid/media/AudioRecord;->mChannelIndexMask:I

    if-eqz v1, :cond_1

    .line 1256
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 1258
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getLogSessionId()Landroid/media/metrics/LogSessionId;
    .locals 1

    .line 2276
    iget-object v0, p0, Landroid/media/AudioRecord;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public whitelist getMetrics()Landroid/os/PersistableBundle;
    .locals 1

    .line 1785
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1786
    .local v0, "bundle":Landroid/os/PersistableBundle;
    return-object v0
.end method

.method public whitelist getNotificationMarkerPosition()I
    .locals 1

    .line 1309
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public blacklist getPortId()I
    .locals 4

    .line 2211
    iget-wide v0, p0, Landroid/media/AudioRecord;->mNativeAudioRecordHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2212
    return v1

    .line 2215
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_getPortId()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2216
    :catch_0
    move-exception v0

    .line 2217
    .local v0, "e":Ljava/lang/IllegalStateException;
    return v1
.end method

.method public whitelist getPositionNotificationPeriod()I
    .locals 1

    .line 1316
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public whitelist getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    .line 2118
    monitor-enter p0

    .line 2119
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    .line 2120
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist getRecordingState()I
    .locals 2

    .line 1286
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1287
    :try_start_0
    iget v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    monitor-exit v0

    return v1

    .line 1288
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 2

    .line 1854
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_getRoutedDeviceId()I

    move-result v0

    .line 1855
    .local v0, "deviceId":I
    if-nez v0, :cond_0

    .line 1856
    const/4 v1, 0x0

    return-object v1

    .line 1858
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getSampleRate()I
    .locals 1

    .line 1211
    iget v0, p0, Landroid/media/AudioRecord;->mSampleRate:I

    return v0
.end method

.method public whitelist getState()I
    .locals 1

    .line 1277
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    return v0
.end method

.method public whitelist getTimestamp(Landroid/media/AudioTimestamp;I)I
    .locals 1
    .param p1, "outTimestamp"    # Landroid/media/AudioTimestamp;
    .param p2, "timebase"    # I

    .line 1340
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    .line 1345
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/AudioRecord;->native_get_timestamp(Landroid/media/AudioTimestamp;I)I

    move-result v0

    return v0

    .line 1343
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist isPrivacySensitive()Z
    .locals 1

    .line 1418
    iget-object v0, p0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final native greylist native_release()V
.end method

.method public whitelist read(Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I

    .line 1725
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public whitelist read(Ljava/nio/ByteBuffer;II)I
    .locals 3
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "readMode"    # I

    .line 1758
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1759
    const/4 v0, -0x3

    return v0

    .line 1762
    :cond_0
    const/4 v0, -0x2

    if-eqz p3, :cond_1

    if-eq p3, v1, :cond_1

    .line 1763
    const-string v1, "android.media.AudioRecord"

    const-string v2, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    return v0

    .line 1767
    :cond_1
    if-eqz p1, :cond_4

    if-gez p2, :cond_2

    goto :goto_1

    .line 1771
    :cond_2
    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Landroid/media/AudioRecord;->native_read_in_direct_buffer(Ljava/lang/Object;IZ)I

    move-result v0

    return v0

    .line 1768
    :cond_4
    :goto_1
    return v0
.end method

.method public whitelist read([BII)I
    .locals 1
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .line 1521
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->read([BIII)I

    move-result v0

    return v0
.end method

.method public whitelist read([BIII)I
    .locals 4
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "readMode"    # I

    .line 1554
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 1558
    :cond_0
    const/4 v0, -0x2

    if-eqz p4, :cond_1

    if-eq p4, v1, :cond_1

    .line 1559
    const-string v1, "android.media.AudioRecord"

    const-string v2, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    return v0

    .line 1563
    :cond_1
    if-eqz p1, :cond_4

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    add-int v2, p2, p3

    if-ltz v2, :cond_4

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 1569
    :cond_2
    if-nez p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/AudioRecord;->native_read_in_byte_array([BIIZ)I

    move-result v0

    return v0

    .line 1566
    :cond_4
    :goto_1
    return v0

    .line 1555
    :cond_5
    :goto_2
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist read([FIII)I
    .locals 4
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "readMode"    # I

    .line 1675
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, -0x3

    const-string v2, "android.media.AudioRecord"

    if-nez v0, :cond_0

    .line 1676
    const-string v0, "AudioRecord.read() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    return v1

    .line 1680
    :cond_0
    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    .line 1681
    const-string v0, "AudioRecord.read(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    return v1

    .line 1685
    :cond_1
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_2

    if-eq p4, v1, :cond_2

    .line 1686
    const-string v1, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    return v0

    .line 1690
    :cond_2
    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v2, p2, p3

    if-ltz v2, :cond_5

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_3

    goto :goto_1

    .line 1696
    :cond_3
    if-nez p4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/AudioRecord;->native_read_in_float_array([FIIZ)I

    move-result v0

    return v0

    .line 1693
    :cond_5
    :goto_1
    return v0
.end method

.method public whitelist read([SII)I
    .locals 1
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .line 1595
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioRecord;->read([SIII)I

    move-result v0

    return v0
.end method

.method public whitelist read([SIII)I
    .locals 4
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "readMode"    # I

    .line 1626
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    goto :goto_2

    .line 1633
    :cond_0
    const/4 v0, -0x2

    if-eqz p4, :cond_1

    if-eq p4, v1, :cond_1

    .line 1634
    const-string v1, "android.media.AudioRecord"

    const-string v2, "AudioRecord.read() called with invalid blocking mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    return v0

    .line 1638
    :cond_1
    if-eqz p1, :cond_4

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    add-int v2, p2, p3

    if-ltz v2, :cond_4

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 1643
    :cond_2
    if-nez p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/AudioRecord;->native_read_in_short_array([SIIZ)I

    move-result v0

    return v0

    .line 1641
    :cond_4
    :goto_1
    return v0

    .line 1630
    :cond_5
    :goto_2
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist registerAudioRecordingCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .line 2182
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioRecordingMonitorImpl;->registerAudioRecordingCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V

    .line 2183
    return-void
.end method

.method public whitelist release()V
    .locals 1

    .line 1180
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    goto :goto_0

    .line 1181
    :catch_0
    move-exception v0

    .line 1184
    :goto_0
    iget-object v0, p0, Landroid/media/AudioRecord;->mAudioCapturePolicy:Landroid/media/audiopolicy/AudioPolicy;

    if-eqz v0, :cond_0

    .line 1185
    invoke-static {v0}, Landroid/media/AudioManager;->unregisterAudioPolicyAsyncStatic(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 1186
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioRecord;->mAudioCapturePolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 1188
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->native_release()V

    .line 1189
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 1190
    return-void
.end method

.method public whitelist removeOnRoutingChangedListener(Landroid/media/AudioRecord$OnRoutingChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRoutingChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2048
    invoke-virtual {p0, p1}, Landroid/media/AudioRecord;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    .line 2049
    return-void
.end method

.method public whitelist removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;

    .line 1987
    iget-object v0, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1988
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1989
    iget-object v1, p0, Landroid/media/AudioRecord;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    invoke-direct {p0}, Landroid/media/AudioRecord;->testDisableNativeRoutingCallbacksLocked()V

    .line 1992
    :cond_0
    monitor-exit v0

    .line 1993
    return-void

    .line 1992
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .locals 2
    .param p1, "logSessionId"    # Landroid/media/metrics/LogSessionId;

    .line 2262
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2263
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eqz v0, :cond_0

    .line 2266
    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v0

    .line 2267
    .local v0, "stringId":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->native_setLogSessionId(Ljava/lang/String;)V

    .line 2268
    iput-object p1, p0, Landroid/media/AudioRecord;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 2269
    return-void

    .line 2264
    .end local v0    # "stringId":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioRecord not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNotificationMarkerPosition(I)I
    .locals 1
    .param p1, "markerInFrames"    # I

    .line 1841
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v0, :cond_0

    .line 1842
    const/4 v0, -0x3

    return v0

    .line 1844
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_marker_pos(I)I

    move-result v0

    return v0
.end method

.method public whitelist setPositionNotificationPeriod(I)I
    .locals 2
    .param p1, "periodInFrames"    # I

    .line 2072
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, -0x3

    if-nez v0, :cond_0

    .line 2073
    return v1

    .line 2076
    :cond_0
    if-gez p1, :cond_1

    .line 2077
    return v1

    .line 2079
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_pos_update_period(I)I

    move-result v0

    return v0
.end method

.method public whitelist setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 2098
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2099
    return v0

    .line 2102
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 2103
    .local v0, "preferredDeviceId":I
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->native_setInputDevice(I)Z

    move-result v1

    .line 2104
    .local v1, "status":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2105
    monitor-enter p0

    .line 2106
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2107
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2109
    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist setPreferredMicrophoneDirection(I)Z
    .locals 1
    .param p1, "direction"    # I

    .line 2232
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_preferred_microphone_direction(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist setPreferredMicrophoneFieldDimension(F)Z
    .locals 4
    .param p1, "zoom"    # F

    .line 2245
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Argument must fall between -1 & 1 (inclusive)"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2247
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_preferred_microphone_field_dimension(F)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public whitelist setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 1800
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 1801
    return-void
.end method

.method public whitelist setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1813
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1815
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 1817
    if-eqz p1, :cond_1

    .line 1818
    if-eqz p2, :cond_0

    .line 1819
    new-instance v1, Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    goto :goto_0

    .line 1822
    :cond_0
    new-instance v1, Landroid/media/AudioRecord$NativeEventHandler;

    iget-object v2, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    goto :goto_0

    .line 1825
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 1827
    :goto_0
    monitor-exit v0

    .line 1829
    return-void

    .line 1827
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist shareAudioHistory(Ljava/lang/String;J)Landroid/media/MediaSyncEvent;
    .locals 3
    .param p1, "sharedPackage"    # Ljava/lang/String;
    .param p2, "startFromMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1909
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1910
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    .line 1913
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioRecord;->native_shareAudioHistory(Ljava/lang/String;J)I

    move-result v0

    .line 1914
    .local v0, "status":I
    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    .line 1916
    const/4 v1, -0x4

    if-eq v0, v1, :cond_0

    .line 1919
    const/16 v1, 0x64

    .line 1920
    invoke-static {v1}, Landroid/media/MediaSyncEvent;->createEvent(I)Landroid/media/MediaSyncEvent;

    move-result-object v1

    .line 1921
    .local v1, "event":Landroid/media/MediaSyncEvent;
    iget v2, p0, Landroid/media/AudioRecord;->mSessionId:I

    invoke-virtual {v1, v2}, Landroid/media/MediaSyncEvent;->setAudioSessionId(I)Landroid/media/MediaSyncEvent;

    .line 1922
    return-object v1

    .line 1917
    .end local v1    # "event":Landroid/media/MediaSyncEvent;
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "permission CAPTURE_AUDIO_HOTWORD required"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1915
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal sharedAudioHistoryMs argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1911
    .end local v0    # "status":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal negative sharedAudioHistoryMs argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startRecording()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1430
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1436
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1437
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, v2}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v2

    if-nez v2, :cond_0

    .line 1438
    invoke-direct {p0, v1}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 1439
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 1441
    :cond_0
    monitor-exit v0

    .line 1442
    return-void

    .line 1441
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1431
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist startRecording(Landroid/media/MediaSyncEvent;)V
    .locals 4
    .param p1, "syncEvent"    # Landroid/media/MediaSyncEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1453
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1459
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1460
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v2

    if-nez v2, :cond_0

    .line 1461
    invoke-direct {p0, v1}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 1462
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 1464
    :cond_0
    monitor-exit v0

    .line 1465
    return-void

    .line 1464
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1454
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1473
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1478
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1479
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 1480
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    .line 1481
    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 1482
    monitor-exit v0

    .line 1483
    return-void

    .line 1482
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1474
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .line 2191
    iget-object v0, p0, Landroid/media/AudioRecord;->mRecordingInfoImpl:Landroid/media/AudioRecordingMonitorImpl;

    invoke-virtual {v0, p1}, Landroid/media/AudioRecordingMonitorImpl;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    .line 2192
    return-void
.end method
