.class final Lcom/samsung/android/media/heif/CaptureSourceInternal;
.super Ljava/lang/Object;
.source "CaptureSourceInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/heif/CaptureSourceInternal$Parser;
    }
.end annotation


# static fields
.field public static final blacklist KEY_CAMERA_INFO:Ljava/lang/String; = "camera-info"

.field public static final blacklist KEY_CAMERA_INFO_SIZE:Ljava/lang/String; = "camera-info-size"


# instance fields
.field private blacklist msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/media/heif/jni/AMessageJNI;

    invoke-direct {v0}, Lcom/samsung/android/media/heif/jni/AMessageJNI;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    return-void
.end method


# virtual methods
.method public blacklist getColorFormat()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "color-format"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getHeight()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getImageRole()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "image-role"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getMsg()Lcom/samsung/android/media/heif/jni/AMessageJNI;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    return-object v0
.end method

.method public blacklist getRotationDegree()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "rotation-degrees"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getSliceHeight()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "slice-height"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getStride()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "stride"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getWidth()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setCameraInfo(Ljava/nio/ByteBuffer;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "camera-info"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "camera-info-size"

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setColorFormat(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "color-format"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setExifData(Ljava/nio/ByteBuffer;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "exif-buffer"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "exif-buffer-size"

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setHeight(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "height"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setIccProfile(Ljava/nio/ByteBuffer;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "icc-buffer"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "icc-buffer-size"

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setId(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setImageRole(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "image-role"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setInputByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "input-buffer"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytebuffer must allocate direct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setInputFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "input-fd"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setFileDescriptor(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public blacklist setRotationDegree(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "rotation-degrees"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setSliceHeight(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "slice-height"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setStride(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "stride"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setThumbnail(Lcom/samsung/android/media/heif/CaptureSourceInternal;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "thumbnail"

    iget-object v2, p1, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setMessage(Ljava/lang/String;Lcom/samsung/android/media/heif/jni/AMessageJNI;)V

    return-void
.end method

.method public blacklist setWidth(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/heif/CaptureSourceInternal;->msg:Lcom/samsung/android/media/heif/jni/AMessageJNI;

    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/heif/jni/AMessageJNI;->setInt(Ljava/lang/String;I)V

    return-void
.end method
