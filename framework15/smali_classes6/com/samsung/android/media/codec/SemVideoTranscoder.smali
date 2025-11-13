.class public Lcom/samsung/android/media/codec/SemVideoTranscoder;
.super Ljava/lang/Object;
.source "SemVideoTranscoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;,
        Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressListener;,
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-direct {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    return-void
.end method

.method public static whitelist getMaxEncodingDuration(IIII)I
    .locals 1

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

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->encode()V

    return-void
.end method

.method public whitelist getOutputFileSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->getOutputFileSize()I

    move-result v0

    return v0
.end method

.method public whitelist initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public whitelist initialize(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public whitelist rewrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->rewrite()V

    return-void
.end method

.method public blacklist setEncodingCodecs(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setEncodingCodecs(II)V

    return-void
.end method

.method public blacklist setMaxOutputSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/transcode/core/EncodeVideo;->setMaxOutputSize(I)V

    return-void
.end method

.method public blacklist setOutputBitdepth(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/transcode/core/EncodeVideo;->setOutputBitdepth(I)Z

    move-result v0

    return v0
.end method

.method public whitelist setOutputConfig(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->setOutputConfig(II)V

    return-void
.end method

.method public whitelist setProgressEventListener(Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mProgressEventListener:Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    new-instance v1, Lcom/samsung/android/media/codec/SemVideoTranscoder$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/codec/SemVideoTranscoder$1;-><init>(Lcom/samsung/android/media/codec/SemVideoTranscoder;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->setProgressUpdateListener(Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;)V

    return-void
.end method

.method public whitelist setProgressListener(Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressListener;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mProgressListener:Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressListener;

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    new-instance v1, Lcom/samsung/android/media/codec/SemVideoTranscoder$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/codec/SemVideoTranscoder$2;-><init>(Lcom/samsung/android/media/codec/SemVideoTranscoder;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->setEncodeProgressListener(Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;)V

    return-void
.end method

.method public whitelist setTrimTime(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/transcode/core/EncodeVideo;->setTrimTime(JJ)V

    return-void
.end method

.method public whitelist setVideoTranscodingServiceCallback(Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mVideoTranscodingServiceCallback:Lcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    new-instance v1, Lcom/samsung/android/media/codec/SemVideoTranscoder$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/codec/SemVideoTranscoder$3;-><init>(Lcom/samsung/android/media/codec/SemVideoTranscoder;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->setEncodeProgressListener(Lcom/samsung/android/transcode/core/Encode$EncodeProgressListener;)V

    return-void
.end method

.method public whitelist stop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscoder;->mEncodeVideo:Lcom/samsung/android/transcode/core/EncodeVideo;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->stop()V

    return-void
.end method
