.class public Lcom/samsung/android/media/SemStreamEventCallback;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "SemStreamEventCallback.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemStreamEventCallback"


# instance fields
.field public blacklist mAJavaAudioTrackPtr:J

.field public blacklist mNativeCallbackPtr:J

.field public blacklist mUserDataPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "semstreameventcallback_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(JJJ)V
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    const-string v0, "SemStreamEventCallback"

    invoke-static {v0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p1, p0, Lcom/samsung/android/media/SemStreamEventCallback;->mAJavaAudioTrackPtr:J

    iput-wide p3, p0, Lcom/samsung/android/media/SemStreamEventCallback;->mNativeCallbackPtr:J

    iput-wide p5, p0, Lcom/samsung/android/media/SemStreamEventCallback;->mUserDataPtr:J

    return-void
.end method

.method private static native blacklist native_stream_event_onStreamDataRequest(JJJI)V
.end method

.method private static native blacklist native_stream_event_onStreamPresentationEnd(JJ)V
.end method

.method private static native blacklist native_stream_event_onTearDown(JJ)V
.end method


# virtual methods
.method public whitelist onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/media/SemStreamEventCallback;->mAJavaAudioTrackPtr:J

    iget-wide v2, p0, Lcom/samsung/android/media/SemStreamEventCallback;->mNativeCallbackPtr:J

    iget-wide v4, p0, Lcom/samsung/android/media/SemStreamEventCallback;->mUserDataPtr:J

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/media/SemStreamEventCallback;->native_stream_event_onStreamDataRequest(JJJI)V

    return-void
.end method

.method public whitelist onPresentationEnded(Landroid/media/AudioTrack;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/media/SemStreamEventCallback;->mNativeCallbackPtr:J

    iget-wide v2, p0, Lcom/samsung/android/media/SemStreamEventCallback;->mUserDataPtr:J

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/media/SemStreamEventCallback;->native_stream_event_onStreamPresentationEnd(JJ)V

    return-void
.end method

.method public whitelist onTearDown(Landroid/media/AudioTrack;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/media/SemStreamEventCallback;->mNativeCallbackPtr:J

    iget-wide v2, p0, Lcom/samsung/android/media/SemStreamEventCallback;->mUserDataPtr:J

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/media/SemStreamEventCallback;->native_stream_event_onTearDown(JJ)V

    return-void
.end method
