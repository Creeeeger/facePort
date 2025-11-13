.class public Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;
.super Ljava/lang/Object;
.source "SoundTriggerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventPayload"
.end annotation


# instance fields
.field private final greylist-max-o mAudioFormat:Landroid/media/AudioFormat;

.field private final greylist-max-o mCaptureAvailable:Z

.field private final greylist-max-o mCaptureSession:I

.field private final greylist-max-o mData:[B

.field private final greylist-max-o mTriggerAvailable:Z


# direct methods
.method private constructor greylist-max-o <init>(ZZLandroid/media/AudioFormat;I[B)V
    .locals 0
    .param p1, "triggerAvailable"    # Z
    .param p2, "captureAvailable"    # Z
    .param p3, "audioFormat"    # Landroid/media/AudioFormat;
    .param p4, "captureSession"    # I
    .param p5, "data"    # [B

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-boolean p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mTriggerAvailable:Z

    .line 163
    iput-boolean p2, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mCaptureAvailable:Z

    .line 164
    iput p4, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mCaptureSession:I

    .line 165
    iput-object p3, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mAudioFormat:Landroid/media/AudioFormat;

    .line 166
    iput-object p5, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mData:[B

    .line 167
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZLandroid/media/AudioFormat;I[BLandroid/media/soundtrigger/SoundTriggerDetector$EventPayload-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;-><init>(ZZLandroid/media/AudioFormat;I[B)V

    return-void
.end method


# virtual methods
.method public whitelist getCaptureAudioFormat()Landroid/media/AudioFormat;
    .locals 1

    .line 175
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mAudioFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public greylist-max-r getCaptureSession()Ljava/lang/Integer;
    .locals 1

    .line 235
    iget-boolean v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mCaptureAvailable:Z

    if-eqz v0, :cond_0

    .line 236
    iget v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mCaptureSession:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 238
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-r getData()[B
    .locals 1

    .line 207
    iget-boolean v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mTriggerAvailable:Z

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mData:[B

    return-object v0

    .line 210
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTriggerAudio()[B
    .locals 1

    .line 188
    iget-boolean v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mTriggerAvailable:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;->mData:[B

    return-object v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
