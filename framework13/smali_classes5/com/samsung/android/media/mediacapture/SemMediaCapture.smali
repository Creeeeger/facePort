.class public final Lcom/samsung/android/media/mediacapture/SemMediaCapture;
.super Ljava/lang/Object;
.source "SemMediaCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingUpdatedListener;,
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;,
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;,
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;,
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;,
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;,
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;,
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;,
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;,
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$SingleBackgroundMusic;,
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;,
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CAPTURE_OFF:I = 0x0

.field public static final whitelist AUDIO_CAPTURE_ON:I = 0x1

.field public static final whitelist AUDIO_VOLUME_FADE_IN:I = 0x1

.field public static final whitelist AUDIO_VOLUME_FADE_INOUT:I = 0x3

.field public static final whitelist AUDIO_VOLUME_FADE_NONE:I = 0x0

.field public static final whitelist AUDIO_VOLUME_FADE_OUT:I = 0x2

.field public static final whitelist CUSTOM_EFFECT_TYPE_DYNAMIC_VIEWING:I = 0x2

.field public static final whitelist CUSTOM_EFFECT_TYPE_NONE:I = 0x0

.field public static final whitelist CUSTOM_EFFECT_TYPE_VIDEO_SUPER_RESOLUTION:I = 0x1

.field public static final whitelist DIRECTION_FORWARD:I = 0x0

.field public static final whitelist DIRECTION_FORWARD_REVERSE:I = 0x2

.field public static final whitelist DIRECTION_REVERSE:I = 0x1

.field public static final whitelist DIRECTION_SUPER_SLOW_FORWARD:I = 0x3

.field public static final whitelist DIRECTION_SUPER_SLOW_REVERSE:I = 0x4

.field public static final whitelist DIRECTION_SUPER_SLOW_SWING:I = 0x5

.field private static final blacklist IMEDIA_CAPTURE:Ljava/lang/String; = "android.media.IMediaCapture"

.field private static final blacklist INVOKE_ID_GET_CAPTURE_PROGRESS:I = 0x2

.field private static final blacklist INVOKE_ID_SET_DYNAMIC_VIEWING_INFO:I = 0x1

.field public static final whitelist KEY_PARAMETER_AUDIO_CAPTURE:I = 0x3f2

.field public static final whitelist KEY_PARAMETER_CUSTOM_EFFECT_TYPE:I = 0x3f3

.field public static final whitelist KEY_PARAMETER_DECODING_UPDATED_INTERVAL:I = 0x3f0

.field public static final whitelist KEY_PARAMETER_DIRECTION:I = 0x3eb

.field public static final whitelist KEY_PARAMETER_ENABLE_ALL_SUPER_SLOW_REGION:I = 0x3f1

.field public static final whitelist KEY_PARAMETER_FORMAT:I = 0x3ee

.field public static final whitelist KEY_PARAMETER_FRAMERATE:I = 0x3e9

.field public static final whitelist KEY_PARAMETER_HEIGHT:I = 0x3ed

.field public static final whitelist KEY_PARAMETER_LOOP:I = 0x3ea

.field public static final whitelist KEY_PARAMETER_PLAYBACK_RATE:I = 0x3ef

.field public static final whitelist KEY_PARAMETER_RECORDING_MODE:I = 0x3f4

.field public static final whitelist KEY_PARAMETER_WIDTH:I = 0x3ec

.field public static final whitelist LOOP_OFF:I = 0x0

.field public static final whitelist LOOP_ON:I = 0x1

.field private static final blacklist MEDIA_CAPTURE_DECODING_COMPLETE:I = 0x5

.field private static final blacklist MEDIA_CAPTURE_DECODING_UPDATE:I = 0xa

.field private static final blacklist MEDIA_CAPTURE_ERROR:I = 0x64

.field private static final blacklist MEDIA_CAPTURE_INFO:I = 0xc8

.field private static final blacklist MEDIA_CAPTURE_NOP:I = 0x0

.field private static final blacklist MEDIA_CAPTURE_PAUSED:I = 0x4

.field private static final blacklist MEDIA_CAPTURE_PLAYBACK_COMPLETE:I = 0x6

.field private static final blacklist MEDIA_CAPTURE_PREPARE_COMPLETE:I = 0x1

.field private static final blacklist MEDIA_CAPTURE_RECORDING_COMPLETE:I = 0x7

.field private static final blacklist MEDIA_CAPTURE_RENDERING_STARTED:I = 0x8

.field private static final blacklist MEDIA_CAPTURE_SEEK_COMPLETE:I = 0x9

.field private static final blacklist MEDIA_CAPTURE_STARTED:I = 0x2

.field private static final blacklist MEDIA_CAPTURE_STOPPED:I = 0x3

.field public static final whitelist MEDIA_ERROR_IO:I = -0x3ec

.field public static final whitelist MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final whitelist MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final whitelist MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final whitelist MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field public static final whitelist MEDIA_FORMAT_GIF:I = 0x0

.field public static final whitelist MEDIA_FORMAT_MP4:I = 0x1

.field public static final blacklist NORMAL:I = 0x0

.field public static final blacklist PIP:I = 0x1

.field public static final whitelist SUGGESTED_EDITS_BOOMERANG:I = 0x63

.field public static final whitelist SUGGESTED_EDITS_CLIP:I = 0x60

.field public static final whitelist SUGGESTED_EDITS_HIGHLIGHT:I = 0x61

.field public static final whitelist SUGGESTED_EDITS_HIGHLIGHTS:I = 0x5f

.field public static final whitelist SUGGESTED_EDITS_SLOW_MOTION:I = 0x62

.field public static final whitelist SUGGESTED_EDITS_SPEED_MIX:I = 0x5d

.field public static final whitelist SUGGESTED_EDITS_SPEED_RUN:I = 0x5e

.field public static final whitelist SUGGESTED_EDITS_SUPER_SLOW_MOTION_FORWARD:I = 0x5a

.field public static final whitelist SUGGESTED_EDITS_SUPER_SLOW_MOTION_REVERSE:I = 0x5b

.field public static final whitelist SUGGESTED_EDITS_SUPER_SLOW_MOTION_SWING:I = 0x5c

.field private static final blacklist TAG:Ljava/lang/String; = "SemMediaCapture"


# instance fields
.field private blacklist mEventHandler:Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

.field private blacklist mNativeContext:J

.field private blacklist mNativeSurfaceTexture:J

.field private blacklist mOnDecodingCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;

.field private blacklist mOnDecodingUpdatedListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingUpdatedListener;

.field private blacklist mOnErrorListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;

.field private blacklist mOnPlaybackCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;

.field private blacklist mOnPreparedListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;

.field private blacklist mOnRecordingCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;

.field private blacklist mOnRenderingStartedListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;

.field private blacklist mScreenOnWhilePlaying:Z

.field private blacklist mStayAwake:Z

.field private blacklist mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNativeContext(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mNativeContext:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDecodingCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnDecodingCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDecodingUpdatedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingUpdatedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnDecodingUpdatedListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingUpdatedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnErrorListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnErrorListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnPlaybackCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnPlaybackCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnPreparedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnPreparedListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnRecordingCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnRecordingCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnRenderingStartedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture;)Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnRenderingStartedListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 94
    const-string v0, "mediacapture_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->native_init()V

    .line 96
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    .local v1, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;-><init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture;Lcom/samsung/android/media/mediacapture/SemMediaCapture;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mEventHandler:Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;-><init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture;Lcom/samsung/android/media/mediacapture/SemMediaCapture;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mEventHandler:Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mEventHandler:Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

    .line 126
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->native_setup(Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method private native blacklist _getCaptureFrame(I)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _getCurrentPosition()I
.end method

.method private native blacklist _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _release()V
.end method

.method private native blacklist _reset()V
.end method

.method private native blacklist _seekTo(I)V
.end method

.method private native blacklist _setAudioVolumeFade(IIIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native blacklist _setBackgroundMusic(Landroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _setCaptureRange(II)V
.end method

.method private native blacklist _setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _setOutputFile(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _setParameter(II)V
.end method

.method private native blacklist _setStartEndTime(II)V
.end method

.method private native blacklist _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native blacklist _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _startCapture()V
.end method

.method private native blacklist _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native blacklist _stopCapture()V
.end method

.method private blacklist attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 207
    :try_start_0
    const-string/jumbo v0, "r"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :goto_0
    const/4 v1, 0x1

    .line 214
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 213
    :cond_1
    return v1

    .line 207
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/media/mediacapture/SemMediaCapture;
    .end local p1    # "resolver":Landroid/content/ContentResolver;
    .end local p2    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 214
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Lcom/samsung/android/media/mediacapture/SemMediaCapture;
    .restart local p1    # "resolver":Landroid/content/ContentResolver;
    .restart local p2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method static blacklist createHttpServiceBinderIfNecessary(Ljava/lang/String;Ljava/util/List;)Landroid/os/IBinder;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Landroid/os/IBinder;"
        }
    .end annotation

    .line 296
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 297
    :cond_1
    :goto_0
    new-instance v0, Landroid/media/MediaHTTPService;

    invoke-direct {v0, p1}, Landroid/media/MediaHTTPService;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/media/MediaHTTPService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method private native blacklist nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native blacklist native_finalize()V
.end method

.method private static final native blacklist native_init()V
.end method

.method private final native blacklist native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method private final native blacklist native_setup(Ljava/lang/Object;)V
.end method

.method private static blacklist postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "mediacapture_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1399
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    .line 1400
    .local v0, "mc":Lcom/samsung/android/media/mediacapture/SemMediaCapture;
    if-nez v0, :cond_0

    .line 1401
    return-void

    .line 1404
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mEventHandler:Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

    if-eqz v1, :cond_1

    .line 1405
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1406
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mEventHandler:Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1408
    .end local v1    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private blacklist setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 189
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const/4 v0, 0x0

    .line 190
    .local v0, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 192
    .local v1, "values":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 193
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 194
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 196
    const/4 v2, 0x0

    .line 197
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 198
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v2

    .line 199
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v2

    .line 200
    nop

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    .line 201
    goto :goto_0

    .line 203
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, p1, v0, v1, p3}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    .line 204
    return-void
.end method

.method private blacklist setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 305
    .local p4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz p1, :cond_4

    .line 308
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 309
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 312
    :cond_0
    if-eqz v1, :cond_1

    .line 314
    nop

    .line 315
    invoke-static {p1, p4}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->createHttpServiceBinderIfNecessary(Ljava/lang/String;Ljava/util/List;)Landroid/os/IBinder;

    move-result-object v2

    .line 314
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 319
    return-void

    .line 322
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 324
    const/4 v3, 0x0

    .line 326
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 327
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 328
    .local v4, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0, v4}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    nop

    .line 331
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 334
    .end local v3    # "is":Ljava/io/FileInputStream;
    nop

    .line 337
    return-void

    .line 330
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 331
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 333
    :cond_2
    throw v4

    .line 335
    .end local v3    # "is":Ljava/io/FileInputStream;
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "setDataSource failed."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 306
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input path is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateSurfaceScreenOn()V
    .locals 2

    .line 1306
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 1307
    iget-boolean v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mScreenOnWhilePlaying:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mStayAwake:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1309
    :cond_1
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 0

    .line 937
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->native_finalize()V

    return-void
.end method

.method public whitelist getCaptureFrame(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "msec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 388
    invoke-direct {p0, p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_getCaptureFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPositionForPreview()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 886
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public whitelist getProgressForCapture()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 897
    const/4 v0, 0x0

    .line 898
    .local v0, "progress":F
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 899
    .local v1, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 902
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IMediaCapture"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 903
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 905
    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    .line 907
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 908
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 909
    nop

    .line 911
    return v0

    .line 907
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 908
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 909
    throw v3
.end method

.method public blacklist invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 4
    .param p1, "request"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 702
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 703
    .local v0, "retcode":I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 704
    if-nez v0, :cond_0

    .line 707
    return-void

    .line 705
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist pausePlayback()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 846
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_pause()V

    .line 847
    return-void
.end method

.method public whitelist prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 825
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_prepare()V

    .line 826
    return-void
.end method

.method public whitelist release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnPreparedListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;

    .line 930
    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnRecordingCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;

    .line 931
    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnPlaybackCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;

    .line 932
    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnErrorListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;

    .line 933
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_release()V

    .line 934
    return-void
.end method

.method public whitelist reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 920
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_reset()V

    .line 921
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mEventHandler:Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 922
    return-void
.end method

.method public whitelist seekForPreview(I)V
    .locals 0
    .param p1, "msec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 877
    invoke-direct {p0, p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_seekTo(I)V

    .line 878
    return-void
.end method

.method public whitelist setAudioVolumeFade(IIIII)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "fadeInStart"    # I
    .param p3, "fadeInDuration"    # I
    .param p4, "fadeOutStart"    # I
    .param p5, "fadeOutDuration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 451
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_setAudioVolumeFade(IIIII)V

    .line 452
    return-void
.end method

.method public whitelist setBackgroundMusic(Lcom/samsung/android/media/SemBackgroundMusic;)V
    .locals 2
    .param p1, "semBgm"    # Lcom/samsung/android/media/SemBackgroundMusic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1294
    if-eqz p1, :cond_0

    .line 1298
    const-string v0, "android.media.IMediaCapture"

    invoke-virtual {p1, v0}, Lcom/samsung/android/media/SemBackgroundMusic;->writeToParcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v0

    .line 1299
    .local v0, "p":Landroid/os/Parcel;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_setBackgroundMusic(Landroid/os/Parcel;)V

    .line 1300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1302
    return-void

    .line 1295
    .end local v0    # "p":Landroid/os/Parcel;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SemBackgroundMusic param can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setBackgroundMusic(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;)V
    .locals 2
    .param p1, "semBGM"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1273
    if-eqz p1, :cond_0

    .line 1277
    invoke-virtual {p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->writeToParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 1278
    .local v0, "p":Landroid/os/Parcel;
    invoke-direct {p0, v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_setBackgroundMusic(Landroid/os/Parcel;)V

    .line 1279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1281
    return-void

    .line 1274
    .end local v0    # "p":Landroid/os/Parcel;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "BackgroundMusic param can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    .line 229
    return-void
.end method

.method public whitelist setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-eqz p1, :cond_5

    .line 264
    if-eqz p2, :cond_4

    .line 268
    if-eqz p4, :cond_1

    .line 269
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 270
    .local v0, "cookieHandler":Ljava/net/CookieHandler;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/net/CookieManager;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The cookie handler has to be of CookieManager type when cookies are provided."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    .end local v0    # "cookieHandler":Ljava/net/CookieHandler;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 279
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setDataSource(Ljava/lang/String;)V

    .line 282
    return-void

    .line 285
    :cond_2
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->attemptDataSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    return-void

    .line 288
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3, p4}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 291
    return-void

    .line 265
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uri param can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context param can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 171
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 172
    return-void
.end method

.method public whitelist setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->setDataSource(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 184
    return-void
.end method

.method public whitelist setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .line 367
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 369
    if-eqz p1, :cond_0

    .line 370
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .local v0, "surface":Landroid/view/Surface;
    goto :goto_0

    .line 372
    .end local v0    # "surface":Landroid/view/Surface;
    :cond_0
    const/4 v0, 0x0

    .line 374
    .restart local v0    # "surface":Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_setVideoSurface(Landroid/view/Surface;)V

    .line 375
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->updateSurfaceScreenOn()V

    .line 376
    return-void
.end method

.method public whitelist setDynamicViewingConfigurations(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 762
    .local p1, "dvConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;>;"
    const-string v0, ":"

    if-eqz p1, :cond_3

    .line 766
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 767
    .local v1, "numDvConfigs":I
    if-lez v1, :cond_2

    .line 771
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 772
    .local v2, "request":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 774
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.media.IMediaCapture"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 775
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 779
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;

    .line 781
    .local v5, "dvConfig":Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;
    invoke-virtual {v5}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;->getStartTime()I

    move-result v6

    .line 782
    .local v6, "startTime":I
    invoke-virtual {v5}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;->getEndTime()I

    move-result v7

    .line 783
    .local v7, "endTime":I
    invoke-virtual {v5}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;->getSpeedRate()F

    move-result v8

    .line 784
    .local v8, "speedRate":F
    if-ltz v6, :cond_0

    if-ltz v7, :cond_0

    if-eq v6, v7, :cond_0

    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-lez v9, :cond_0

    .line 788
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 790
    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeFloat(F)V

    .line 778
    .end local v5    # "dvConfig":Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;
    .end local v6    # "startTime":I
    .end local v7    # "endTime":I
    .end local v8    # "speedRate":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 785
    .restart local v5    # "dvConfig":Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;
    .restart local v6    # "startTime":I
    .restart local v7    # "endTime":I
    .restart local v8    # "speedRate":F
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DynamicViewingConfiguration is abnormal. dvConfig("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "numDvConfigs":I
    .end local v2    # "request":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/android/media/mediacapture/SemMediaCapture;
    .end local p1    # "dvConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;>;"
    throw v9

    .line 792
    .end local v4    # "i":I
    .end local v5    # "dvConfig":Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;
    .end local v6    # "startTime":I
    .end local v7    # "endTime":I
    .end local v8    # "speedRate":F
    .restart local v1    # "numDvConfigs":I
    .restart local v2    # "request":Landroid/os/Parcel;
    .restart local v3    # "reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/android/media/mediacapture/SemMediaCapture;
    .restart local p1    # "dvConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/media/mediacapture/SemMediaCapture$DynamicViewingConfiguration;>;"
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 795
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 796
    nop

    .line 797
    return-void

    .line 794
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 795
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 796
    throw v0

    .line 768
    .end local v2    # "request":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DynamicViewingConfiguration size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    .end local v1    # "numDvConfigs":I
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dvConfigs param can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnDecodingCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;

    .line 1531
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnDecodingCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingCompletionListener;

    .line 1532
    return-void
.end method

.method public whitelist setOnDecodingUpdatedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingUpdatedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingUpdatedListener;

    .line 1622
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnDecodingUpdatedListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnDecodingUpdatedListener;

    .line 1623
    return-void
.end method

.method public whitelist setOnErrorListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;

    .line 1592
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnErrorListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnErrorListener;

    .line 1593
    return-void
.end method

.method public whitelist setOnPlaybackCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;

    .line 1481
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnPlaybackCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPlaybackCompletionListener;

    .line 1482
    return-void
.end method

.method public whitelist setOnPreparedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;

    .line 1431
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnPreparedListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnPreparedListener;

    .line 1432
    return-void
.end method

.method public whitelist setOnRecordingCompletionListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;

    .line 1506
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnRecordingCompletionListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRecordingCompletionListener;

    .line 1507
    return-void
.end method

.method public whitelist setOnRenderingStartedListener(Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;

    .line 1458
    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->mOnRenderingStartedListener:Lcom/samsung/android/media/mediacapture/SemMediaCapture$OnRenderingStartedListener;

    .line 1459
    return-void
.end method

.method public whitelist setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 352
    invoke-direct {p0, p1}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_setOutputFile(Ljava/io/FileDescriptor;)V

    .line 353
    return-void
.end method

.method public whitelist setParameter(II)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 677
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_setParameter(II)V

    .line 678
    return-void
.end method

.method public whitelist setStartEndTime(II)V
    .locals 0
    .param p1, "startMs"    # I
    .param p2, "endMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 399
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_setStartEndTime(II)V

    .line 400
    return-void
.end method

.method public whitelist setStartEndTimeForTrimming(II)V
    .locals 0
    .param p1, "startTimeMs"    # I
    .param p2, "endTimeMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 868
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_setCaptureRange(II)V

    .line 869
    return-void
.end method

.method public whitelist startCapture()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 804
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_startCapture()V

    .line 805
    return-void
.end method

.method public whitelist startPlayback()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 837
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_start()V

    .line 838
    return-void
.end method

.method public whitelist stopCapture()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 813
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_stopCapture()V

    .line 814
    return-void
.end method

.method public whitelist stopPlayback()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 855
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture;->_stop()V

    .line 856
    return-void
.end method
