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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->width:I

    iput v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->height:I

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/samsung/android/media/imagecrop/NativeBuffer;->allocNativeBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method blacklist flip()Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->height:I

    return v0
.end method

.method public whitelist getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->width:I

    return v0
.end method

.method blacklist limit(I)Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method blacklist reAllocInJavaBuffer(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reAllocate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imagecrop"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/samsung/android/media/imagecrop/NativeBuffer;->freeNativeBuffer(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method blacklist rewind()Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/imagecrop/SemCroppedImageInfo;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    return-object v0
.end method
