.class public final Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAudioRecord:Landroid/media/AudioRecord;

.field public final mAudioRecordMic:Landroid/media/AudioRecord;

.field public final mCodec:Landroid/media/MediaCodec;

.field public final mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

.field public final mMic:Z

.field public final mMuxer:Landroid/media/MediaMuxer;

.field public mPresentationTime:J

.field public mStarted:Z

.field public mThread:Ljava/lang/Thread;

.field public mTotalBytes:J

.field public mTrackId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/media/projection/MediaProjection;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    invoke-direct {v0}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mConfig:Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTrackId:I

    iput-boolean p3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMic:Z

    new-instance v1, Landroid/media/MediaMuxer;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMuxer:Landroid/media/MediaMuxer;

    const-string v1, "creating audio file "

    const-string v3, "ScreenAudioRecorder"

    invoke-static {v1, p1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->sampleRate:I

    iget v1, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->channelInMask:I

    iget v4, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->encoding:I

    invoke-static {p1, v1, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    const/4 v1, 0x2

    mul-int/2addr p1, v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "audio buffer size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v4, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->encoding:I

    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    iget v4, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->sampleRate:I

    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    iget v4, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->channelOutMask:I

    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    new-instance v4, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    invoke-direct {v4, p2}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;-><init>(Landroid/media/projection/MediaProjection;)V

    const/4 p2, 0x1

    invoke-virtual {v4, p2}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    move-result-object v2

    const/16 v4, 0xe

    invoke-virtual {v2, v4}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->build()Landroid/media/AudioPlaybackCaptureConfiguration;

    move-result-object v2

    new-instance v4, Landroid/media/AudioRecord$Builder;

    invoke-direct {v4}, Landroid/media/AudioRecord$Builder;-><init>()V

    invoke-virtual {v4, v3}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/AudioRecord$Builder;->setAudioPlaybackCaptureConfig(Landroid/media/AudioPlaybackCaptureConfiguration;)Landroid/media/AudioRecord$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz p3, :cond_0

    new-instance p3, Landroid/media/AudioRecord;

    iget v6, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->sampleRate:I

    iget v8, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->encoding:I

    const/4 v5, 0x7

    const/16 v7, 0x10

    move-object v4, p3

    move v9, p1

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mAudioRecordMic:Landroid/media/AudioRecord;

    :cond_0
    const-string p3, "audio/mp4a-latm"

    invoke-static {p3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    iget v2, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->sampleRate:I

    invoke-static {p3, v2, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p3

    const-string v2, "aac-profile"

    invoke-virtual {p3, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate"

    iget v2, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->bitRate:I

    invoke-virtual {p3, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "pcm-encoding"

    iget v0, v0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$Config;->encoding:I

    invoke-virtual {p3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1, v1, p2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;I)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final writeOutput()V
    .locals 5

    :goto_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTrackId:I

    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    iget v2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTrackId:I

    if-gez v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mMuxer:Landroid/media/MediaMuxer;

    iget v4, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mTrackId:I

    invoke-virtual {v3, v4, v2, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/screenrecord/ScreenInternalAudioRecorder;->mCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0
.end method
