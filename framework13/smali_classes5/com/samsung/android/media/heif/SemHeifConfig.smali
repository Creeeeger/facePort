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
    .param p1, "master"    # Lcom/samsung/android/media/heif/SemInputImage;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mMaster:Lcom/samsung/android/media/heif/SemInputImage;

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist getCameraInfo()Ljava/nio/ByteBuffer;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mCameraInfoBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist getExifData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mExifBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist getMasterImage()Lcom/samsung/android/media/heif/SemInputImage;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mMaster:Lcom/samsung/android/media/heif/SemInputImage;

    return-object v0
.end method

.method public whitelist getThumbnailImage()Lcom/samsung/android/media/heif/SemInputImage;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mThumb:Lcom/samsung/android/media/heif/SemInputImage;

    return-object v0
.end method

.method public blacklist setCameraInfo(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "info"    # Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mCameraInfoBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mCameraInfoBuffer:Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 71
    :goto_0
    return-void
.end method

.method public whitelist setExifData(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "exifBuffer"    # Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iput-object p1, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mExifBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mExifBuffer:Ljava/nio/ByteBuffer;

    .line 55
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 57
    :goto_0
    return-void
.end method

.method public whitelist setExifData([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 40
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mExifBuffer:Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mExifBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 43
    return-void
.end method

.method public whitelist setThumbnailImage(Lcom/samsung/android/media/heif/SemInputImage;)V
    .locals 0
    .param p1, "image"    # Lcom/samsung/android/media/heif/SemInputImage;

    .line 29
    iput-object p1, p0, Lcom/samsung/android/media/heif/SemHeifConfig;->mThumb:Lcom/samsung/android/media/heif/SemInputImage;

    .line 30
    return-void
.end method
