.class public Lcom/samsung/android/media/heif/SemInputImage;
.super Ljava/lang/Object;
.source "SemInputImage.java"


# instance fields
.field private blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private final blacklist mColorFormat:I

.field private blacklist mFd:Ljava/io/FileDescriptor;

.field private final blacklist mHeight:I

.field private blacklist mIccProfile:Ljava/nio/ByteBuffer;

.field private blacklist mRotationDegree:I

.field private blacklist mSliceHeight:I

.field private blacklist mStride:I

.field private final blacklist mWidth:I


# direct methods
.method private constructor blacklist <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mWidth:I

    .line 28
    iput p2, p0, Lcom/samsung/android/media/heif/SemInputImage;->mHeight:I

    .line 29
    iput p3, p0, Lcom/samsung/android/media/heif/SemInputImage;->mColorFormat:I

    .line 32
    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mStride:I

    .line 33
    iput p2, p0, Lcom/samsung/android/media/heif/SemInputImage;->mSliceHeight:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mRotationDegree:I

    .line 35
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/FileDescriptor;III)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I

    .line 46
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/media/heif/SemInputImage;-><init>(III)V

    .line 47
    iput-object p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mFd:Ljava/io/FileDescriptor;

    .line 48
    return-void
.end method

.method public constructor whitelist <init>(Ljava/nio/ByteBuffer;III)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I

    .line 74
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/media/heif/SemInputImage;-><init>(III)V

    .line 75
    iput-object p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mBuffer:Ljava/nio/ByteBuffer;

    .line 76
    return-void
.end method

.method public constructor whitelist <init>([BIIIII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "bufferLength"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "format"    # I

    .line 59
    invoke-direct {p0, p4, p5, p6}, Lcom/samsung/android/media/heif/SemInputImage;-><init>(III)V

    .line 60
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mBuffer:Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 62
    iget-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 63
    return-void
.end method


# virtual methods
.method blacklist getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist getColorFormat()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mColorFormat:I

    return v0
.end method

.method blacklist getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public whitelist getHeight()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mHeight:I

    return v0
.end method

.method public whitelist getIccProfile()Ljava/nio/ByteBuffer;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mIccProfile:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist getRotationDegree()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mRotationDegree:I

    return v0
.end method

.method blacklist getSliceHeight()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mSliceHeight:I

    return v0
.end method

.method blacklist getStride()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mStride:I

    return v0
.end method

.method public whitelist getWidth()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mWidth:I

    return v0
.end method

.method public whitelist setIccProfile(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 198
    iput-object p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mIccProfile:Ljava/nio/ByteBuffer;

    .line 199
    return-void
.end method

.method public whitelist setRotationDegree(I)V
    .locals 0
    .param p1, "rotationDegree"    # I

    .line 189
    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mRotationDegree:I

    .line 190
    return-void
.end method

.method public whitelist setSliceHeight(I)V
    .locals 0
    .param p1, "sliceHeight"    # I

    .line 180
    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mSliceHeight:I

    .line 181
    return-void
.end method

.method public whitelist setStride(I)V
    .locals 0
    .param p1, "stride"    # I

    .line 170
    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mStride:I

    .line 171
    return-void
.end method
