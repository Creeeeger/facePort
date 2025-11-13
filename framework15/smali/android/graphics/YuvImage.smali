.class public Landroid/graphics/YuvImage;
.super Ljava/lang/Object;
.source "YuvImage.java"


# static fields
.field private static final greylist-max-o WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static final blacklist sSupportedFormats:[Ljava/lang/String;

.field private static final blacklist sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

.field private static final blacklist sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;


# instance fields
.field private blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private greylist-max-o mData:[B

.field private greylist-max-o mFormat:I

.field private greylist-max-o mHeight:I

.field private greylist-max-o mStrides:[I

.field private greylist-max-o mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    const-string v0, "YCBCR_P010"

    const-string v1, "YUV_420_888"

    const-string v2, "NV21"

    const-string v3, "YUY2"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/YuvImage;->sSupportedFormats:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/graphics/ColorSpace$Named;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->BT2020_HLG:Landroid/graphics/ColorSpace$Named;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/ColorSpace$Named;->BT2020_PQ:Landroid/graphics/ColorSpace$Named;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Landroid/graphics/YuvImage;->sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    new-array v0, v0, [Landroid/graphics/ColorSpace$Named;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/YuvImage;->sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    return-void
.end method

.method public constructor whitelist <init>([BIII[I)V
    .locals 8

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[ILandroid/graphics/ColorSpace;)V

    return-void
.end method

.method public constructor whitelist <init>([BIII[ILandroid/graphics/ColorSpace;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    if-eq p2, v0, :cond_1

    const/16 v0, 0x14

    if-eq p2, v0, :cond_1

    const/16 v0, 0x36

    if-eq p2, v0, :cond_1

    const/16 v0, 0x23

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "only supports the following ImageFormat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/graphics/YuvImage;->printSupportedFormats()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-lez p3, :cond_5

    if-lez p4, :cond_5

    if-eqz p1, :cond_4

    if-eqz p6, :cond_3

    if-nez p5, :cond_2

    invoke-direct {p0, p3, p2}, Landroid/graphics/YuvImage;->calculateStrides(II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    goto :goto_1

    :cond_2
    iput-object p5, p0, Landroid/graphics/YuvImage;->mStrides:[I

    :goto_1
    iput-object p1, p0, Landroid/graphics/YuvImage;->mData:[B

    iput p2, p0, Landroid/graphics/YuvImage;->mFormat:I

    iput p3, p0, Landroid/graphics/YuvImage;->mWidth:I

    iput p4, p0, Landroid/graphics/YuvImage;->mHeight:I

    iput-object p6, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ColorSpace cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "yuv cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must large than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o adjustRectangle(Landroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    and-int/lit8 v0, v0, -0x2

    and-int/lit8 v1, v1, -0x2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget v2, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    and-int/lit8 v0, v0, -0x2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    return-void
.end method

.method private greylist-max-o calculateStrides(II)[I
    .locals 4

    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "only supports the following ImageFormat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/graphics/YuvImage;->printSupportedFormats()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    mul-int/lit8 v1, p1, 0x2

    mul-int/lit8 v2, p1, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    move-object v0, v1

    return-object v0

    :sswitch_1
    add-int/lit8 v1, p1, 0x1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, p1, 0x1

    div-int/lit8 v2, v2, 0x2

    filled-new-array {p1, v1, v2}, [I

    move-result-object v1

    move-object v0, v1

    return-object v0

    :sswitch_2
    mul-int/lit8 v1, p1, 0x2

    filled-new-array {v1}, [I

    move-result-object v1

    move-object v0, v1

    return-object v0

    :sswitch_3
    filled-new-array {p1, p1}, [I

    move-result-object v1

    move-object v0, v1

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x14 -> :sswitch_2
        0x23 -> :sswitch_1
        0x36 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist isSupportedJpegRColorSpace(ZI)Z
    .locals 6

    if-eqz p0, :cond_0

    sget-object v0, Landroid/graphics/YuvImage;->sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/YuvImage;->sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    :goto_0
    nop

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v5

    if-ne v5, p1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method private static native greylist-max-o nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z
.end method

.method private static native blacklist nativeCompressToJpegR([BI[BIIIILjava/io/OutputStream;[B[B[I[I)Z
.end method

.method private static blacklist printSupportedFormats()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroid/graphics/YuvImage;->sSupportedFormats:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Landroid/graphics/YuvImage;->sSupportedFormats:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/graphics/YuvImage;->sSupportedFormats:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist printSupportedJpegRColorSpaces(Z)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_0

    sget-object v0, Landroid/graphics/YuvImage;->sSupportedJpegRHdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/YuvImage;->sSupportedJpegRSdrColorSpaces:[Landroid/graphics/ColorSpace$Named;

    :goto_0
    nop

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/ColorSpace;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method greylist-max-o calculateOffsets(II)[I
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v1, v1, v3

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    iget v2, p0, Landroid/graphics/YuvImage;->mHeight:I

    iget-object v4, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v3, v4, v3

    mul-int/2addr v2, v3

    div-int/lit8 v3, p2, 0x2

    iget-object v4, p0, Landroid/graphics/YuvImage;->mStrides:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    div-int/lit8 v3, p1, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    move-object v0, v1

    return-object v0

    :cond_0
    iget v1, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/graphics/YuvImage;->mStrides:[I

    aget v1, v1, v3

    mul-int/2addr v1, p2

    div-int/lit8 v2, p1, 0x2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    filled-new-array {v1}, [I

    move-result-object v1

    move-object v0, v1

    return-object v0

    :cond_1
    return-object v0
.end method

.method public whitelist compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    .locals 12

    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only ImageFormat.NV21 and ImageFormat.YUY2 are supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/YuvImage;->mWidth:I

    iget v2, p0, Landroid/graphics/YuvImage;->mHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-ltz p2, :cond_3

    const/16 v1, 0x64

    if-gt p2, v1, :cond_3

    if-eqz p3, :cond_2

    invoke-direct {p0, p1}, Landroid/graphics/YuvImage;->adjustRectangle(Landroid/graphics/Rect;)V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1, v2}, Landroid/graphics/YuvImage;->calculateOffsets(II)[I

    move-result-object v1

    iget-object v3, p0, Landroid/graphics/YuvImage;->mData:[B

    iget v4, p0, Landroid/graphics/YuvImage;->mFormat:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v8, p0, Landroid/graphics/YuvImage;->mStrides:[I

    const/16 v2, 0x1000

    new-array v11, v2, [B

    move-object v7, v1

    move v9, p2

    move-object v10, p3

    invoke-static/range {v3 .. v11}, Landroid/graphics/YuvImage;->nativeCompressToJpeg([BIII[I[IILjava/io/OutputStream;[B)Z

    move-result v2

    return v2

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "stream cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "quality must be 0..100"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "rectangle is not inside the image"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only SRGB color space is supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist compressToJpegR(Landroid/graphics/YuvImage;ILjava/io/OutputStream;)Z
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/YuvImage;->compressToJpegR(Landroid/graphics/YuvImage;ILjava/io/OutputStream;[B)Z

    move-result v1

    return v1
.end method

.method public blacklist compressToJpegR(Landroid/graphics/YuvImage;ILjava/io/OutputStream;[B)Z
    .locals 14

    move-object v0, p0

    move/from16 v13, p2

    if-eqz p1, :cond_6

    iget-object v1, v0, Landroid/graphics/YuvImage;->mData:[B

    array-length v1, v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_5

    iget v1, v0, Landroid/graphics/YuvImage;->mFormat:I

    const/16 v2, 0x36

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvFormat()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/YuvImage;->mWidth:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/YuvImage;->mHeight:I

    if-ne v1, v2, :cond_3

    if-ltz v13, :cond_2

    const/16 v1, 0x64

    if-gt v13, v1, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, v0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Landroid/graphics/YuvImage;->isSupportedJpegRColorSpace(ZI)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->getId()I

    move-result v1

    invoke-static {v3, v1}, Landroid/graphics/YuvImage;->isSupportedJpegRColorSpace(ZI)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/YuvImage;->mData:[B

    iget-object v2, v0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/ColorSpace;->getDataSpace()I

    move-result v4

    iget v5, v0, Landroid/graphics/YuvImage;->mWidth:I

    iget v6, v0, Landroid/graphics/YuvImage;->mHeight:I

    const/16 v7, 0x1000

    new-array v9, v7, [B

    iget-object v11, v0, Landroid/graphics/YuvImage;->mStrides:[I

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getStrides()[I

    move-result-object v12

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p4

    invoke-static/range {v1 .. v12}, Landroid/graphics/YuvImage;->nativeCompressToJpegR([BI[BIIIILjava/io/OutputStream;[B[B[I[I)Z

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not supported color space. SDR only supports: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/graphics/YuvImage;->printSupportedJpegRColorSpaces(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "HDR only supports: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/graphics/YuvImage;->printSupportedJpegRColorSpaces(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "stream cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "quality must be 0..100"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HDR and SDR resolution mismatch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "only support ImageFormat.YCBCR_P010 and ImageFormat.YUV_420_888"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Input images cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SDR input cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .locals 1

    iget-object v0, p0, Landroid/graphics/YuvImage;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public whitelist getHeight()I
    .locals 1

    iget v0, p0, Landroid/graphics/YuvImage;->mHeight:I

    return v0
.end method

.method public whitelist getStrides()[I
    .locals 1

    iget-object v0, p0, Landroid/graphics/YuvImage;->mStrides:[I

    return-object v0
.end method

.method public whitelist getWidth()I
    .locals 1

    iget v0, p0, Landroid/graphics/YuvImage;->mWidth:I

    return v0
.end method

.method public whitelist getYuvData()[B
    .locals 1

    iget-object v0, p0, Landroid/graphics/YuvImage;->mData:[B

    return-object v0
.end method

.method public whitelist getYuvFormat()I
    .locals 1

    iget v0, p0, Landroid/graphics/YuvImage;->mFormat:I

    return v0
.end method
