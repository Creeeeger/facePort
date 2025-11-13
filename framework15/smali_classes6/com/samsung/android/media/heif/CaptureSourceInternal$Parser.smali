.class Lcom/samsung/android/media/heif/CaptureSourceInternal$Parser;
.super Ljava/lang/Object;
.source "CaptureSourceInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/heif/CaptureSourceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Parser"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist makeInternalSource(Lcom/samsung/android/media/heif/SemInputImage;)Lcom/samsung/android/media/heif/CaptureSourceInternal;
    .locals 2

    new-instance v0, Lcom/samsung/android/media/heif/CaptureSourceInternal;

    invoke-direct {v0}, Lcom/samsung/android/media/heif/CaptureSourceInternal;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setWidth(I)V

    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setHeight(I)V

    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getStride()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setStride(I)V

    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getSliceHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setSliceHeight(I)V

    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getRotationDegree()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setRotationDegree(I)V

    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getColorFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setColorFormat(I)V

    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setInputFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setInputByteBuffer(Ljava/nio/ByteBuffer;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getIccProfile()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getIccProfile()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setIccProfile(Ljava/nio/ByteBuffer;)V

    :cond_2
    return-object v0
.end method
