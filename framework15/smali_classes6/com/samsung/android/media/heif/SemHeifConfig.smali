.class public Lcom/samsung/android/media/heif/SemHeifConfig;
.super Ljava/lang/Object;
.source "SemHeifConfig.java"


# instance fields
.field private blacklist mCameraInfoBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mExifBuffer:Ljava/nio/ByteBuffer;

.field private final blacklist mMaster:Lcom/samsung/android/media/heif/SemInputImage;

.field private blacklist mThumb:Lcom/samsung/android/media/heif/SemInputImage;


# direct methods
.method public constructor whitelist <init>(Lcom/samsung/android/media/heif/SemInputImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mMaster:Lcom/samsung/android/media/heif/SemInputImage;

    return-void
.end method


# virtual methods
.method public blacklist getCameraInfo()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mCameraInfoBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist getExifData()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mExifBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist getMasterImage()Lcom/samsung/android/media/heif/SemInputImage;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mMaster:Lcom/samsung/android/media/heif/SemInputImage;

    return-object v0
.end method

.method public whitelist getThumbnailImage()Lcom/samsung/android/media/heif/SemInputImage;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mThumb:Lcom/samsung/android/media/heif/SemInputImage;

    return-object v0
.end method

.method public blacklist setCameraInfo(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mCameraInfoBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mCameraInfoBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mCameraInfoBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method public whitelist setExifData(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mExifBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mExifBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mExifBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method public whitelist setExifData([BII)V
    .locals 1

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mExifBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mExifBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mExifBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public whitelist setThumbnailImage(Lcom/samsung/android/media/heif/SemInputImage;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mThumb:Lcom/samsung/android/media/heif/SemInputImage;

    return-void
.end method
