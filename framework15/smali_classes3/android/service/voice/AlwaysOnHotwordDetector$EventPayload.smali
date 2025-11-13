.class public Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;
.super Ljava/lang/Object;
.source "AlwaysOnHotwordDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventPayload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$Builder;,
        Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload$DataFormat;
    }
.end annotation


# static fields
.field public static final whitelist DATA_FORMAT_RAW:I = 0x0

.field public static final whitelist DATA_FORMAT_TRIGGER_AUDIO:I = 0x1


# instance fields
.field private final greylist-max-o mAudioFormat:Landroid/media/AudioFormat;

.field private final blacklist mAudioStream:Landroid/os/ParcelFileDescriptor;

.field private final greylist-max-o mCaptureAvailable:Z

.field private final greylist-max-o mCaptureSession:I

.field private final greylist-max-o mData:[B

.field private final blacklist mDataFormat:I

.field private final blacklist mHalEventReceivedMillis:J

.field private final blacklist mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

.field private final blacklist mIsRecognitionStopped:Z

.field private final blacklist mKephraseExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(ZLandroid/media/AudioFormat;II[BLandroid/service/voice/HotwordDetectedResult;Landroid/os/ParcelFileDescriptor;Ljava/util/List;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/media/AudioFormat;",
            "II[B",
            "Landroid/service/voice/HotwordDetectedResult;",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;JZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mCaptureAvailable:Z

    iput p3, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mCaptureSession:I

    iput-object p2, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mAudioFormat:Landroid/media/AudioFormat;

    iput p4, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mDataFormat:I

    iput-object p5, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mData:[B

    iput-object p6, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

    iput-object p7, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mAudioStream:Landroid/os/ParcelFileDescriptor;

    iput-object p8, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mKephraseExtras:Ljava/util/List;

    iput-wide p9, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mHalEventReceivedMillis:J

    iput-boolean p11, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mIsRecognitionStopped:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(ZLandroid/media/AudioFormat;II[BLandroid/service/voice/HotwordDetectedResult;Landroid/os/ParcelFileDescriptor;Ljava/util/List;JZLandroid/service/voice/AlwaysOnHotwordDetector$EventPayload-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;-><init>(ZLandroid/media/AudioFormat;II[BLandroid/service/voice/HotwordDetectedResult;Landroid/os/ParcelFileDescriptor;Ljava/util/List;JZ)V

    return-void
.end method


# virtual methods
.method public whitelist getAudioStream()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mAudioStream:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist getCaptureAudioFormat()Landroid/media/AudioFormat;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mAudioFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public greylist getCaptureSession()Ljava/lang/Integer;
    .locals 1

    iget-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mCaptureAvailable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mCaptureSession:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getData()[B
    .locals 1

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mData:[B

    return-object v0
.end method

.method public whitelist getDataFormat()I
    .locals 1

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mDataFormat:I

    return v0
.end method

.method public whitelist getHalEventReceivedMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mHalEventReceivedMillis:J

    return-wide v0
.end method

.method public whitelist getHotwordDetectedResult()Landroid/service/voice/HotwordDetectedResult;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mHotwordDetectedResult:Landroid/service/voice/HotwordDetectedResult;

    return-object v0
.end method

.method public whitelist getKeyphraseRecognitionExtras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mKephraseExtras:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTriggerAudio()[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mDataFormat:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mData:[B

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isRecognitionStopped()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;->mIsRecognitionStopped:Z

    return v0
.end method
