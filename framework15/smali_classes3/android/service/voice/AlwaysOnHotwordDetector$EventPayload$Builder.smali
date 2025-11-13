.class public final Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
.super Ljava/lang/Object;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioFormat:Landroid/media/AudioFormat;

.field private blacklist mAudioStream:Landroid/os/ParcelFileDescriptor;

.field private blacklist mCaptureAvailable:Z

.field private blacklist mCaptureSession:I

.field private blacklist mData:[B

.field private blacklist mDataFormat:I

.field private blacklist mHalEventReceivedMillis:J

.field private blacklist mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

.field private blacklist mIsRecognitionStopped:Z

.field private blacklist mKeyphraseExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureAvailable:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureSession:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    iput v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mDataFormat:I

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mData:[B

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioStream:Landroid/os/ParcelFileDescriptor;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mKeyphraseExtras:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHalEventReceivedMillis:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mIsRecognitionStopped:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureAvailable:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureSession:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    iput v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mDataFormat:I

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mData:[B

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioStream:Landroid/os/ParcelFileDescriptor;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mKeyphraseExtras:Ljava/util/List;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHalEventReceivedMillis:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mIsRecognitionStopped:Z

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->isCaptureAvailable()Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setCaptureAvailable(Z)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureSession()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setCaptureSession(I)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setCaptureAudioFormat(Landroid/media/AudioFormat;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    :cond_0
    iget-boolean v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->triggerInData:Z

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setDataFormat(I)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setData([B)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    :cond_2
    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->keyphraseExtras:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setKeyphraseRecognitionExtras(Ljava/util/List;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    :cond_3
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;->getHalEventReceivedMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->setHalEventReceivedMillis(J)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;
    .locals 14

    new-instance v13, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;

    iget-boolean v1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureAvailable:Z

    iget-object v2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    iget v3, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureSession:I

    iget v4, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mDataFormat:I

    iget-object v5, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mData:[B

    iget-object v6, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

    iget-object v7, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioStream:Landroid/os/ParcelFileDescriptor;

    iget-object v8, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mKeyphraseExtras:Ljava/util/List;

    iget-wide v9, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHalEventReceivedMillis:J

    iget-boolean v11, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mIsRecognitionStopped:Z

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;-><init>(ZLandroid/media/AudioFormat;II[BLandroid/service/voice/HotwordDetectedResult;Landroid/os/ParcelFileDescriptor;Ljava/util/List;JZLandroid/service/voice/AlwaysOnHotwordDetector$EventPayload-IA;)V

    return-object v13
.end method

.method public blacklist setAudioStream(Landroid/os/ParcelFileDescriptor;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .locals 0

    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioStream:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public blacklist setCaptureAudioFormat(Landroid/media/AudioFormat;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .locals 0

    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mAudioFormat:Landroid/media/AudioFormat;

    return-object p0
.end method

.method public blacklist setCaptureAvailable(Z)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureAvailable:Z

    return-object p0
.end method

.method public blacklist setCaptureSession(I)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .locals 0

    iput p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mCaptureSession:I

    return-object p0
.end method

.method public blacklist setData([B)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .locals 0

    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mData:[B

    return-object p0
.end method

.method public blacklist setDataFormat(I)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .locals 0

    iput p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mDataFormat:I

    return-object p0
.end method

.method public blacklist setHalEventReceivedMillis(J)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHalEventReceivedMillis:J

    return-object p0
.end method

.method public blacklist setHotwordDetectedResult(Landroid/service/voice/HotwordDetectedResult;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .locals 0

    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

    return-object p0
.end method

.method public blacklist setIsRecognitionStopped(Z)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mIsRecognitionStopped:Z

    return-object p0
.end method

.method public blacklist setKeyphraseRecognitionExtras(Ljava/util/List;)Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;)",
            "Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;->mKeyphraseExtras:Ljava/util/List;

    return-object p0
.end method
