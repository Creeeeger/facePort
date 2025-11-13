.class public Landroid/media/audiofx/AudioEffect;
.super Ljava/lang/Object;
.source "AudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;,
        Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;,
        Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;,
        Landroid/media/audiofx/AudioEffect$NativeEventHandler;,
        Landroid/media/audiofx/AudioEffect$OnErrorListener;,
        Landroid/media/audiofx/AudioEffect$Descriptor;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CLOSE_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final whitelist ACTION_DISPLAY_AUDIO_EFFECT_CONTROL_PANEL:Ljava/lang/String; = "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

.field public static final whitelist ACTION_OPEN_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final whitelist ALREADY_EXISTS:I = -0x2

.field public static final whitelist CONTENT_TYPE_GAME:I = 0x2

.field public static final whitelist CONTENT_TYPE_MOVIE:I = 0x1

.field public static final whitelist CONTENT_TYPE_MUSIC:I = 0x0

.field public static final whitelist CONTENT_TYPE_VOICE:I = 0x3

.field public static final whitelist EFFECT_AUXILIARY:Ljava/lang/String; = "Auxiliary"

.field public static final whitelist EFFECT_INSERT:Ljava/lang/String; = "Insert"

.field public static final whitelist EFFECT_POST_PROCESSING:Ljava/lang/String; = "Post Processing"

.field public static final whitelist EFFECT_PRE_PROCESSING:Ljava/lang/String; = "Pre Processing"

.field public static final whitelist EFFECT_TYPE_AEC:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_AGC:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_DYNAMICS_PROCESSING:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_HAPTIC_GENERATOR:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_NS:Ljava/util/UUID;

.field public static final blacklist EFFECT_TYPE_NULL:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

.field public static final whitelist EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

.field public static final whitelist ERROR:I = -0x1

.field public static final whitelist ERROR_BAD_VALUE:I = -0x4

.field public static final whitelist ERROR_DEAD_OBJECT:I = -0x7

.field public static final whitelist ERROR_INVALID_OPERATION:I = -0x5

.field public static final whitelist ERROR_NO_INIT:I = -0x3

.field public static final whitelist ERROR_NO_MEMORY:I = -0x6

.field public static final whitelist EXTRA_AUDIO_SESSION:Ljava/lang/String; = "android.media.extra.AUDIO_SESSION"

.field public static final whitelist EXTRA_CONTENT_TYPE:Ljava/lang/String; = "android.media.extra.CONTENT_TYPE"

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.media.extra.PACKAGE_NAME"

.field public static final greylist-max-o NATIVE_EVENT_CONTROL_STATUS:I = 0x0

.field public static final greylist-max-o NATIVE_EVENT_ENABLED_STATUS:I = 0x1

.field public static final blacklist NATIVE_EVENT_ERROR:I = 0x3

.field public static final greylist-max-o NATIVE_EVENT_PARAMETER_CHANGED:I = 0x2

.field public static final greylist-max-o STATE_INITIALIZED:I = 0x1

.field public static final greylist-max-o STATE_UNINITIALIZED:I = 0x0

.field public static final whitelist SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AudioEffect-JAVA"


# instance fields
.field private greylist-max-o mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

.field private greylist-max-o mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

.field private greylist-max-o mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

.field private blacklist mErrorListener:Landroid/media/audiofx/AudioEffect$OnErrorListener;

.field private greylist-max-o mId:I

.field private greylist-max-o mJniData:J

.field public final greylist-max-o mListenerLock:Ljava/lang/Object;

.field private greylist-max-o mNativeAudioEffect:J

.field public greylist-max-o mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

.field private greylist-max-o mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

.field private greylist-max-o mState:I

.field private final greylist-max-o mStateLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmControlChangeStatusListener(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    .locals 0

    iget-object p0, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnableStatusChangeListener(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    .locals 0

    iget-object p0, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParameterChangeListener(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    .locals 0

    iget-object p0, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "audioeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/audiofx/AudioEffect;->native_init()V

    nop

    const-string v0, "c2e5d5f0-94bd-4763-9cac-4e234d06839e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

    nop

    const-string v0, "47382d60-ddd8-11db-bf3a-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

    nop

    const-string v0, "0bed4300-ddd6-11db-8f34-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    nop

    const-string v0, "0634f220-ddd4-11db-a0fc-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

    nop

    const-string v0, "37cc2c00-dddd-11db-8577-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

    nop

    const-string v0, "0a8abfe0-654c-11e0-ba26-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    nop

    const-string v0, "7b491460-8d4d-11e0-bd61-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    nop

    const-string v0, "58b4b260-8e06-11e0-aa8e-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    nop

    const-string v0, "fe3199be-aed0-413f-87bb-11260eb63cf1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

    nop

    const-string v0, "7261676f-6d75-7369-6364-28e2fd3ac39e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_DYNAMICS_PROCESSING:Ljava/util/UUID;

    nop

    const-string v0, "1411e6d6-aecd-4021-a1cf-a6aceb0d71e5"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_HAPTIC_GENERATOR:Ljava/util/UUID;

    nop

    const-string v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/UUID;Landroid/media/AudioDeviceAttributes;)V
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/UUID;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/media/AudioDeviceAttributes;

    const/4 v3, 0x0

    const/4 v4, -0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;IILandroid/media/AudioDeviceAttributes;)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/util/UUID;Ljava/util/UUID;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;IILandroid/media/AudioDeviceAttributes;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/UUID;Ljava/util/UUID;IILandroid/media/AudioDeviceAttributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;IILandroid/media/AudioDeviceAttributes;Z)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/UUID;Ljava/util/UUID;IILandroid/media/AudioDeviceAttributes;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, v13, Landroid/media/audiofx/AudioEffect;->mState:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v13, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v13, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    iput-object v1, v13, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    iput-object v1, v13, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v13, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    iput-object v1, v13, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    iput-object v1, v13, Landroid/media/audiofx/AudioEffect;->mErrorListener:Landroid/media/audiofx/AudioEffect$OnErrorListener;

    const/4 v15, 0x1

    new-array v12, v15, [I

    new-array v11, v15, [Landroid/media/audiofx/AudioEffect$Descriptor;

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/media/AudioDeviceAttributes;->getRole()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v1

    goto :goto_0

    :cond_0
    nop

    invoke-virtual/range {p5 .. p5}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(ILjava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v2

    move/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_1

    :cond_1
    move/from16 v16, v1

    move-object/from16 v17, v2

    :goto_1
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/AttributionSource;->asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;

    move-result-object v18

    :try_start_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Landroid/content/AttributionSource$ScopedParcelState;->getParcel()Landroid/os/Parcel;

    move-result-object v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v1, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, v16

    move-object/from16 v8, v17

    move-object v9, v12

    move-object v10, v11

    move-object/from16 v20, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v12

    move/from16 v12, p6

    :try_start_1
    invoke-direct/range {v1 .. v12}, Landroid/media/audiofx/AudioEffect;->native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;[I[Ljava/lang/Object;Landroid/os/Parcel;Z)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/content/AttributionSource$ScopedParcelState;->close()V

    :cond_2
    if-eqz v1, :cond_3

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    const-string v0, "AudioEffect-JAVA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when initializing AudioEffect."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot initialize effect engine for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Effect type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Effect library not loaded"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    aget v2, v19, v0

    iput v2, v13, Landroid/media/audiofx/AudioEffect;->mId:I

    aget-object v0, v20, v0

    iput-object v0, v13, Landroid/media/audiofx/AudioEffect;->mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

    if-nez p6, :cond_4

    iget-object v2, v13, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iput v15, v13, Landroid/media/audiofx/AudioEffect;->mState:I

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    :goto_2
    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v20, v11

    move-object/from16 v19, v12

    move-object v1, v0

    :goto_3
    if-eqz v18, :cond_5

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Landroid/content/AttributionSource$ScopedParcelState;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw v1

    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o byteArrayToFloat([B)F
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToFloat([BI)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o byteArrayToFloat([BI)F
    .locals 2

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v1

    return v1
.end method

.method public static blacklist byteArrayToInt([B)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o byteArrayToInt([BI)I
    .locals 2

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method public static blacklist byteArrayToShort([B)S
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v0

    return v0
.end method

.method public static greylist-max-o byteArrayToShort([BI)S
    .locals 2

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1
.end method

.method public static varargs blacklist concatArrays([[B)[B
    .locals 8

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    array-length v5, v4

    add-int/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v0, [B

    const/4 v3, 0x0

    array-length v4, p0

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, p0, v5

    array-length v7, v6

    invoke-static {v6, v2, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v6

    add-int/2addr v3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private greylist-max-o createNativeEventHandler()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;-><init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;-><init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    :goto_0
    return-void
.end method

.method public static greylist-max-o floatToByteArray(F)[B
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist intToByteArray(I)[B
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static whitelist isEffectSupportedForDevice(Ljava/util/UUID;Landroid/media/AudioDeviceAttributes;)Z
    .locals 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    new-instance v7, Landroid/media/audiofx/AudioEffect;

    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/UUID;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/media/AudioDeviceAttributes;

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;IILandroid/media/AudioDeviceAttributes;Z)V

    move-object v0, v7

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isEffectTypeAvailable(Ljava/util/UUID;)Z
    .locals 4

    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v3, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static blacklist isError(I)Z
    .locals 1

    if-gez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final native greylist-max-o native_command(II[BI[B)I
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_getEnabled()Z
.end method

.method private final native greylist-max-o native_getParameter(I[BI[B)I
.end method

.method private final native greylist-max-o native_hasControl()Z
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private static native greylist-max-o native_query_effects()[Ljava/lang/Object;
.end method

.method private static native greylist-max-o native_query_pre_processing(I)[Ljava/lang/Object;
.end method

.method private final native greylist-max-o native_release()V
.end method

.method private final native greylist-max-o native_setEnabled(Z)I
.end method

.method private final native greylist-max-o native_setParameter(I[BI[B)I
.end method

.method private final native blacklist native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;[I[Ljava/lang/Object;Landroid/os/Parcel;Z)I
.end method

.method private static greylist-max-o postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/AudioEffect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-virtual {v2, v1}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public static whitelist queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1

    invoke-static {}, Landroid/media/audiofx/AudioEffect;->native_query_effects()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public static greylist-max-o queryPreProcessings(I)[Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1

    invoke-static {p0}, Landroid/media/audiofx/AudioEffect;->native_query_pre_processing(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public static blacklist shortToByteArray(S)[B
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public greylist checkState(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " called on uninitialized AudioEffect."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o checkStatus(I)V
    .locals 2

    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->isError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AudioEffect: set/get parameter error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AudioEffect: bad parameter value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "AudioEffect: invalid parameter operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-p command(I[B[B)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "command()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    array-length v3, p2

    array-length v5, p3

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/media/audiofx/AudioEffect;->native_command(II[BI[B)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_finalize()V

    return-void
.end method

.method public whitelist getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "getDescriptor()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public whitelist getEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "getEnabled()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_getEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist getId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "getId()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/audiofx/AudioEffect;->mId:I

    return v0
.end method

.method public blacklist getParameter(I[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    return v1
.end method

.method public blacklist getParameter(I[I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, -0x4

    return v0

    :cond_0
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x4

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v2, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x0

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v6

    aput v6, p2, v5

    if-ne v3, v4, :cond_3

    const/4 v4, 0x1

    invoke-static {v1, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v5

    aput v5, p2, v4

    :cond_3
    div-int/lit8 v2, v3, 0x4

    :goto_1
    return v2
.end method

.method public blacklist getParameter(I[S)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, -0x4

    return v0

    :cond_0
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    array-length v2, p2

    mul-int/2addr v2, v1

    new-array v2, v2, [B

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v1, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x0

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v6

    aput-short v6, p2, v5

    if-ne v3, v4, :cond_3

    const/4 v4, 0x1

    invoke-static {v2, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v5

    aput-short v5, p2, v4

    :cond_3
    div-int/lit8 v1, v3, 0x2

    :goto_1
    return v1
.end method

.method public blacklist getParameter([B[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "getParameter()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    array-length v0, p1

    array-length v1, p2

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/media/audiofx/AudioEffect;->native_getParameter(I[BI[B)I

    move-result v0

    return v0
.end method

.method public greylist-max-r getParameter([I[B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, -0x4

    return v0

    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    aget v1, p1, v2

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    filled-new-array {v0, v1}, [[B

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    return v1
.end method

.method public greylist-max-r getParameter([I[I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_5

    array-length v0, p2

    if-le v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    aget v2, p1, v3

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    filled-new-array {v1, v2}, [[B

    move-result-object v4

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v1

    :cond_1
    array-length v2, p2

    const/4 v4, 0x4

    mul-int/2addr v2, v4

    new-array v2, v2, [B

    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v4, :cond_3

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v7

    aput v7, p2, v0

    if-ne v5, v6, :cond_4

    invoke-static {v2, v4}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v0

    aput v0, p2, v3

    :cond_4
    div-int/lit8 v0, v5, 0x4

    :goto_1
    return v0

    :cond_5
    :goto_2
    const/4 v0, -0x4

    return v0
.end method

.method public blacklist getParameter([I[S)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_5

    array-length v0, p2

    if-le v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    aget v2, p1, v0

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    array-length v3, p1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    aget v3, p1, v4

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    filled-new-array {v2, v3}, [[B

    move-result-object v5

    invoke-static {v5}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    :cond_1
    array-length v3, p2

    mul-int/2addr v3, v1

    new-array v3, v3, [B

    invoke-virtual {p0, v2, v3}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v1, :cond_3

    if-ne v5, v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v7

    aput-short v7, p2, v0

    if-ne v5, v6, :cond_4

    invoke-static {v3, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v0

    aput-short v0, p2, v4

    :cond_4
    div-int/lit8 v0, v5, 0x2

    :goto_1
    return v0

    :cond_5
    :goto_2
    const/4 v0, -0x4

    return v0
.end method

.method public whitelist hasControl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "hasControl()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_hasControl()Z

    move-result v0

    return v0
.end method

.method public whitelist release()V
    .locals 2

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_release()V

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setControlStatusListener(Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;)V
    .locals 2

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist setEnableStatusListener(Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;)V
    .locals 2

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist setEnabled(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "setEnabled()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/media/audiofx/AudioEffect;->native_setEnabled(Z)I

    move-result v0

    return v0
.end method

.method public blacklist setErrorListener(Landroid/media/audiofx/AudioEffect$OnErrorListener;)V
    .locals 2

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mErrorListener:Landroid/media/audiofx/AudioEffect$OnErrorListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist setParameter(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    invoke-static {p2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2
.end method

.method public blacklist setParameter(IS)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    invoke-static {p2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2
.end method

.method public blacklist setParameter(I[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v1

    return v1
.end method

.method public blacklist setParameter([B[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "setParameter()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    array-length v0, p1

    array-length v1, p2

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/media/audiofx/AudioEffect;->native_setParameter(I[BI[B)I

    move-result v0

    return v0
.end method

.method public blacklist setParameter([I[B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, -0x4

    return v0

    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    aget v1, p1, v2

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    filled-new-array {v0, v1}, [[B

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v1

    return v1
.end method

.method public blacklist setParameter([I[I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    array-length v0, p2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    aget v2, p1, v3

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    filled-new-array {v1, v2}, [[B

    move-result-object v4

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v1

    :cond_1
    aget v0, p2, v0

    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    array-length v2, p2

    if-le v2, v3, :cond_2

    aget v2, p2, v3

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    filled-new-array {v0, v2}, [[B

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2

    :cond_3
    :goto_0
    const/4 v0, -0x4

    return v0
.end method

.method public greylist setParameter([I[S)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    array-length v0, p2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    aget v2, p1, v3

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    filled-new-array {v1, v2}, [[B

    move-result-object v4

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v1

    :cond_1
    aget-short v0, p2, v0

    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v0

    array-length v2, p2

    if-le v2, v3, :cond_2

    aget-short v2, p2, v3

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v2

    filled-new-array {v0, v2}, [[B

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2

    :cond_3
    :goto_0
    const/4 v0, -0x4

    return v0
.end method

.method public blacklist setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V
    .locals 2

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
