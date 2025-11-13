.class public Lcom/samsung/android/media/codec/SemVideoTranscoder;
.super Ljava/lang/Object;
.source "SemVideoTranscoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressListener;,
        Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;,
        Lcom/samsung/android/media/codec/SemVideoTranscoder$ConfigType;,
        Lcom/samsung/android/media/codec/SemVideoTranscoder$CodecType;
    }
.end annotation


# instance fields
.field private blacklist mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

.field private blacklist mProgressEventListener:Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;

.field private blacklist mProgressListener:Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressListener;

.field private blacklist mVideoTranscodingServiceCallback:Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmProgressEventListener(Lcom/samsung/android/media/codec/SemVideoTranscoder;)Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mProgressEventListener:Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProgressListener(Lcom/samsung/android/media/codec/SemVideoTranscoder;)Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mProgressListener:Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVideoTranscodingServiceCallback(Lcom/samsung/android/media/codec/SemVideoTranscoder;)Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mVideoTranscodingServiceCallback:Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-direct {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    .line 32
    return-void
.end method

.method public static whitelist getMaxEncodingDuration(IIII)I
    .locals 1
    .param p0, "maxSizeKB"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "audioCodecType"    # I

    .line 388
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getMaxEncodingDuration(IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist encode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->encode()V

    .line 183
    return-void
.end method

.method public whitelist getOutputFileSize()I
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->getOutputFileSize()I

    move-result v0

    return v0
.end method

.method public whitelist initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;)V
    .locals 6
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "inputUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;)V

    .line 236
    return-void
.end method

.method public whitelist initialize(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p1, "outputFilePath"    # Ljava/lang/String;
    .param p2, "outputWidth"    # I
    .param p3, "outputHeight"    # I
    .param p4, "inputFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize(Ljava/lang/String;IILjava/lang/String;)V

    .line 220
    return-void
.end method

.method public whitelist rewrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->rewrite()V

    .line 196
    return-void
.end method

.method public blacklist setEncodingCodecs(II)V
    .locals 1
    .param p1, "videoCodecType"    # I
    .param p2, "audioCodecType"    # I

    .line 261
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setEncodingCodecs(II)V

    .line 262
    return-void
.end method

.method public blacklist setMaxOutputSize(I)V
    .locals 1
    .param p1, "kilobytes"    # I

    .line 275
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/transcode/core/EncodeVideo;->setMaxOutputSize(I)V

    .line 276
    return-void
.end method

.method public blacklist setOutputBitdepth(I)Z
    .locals 1
    .param p1, "bitdepth"    # I

    .line 405
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/transcode/core/EncodeVideo;->setOutputBitdepth(I)Z

    move-result v0

    return v0
.end method

.method public whitelist setOutputConfig(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 418
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setOutputConfig(II)V

    .line 419
    return-void
.end method

.method public whitelist setProgressEventListener(Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;)V
    .locals 2
    .param p1, "listner"    # Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;

    .line 296
    iput-object p1, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mProgressEventListener:Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;

    .line 297
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    new-instance v1, Lcom/samsung/android/media/codec/SemVideoTranscoder$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/codec/SemVideoTranscoder$1;-><init>(Lcom/samsung/android/media/codec/SemVideoTranscoder;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->setProgressUpdateListener(Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;)V

    .line 310
    return-void
.end method

.method public whitelist setProgressListener(Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressListener;

    .line 319
    iput-object p1, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mProgressListener:Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressListener;

    .line 320
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    new-instance v1, Lcom/samsung/android/media/codec/SemVideoTranscoder$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/codec/SemVideoTranscoder$2;-><init>(Lcom/samsung/android/media/codec/SemVideoTranscoder;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->setEncodeProgressListener(Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;)V

    .line 337
    return-void
.end method

.method public whitelist setTrimTime(JJ)V
    .locals 1
    .param p1, "startMs"    # J
    .param p3, "endMs"    # J

    .line 247
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/transcode/core/EncodeVideo;->setTrimTime(JJ)V

    .line 248
    return-void
.end method

.method public whitelist setVideoTranscodingServiceCallback(Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;

    .line 344
    iput-object p1, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mVideoTranscodingServiceCallback:Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

    .line 345
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    new-instance v1, Lcom/samsung/android/media/codec/SemVideoTranscoder$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/codec/SemVideoTranscoder$3;-><init>(Lcom/samsung/android/media/codec/SemVideoTranscoder;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->setEncodeProgressListener(Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;)V

    .line 374
    return-void
.end method

.method public whitelist stop()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->stop()V

    .line 205
    return-void
.end method
