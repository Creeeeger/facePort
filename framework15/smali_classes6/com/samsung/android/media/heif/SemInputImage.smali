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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mWidth:I

    iput p2, p0, Lcom/samsung/android/media/heif/SemInputImage;->mHeight:I

    iput p3, p0, Lcom/samsung/android/media/heif/SemInputImage;->mColorFormat:I

    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mStride:I

    iput p2, p0, Lcom/samsung/android/media/heif/SemInputImage;->mSliceHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mRotationDegree:I

    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/FileDescriptor;III)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/media/heif/SemInputImage;-><init>(III)V

    iput-object p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mFd:Ljava/io/FileDescriptor;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/nio/ByteBuffer;III)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/media/heif/SemInputImage;-><init>(III)V

    iput-object p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor whitelist <init>([BIIIII)V
    .locals 1

    invoke-direct {p0, p4, p5, p6}, Lcom/samsung/android/media/heif/SemInputImage;-><init>(III)V

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method blacklist getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist getColorFormat()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mColorFormat:I

    return v0
.end method

.method blacklist getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public whitelist getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mHeight:I

    return v0
.end method

.method public whitelist getIccProfile()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mIccProfile:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist getRotationDegree()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mRotationDegree:I

    return v0
.end method

.method blacklist getSliceHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mSliceHeight:I

    return v0
.end method

.method blacklist getStride()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mStride:I

    return v0
.end method

.method public whitelist getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/heif/SemInputImage;->mWidth:I

    return v0
.end method

.method public whitelist setIccProfile(Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mIccProfile:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public whitelist setRotationDegree(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mRotationDegree:I

    return-void
.end method

.method public whitelist setSliceHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mSliceHeight:I

    return-void
.end method

.method public whitelist setStride(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/heif/SemInputImage;->mStride:I

    return-void
.end method
