.class public Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;
.super Ljava/lang/Object;
.source "SemCroppedImageInfo.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "imagecrop"


# instance fields
.field private blacklist buffer:Ljava/nio/ByteBuffer;

.field private blacklist height:I

.field private blacklist width:I


# direct methods
.method constructor blacklist <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->width:I

    .line 16
    iput v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->height:I

    .line 21
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/samsung/android/media/imagecrop/NativeBuffer;->allocNativeBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    .line 23
    return-void
.end method


# virtual methods
.method blacklist flip()Ljava/nio/Buffer;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist getHeight()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->height:I

    return v0
.end method

.method public whitelist getWidth()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->width:I

    return v0
.end method

.method blacklist limit(I)Ljava/nio/Buffer;
    .locals 1
    .param p1, "limit"    # I

    .line 65
    iget-object v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method blacklist reAllocInJavaBuffer(I)V
    .locals 2
    .param p1, "newSize"    # I

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reAllocate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imagecrop"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 55
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 56
    .local v0, "copyBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 58
    iget-object v1, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/samsung/android/media/imagecrop/NativeBuffer;->freeNativeBuffer(Ljava/nio/ByteBuffer;)V

    .line 60
    iput-object v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    .line 61
    return-void
.end method

.method blacklist rewind()Ljava/nio/Buffer;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method
