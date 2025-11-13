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

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist makeInternalSource(Lcom/samsung/android/media/heif/SemInputImage;)Lcom/samsung/android/media/heif/CaptureSourceInternal;
    .locals 2
    .param p0, "in"    # Lcom/samsung/android/media/heif/SemInputImage;

    .line 119
    new-instance v0, Lcom/samsung/android/media/heif/CaptureSourceInternal;

    invoke-direct {v0}, Lcom/samsung/android/media/heif/CaptureSourceInternal;-><init>()V

    .line 120
    .local v0, "source":Lcom/samsung/android/media/heif/CaptureSourceInternal;
    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setWidth(I)V

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setHeight(I)V

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getStride()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setStride(I)V

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getSliceHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setSliceHeight(I)V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getRotationDegree()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setRotationDegree(I)V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getColorFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setColorFormat(I)V

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setInputFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setInputByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getIccProfile()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/media/heif/SemInputImage;->getIccProfile()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/heif/CaptureSourceInternal;->setIccProfile(Ljava/nio/ByteBuffer;)V

    .line 133
    :cond_2
    return-object v0
.end method
