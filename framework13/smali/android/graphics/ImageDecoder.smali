.class public final Landroid/graphics/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageDecoder$MemoryPolicy;,
        Landroid/graphics/ImageDecoder$Allocator;,
        Landroid/graphics/ImageDecoder$OnPartialImageListener;,
        Landroid/graphics/ImageDecoder$DecodeException;,
        Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;,
        Landroid/graphics/ImageDecoder$IncompleteException;,
        Landroid/graphics/ImageDecoder$ImageInfo;,
        Landroid/graphics/ImageDecoder$CallableSource;,
        Landroid/graphics/ImageDecoder$FileSource;,
        Landroid/graphics/ImageDecoder$AssetSource;,
        Landroid/graphics/ImageDecoder$ResourceSource;,
        Landroid/graphics/ImageDecoder$AssetInputStreamQMGSource;,
        Landroid/graphics/ImageDecoder$AssetInputStreamSource;,
        Landroid/graphics/ImageDecoder$InputStreamSourceQMG;,
        Landroid/graphics/ImageDecoder$InputStreamSource;,
        Landroid/graphics/ImageDecoder$ContentResolverSource;,
        Landroid/graphics/ImageDecoder$ByteBufferSource;,
        Landroid/graphics/ImageDecoder$ByteArraySource;,
        Landroid/graphics/ImageDecoder$Source;
    }
.end annotation


# static fields
.field public static final whitelist ALLOCATOR_DEFAULT:I = 0x0

.field public static final whitelist ALLOCATOR_HARDWARE:I = 0x3

.field public static final whitelist ALLOCATOR_SHARED_MEMORY:I = 0x2

.field public static final whitelist ALLOCATOR_SOFTWARE:I = 0x1

.field public static final greylist ERROR_SOURCE_ERROR:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist ERROR_SOURCE_EXCEPTION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist ERROR_SOURCE_INCOMPLETE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MEMORY_POLICY_DEFAULT:I = 0x1

.field public static final whitelist MEMORY_POLICY_LOW_RAM:I


# instance fields
.field private greylist-max-o mAllocator:I

.field private final greylist-max-o mAnimated:Z

.field private greylist-max-o mAssetFd:Landroid/content/res/AssetFileDescriptor;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private greylist-max-o mConserveMemory:Z

.field private greylist-max-o mCropRect:Landroid/graphics/Rect;

.field private greylist-max-o mDecodeAsAlphaMask:Z

.field private greylist-max-o mDesiredColorSpace:Landroid/graphics/ColorSpace;

.field private greylist-max-o mDesiredHeight:I

.field private greylist-max-o mDesiredWidth:I

.field private final greylist-max-o mHeight:I

.field private greylist-max-o mInputStream:Ljava/io/InputStream;

.field private final greylist-max-o mIsNinePatch:Z

.field private greylist-max-o mMutable:Z

.field private greylist-max-o mNativePtr:J

.field private greylist-max-o mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

.field private greylist-max-o mOutPaddingRect:Landroid/graphics/Rect;

.field private greylist-max-o mOwnsInputStream:Z

.field private greylist-max-o mPostProcessor:Landroid/graphics/PostProcessor;

.field private greylist-max-o mSource:Landroid/graphics/ImageDecoder$Source;

.field private greylist-max-o mTempStorage:[B

.field private greylist-max-o mUnpremultipliedRequired:Z

.field private final greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimated(Landroid/graphics/ImageDecoder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/graphics/ImageDecoder;->mAnimated:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeight(Landroid/graphics/ImageDecoder;)I
    .locals 0

    iget p0, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/graphics/ImageDecoder;)I
    .locals 0

    iget p0, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetColorSpace(Landroid/graphics/ImageDecoder;)Landroid/graphics/ColorSpace;
    .locals 0

    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMimeType(Landroid/graphics/ImageDecoder;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->getMimeType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromAsset(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/ImageDecoder;->createFromAsset(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/ImageDecoder;->createFromAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromAssetQMG(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/ImageDecoder;->createFromAssetQMG(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromFile(Ljava/io/File;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/ImageDecoder;->createFromFile(Ljava/io/File;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/ImageDecoder;->createFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromStreamQMG(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/ImageDecoder;->createFromStreamQMG(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreate(Ljava/nio/ByteBuffer;IIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/nio/ByteBuffer;IIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreate([BIIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/ImageDecoder;->nCreate([BIIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object p0

    return-object p0
.end method

.method private constructor greylist-max-o <init>(JIIZZ)V
    .locals 2
    .param p1, "nativePtr"    # J
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "animated"    # Z
    .param p6, "isNinePatch"    # Z

    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 921
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    .line 922
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    .line 923
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    .line 924
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    .line 925
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    .line 926
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    .line 939
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 940
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 949
    iput-wide p1, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    .line 950
    iput p3, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    .line 951
    iput p4, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    .line 952
    iput p3, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    .line 953
    iput p4, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    .line 954
    iput-boolean p5, p0, Landroid/graphics/ImageDecoder;->mAnimated:Z

    .line 955
    iput-boolean p6, p0, Landroid/graphics/ImageDecoder;->mIsNinePatch:Z

    .line 956
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 957
    return-void
.end method

.method private greylist-max-o callHeaderDecoded(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;Landroid/graphics/ImageDecoder$Source;)V
    .locals 3
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .param p2, "src"    # Landroid/graphics/ImageDecoder$Source;

    .line 1874
    if-eqz p1, :cond_0

    .line 1875
    new-instance v0, Landroid/graphics/ImageDecoder$ImageInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/ImageDecoder$ImageInfo;-><init>(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo-IA;)V

    .line 1877
    .local v0, "info":Landroid/graphics/ImageDecoder$ImageInfo;
    :try_start_0
    invoke-interface {p1, p0, v0, p2}, Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;->onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1879
    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder$ImageInfo;->-$$Nest$fputmDecoder(Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder;)V

    .line 1880
    goto :goto_0

    .line 1879
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder$ImageInfo;->-$$Nest$fputmDecoder(Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder;)V

    .line 1880
    throw v2

    .line 1882
    .end local v0    # "info":Landroid/graphics/ImageDecoder$ImageInfo;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist checkForExtended()Z
    .locals 3

    .line 1847
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1848
    return v1

    .line 1850
    :cond_0
    sget-object v2, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 1851
    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 1850
    :cond_2
    return v1
.end method

.method private blacklist checkState(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .line 1811
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 1815
    iget v0, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    iget-object v2, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Landroid/graphics/ImageDecoder;->checkSubset(IILandroid/graphics/Rect;)V

    .line 1819
    if-nez p1, :cond_2

    iget v0, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1820
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    if-nez v0, :cond_1

    .line 1823
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1824
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot make HARDWARE Alpha mask Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1821
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot make mutable HARDWARE Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1828
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    if-nez v0, :cond_3

    goto :goto_1

    .line 1829
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot draw to unpremultiplied pixels!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1831
    :cond_4
    :goto_1
    return-void

    .line 1812
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use closed ImageDecoder!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkSubset(IILandroid/graphics/Rect;)V
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "r"    # Landroid/graphics/Rect;

    .line 1834
    if-nez p2, :cond_0

    .line 1835
    return-void

    .line 1837
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    const-string v1, "Subset "

    if-lez v0, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_2

    .line 1840
    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-gt v0, p0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v0, p1, :cond_1

    .line 1844
    return-void

    .line 1841
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not contained by scaled image bounds: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1838
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is empty/unsorted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o computeDensity(Landroid/graphics/ImageDecoder$Source;)I
    .locals 8
    .param p1, "src"    # Landroid/graphics/ImageDecoder$Source;

    .line 2040
    invoke-direct {p0}, Landroid/graphics/ImageDecoder;->requestedResize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2041
    const/4 v0, 0x0

    return v0

    .line 2044
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$Source;->getDensity()I

    move-result v0

    .line 2045
    .local v0, "srcDensity":I
    if-nez v0, :cond_1

    .line 2046
    return v0

    .line 2054
    :cond_1
    iget-boolean v1, p0, Landroid/graphics/ImageDecoder;->mIsNinePatch:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-nez v1, :cond_2

    .line 2055
    return v0

    .line 2065
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$Source;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2066
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    if-ne v2, v0, :cond_3

    .line 2067
    return v0

    .line 2070
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$Source;->computeDstDensity()I

    move-result v2

    .line 2071
    .local v2, "dstDensity":I
    if-ne v0, v2, :cond_4

    .line 2072
    return v0

    .line 2077
    :cond_4
    if-ge v0, v2, :cond_5

    .line 2078
    invoke-static {}, Landroid/graphics/Compatibility;->getTargetSdkVersion()I

    move-result v3

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_5

    .line 2079
    return v0

    .line 2082
    :cond_5
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 2083
    .local v3, "scale":F
    iget v4, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v6, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2084
    .local v4, "scaledWidth":I
    iget v7, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr v7, v5

    float-to-int v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2085
    .local v5, "scaledHeight":I
    invoke-virtual {p0, v4, v5}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 2086
    return v2
.end method

.method private static blacklist createFromAsset(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 5
    .param p0, "ais"    # Landroid/content/res/AssetManager$AssetInputStream;
    .param p1, "preferAnimation"    # Z
    .param p2, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    const/4 v0, 0x0

    .line 609
    .local v0, "decoder":Landroid/graphics/ImageDecoder;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v2

    .line 610
    .local v2, "asset":J
    invoke-static {v2, v3, p1, p2}, Landroid/graphics/ImageDecoder;->nCreate(JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 612
    .end local v2    # "asset":J
    if-nez v0, :cond_0

    .line 613
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 615
    :cond_0
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 616
    iput-boolean v1, v0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 618
    nop

    .line 619
    :goto_0
    return-object v0

    .line 612
    :catchall_0
    move-exception v2

    if-nez v0, :cond_1

    .line 613
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 615
    :cond_1
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 616
    iput-boolean v1, v0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 618
    :goto_1
    throw v2
.end method

.method private static blacklist createFromAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 7
    .param p0, "assetFd"    # Landroid/content/res/AssetFileDescriptor;
    .param p1, "preferAnimation"    # Z
    .param p2, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    if-eqz p0, :cond_2

    .line 372
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 373
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    .line 375
    .local v1, "offset":J
    const/4 v3, 0x0

    .line 378
    .local v3, "decoder":Landroid/graphics/ImageDecoder;
    :try_start_0
    sget v4, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v1, v2, v4}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 379
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-static {v0, v4, v5, p1, p2}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/io/FileDescriptor;JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v4
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 382
    goto :goto_0

    .line 384
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 380
    :catch_0
    move-exception v4

    .line 381
    .local v4, "e":Landroid/system/ErrnoException;
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v6, 0x1

    invoke-static {v5, v6, p1, p2}, Landroid/graphics/ImageDecoder;->createFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v5

    .line 384
    .end local v4    # "e":Landroid/system/ErrnoException;
    :goto_0
    if-nez v3, :cond_0

    .line 385
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 387
    :cond_0
    iput-object p0, v3, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 389
    nop

    .line 390
    :goto_1
    return-object v3

    .line 384
    :goto_2
    if-nez v3, :cond_1

    .line 385
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    .line 387
    :cond_1
    iput-object p0, v3, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 389
    :goto_3
    throw v4

    .line 370
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v1    # "offset":J
    .end local v3    # "decoder":Landroid/graphics/ImageDecoder;
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method

.method private static blacklist createFromAssetQMG(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 5
    .param p0, "ais"    # Landroid/content/res/AssetManager$AssetInputStream;
    .param p1, "preferAnimation"    # Z
    .param p2, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    const/4 v0, 0x0

    .line 631
    .local v0, "decoder":Landroid/graphics/ImageDecoder;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v2

    .line 632
    .local v2, "asset":J
    invoke-static {v2, v3, p1, p2}, Landroid/graphics/ImageDecoder;->nCreateQMG(JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 634
    .end local v2    # "asset":J
    if-nez v0, :cond_0

    .line 635
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 637
    :cond_0
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 638
    iput-boolean v1, v0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 640
    nop

    .line 641
    :goto_0
    return-object v0

    .line 634
    :catchall_0
    move-exception v2

    if-nez v0, :cond_1

    .line 635
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 637
    :cond_1
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 638
    iput-boolean v1, v0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 640
    :goto_1
    throw v2
.end method

.method private static blacklist createFromFile(Ljava/io/File;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "preferAnimation"    # Z
    .param p2, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 294
    .local v0, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 296
    .local v1, "fd":Ljava/io/FileDescriptor;
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    :try_start_0
    sget v5, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {v1, v2, v3, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    nop

    .line 301
    const/4 v2, 0x0

    .line 303
    .local v2, "decoder":Landroid/graphics/ImageDecoder;
    const-wide/16 v5, -0x1

    :try_start_1
    invoke-static {v1, v5, v6, p1, p2}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/io/FileDescriptor;JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 305
    if-nez v2, :cond_0

    .line 306
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 308
    :cond_0
    iput-object v0, v2, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 309
    iput-boolean v4, v2, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 311
    nop

    .line 312
    :goto_0
    return-object v2

    .line 305
    :catchall_0
    move-exception v3

    if-nez v2, :cond_1

    .line 306
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 308
    :cond_1
    iput-object v0, v2, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 309
    iput-boolean v4, v2, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 311
    :goto_1
    throw v3

    .line 297
    .end local v2    # "decoder":Landroid/graphics/ImageDecoder;
    :catch_0
    move-exception v2

    .line 298
    .local v2, "e":Landroid/system/ErrnoException;
    invoke-static {v0, v4, p1, p2}, Landroid/graphics/ImageDecoder;->createFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist createFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "closeInputStream"    # Z
    .param p2, "preferAnimation"    # Z
    .param p3, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 320
    .local v0, "storage":[B
    const/4 v1, 0x0

    .line 322
    .local v1, "decoder":Landroid/graphics/ImageDecoder;
    :try_start_0
    invoke-static {p0, v0, p2, p3}, Landroid/graphics/ImageDecoder;->nCreate(Ljava/io/InputStream;[BZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 324
    if-nez v1, :cond_0

    .line 325
    if-eqz p1, :cond_1

    .line 326
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 329
    :cond_0
    iput-object p0, v1, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 330
    iput-boolean p1, v1, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 331
    iput-object v0, v1, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    .line 333
    nop

    .line 335
    :cond_1
    :goto_0
    return-object v1

    .line 324
    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    .line 325
    if-eqz p1, :cond_3

    .line 326
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 329
    :cond_2
    iput-object p0, v1, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 330
    iput-boolean p1, v1, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 331
    iput-object v0, v1, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    .line 333
    :cond_3
    :goto_1
    throw v2
.end method

.method private static blacklist createFromStreamQMG(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "closeInputStream"    # Z
    .param p2, "preferAnimation"    # Z
    .param p3, "source"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 348
    .local v0, "storage":[B
    const/4 v1, 0x0

    .line 350
    .local v1, "decoder":Landroid/graphics/ImageDecoder;
    :try_start_0
    invoke-static {p0, v0, p2, p3}, Landroid/graphics/ImageDecoder;->nCreateQMG(Ljava/io/InputStream;[BZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 352
    if-nez v1, :cond_0

    .line 353
    if-eqz p1, :cond_1

    .line 354
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 357
    :cond_0
    iput-object p0, v1, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 358
    iput-boolean p1, v1, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 359
    iput-object v0, v1, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    .line 361
    nop

    .line 363
    :cond_1
    :goto_0
    return-object v1

    .line 352
    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    .line 353
    if-eqz p1, :cond_3

    .line 354
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 357
    :cond_2
    iput-object p0, v1, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 358
    iput-boolean p1, v1, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    .line 359
    iput-object v0, v1, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    .line 361
    :cond_3
    :goto_1
    throw v2
.end method

.method public static whitelist createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1046
    new-instance v0, Landroid/graphics/ImageDecoder$ContentResolverSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/ImageDecoder$ContentResolverSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static greylist-max-o createSource(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)Landroid/graphics/ImageDecoder$Source;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 1058
    new-instance v0, Landroid/graphics/ImageDecoder$ContentResolverSource;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$ContentResolverSource;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static whitelist createSource(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/ImageDecoder$Source;
    .locals 1
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 1067
    new-instance v0, Landroid/graphics/ImageDecoder$AssetSource;

    invoke-direct {v0, p0, p1}, Landroid/graphics/ImageDecoder$AssetSource;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public static whitelist createSource(Landroid/content/res/Resources;I)Landroid/graphics/ImageDecoder$Source;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .line 1023
    new-instance v0, Landroid/graphics/ImageDecoder$ResourceSource;

    invoke-direct {v0, p0, p1}, Landroid/graphics/ImageDecoder$ResourceSource;-><init>(Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method public static greylist-max-o createSource(Landroid/content/res/Resources;Ljava/io/InputStream;)Landroid/graphics/ImageDecoder$Source;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "is"    # Ljava/io/InputStream;

    .line 1158
    new-instance v0, Landroid/graphics/ImageDecoder$InputStreamSource;

    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/ImageDecoder$InputStreamSource;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static blacklist createSource(Landroid/content/res/Resources;Ljava/io/InputStream;I)Landroid/graphics/ImageDecoder$Source;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "density"    # I

    .line 1172
    new-instance v0, Landroid/graphics/ImageDecoder$InputStreamSource;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$InputStreamSource;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static whitelist createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 1200
    new-instance v0, Landroid/graphics/ImageDecoder$FileSource;

    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder$FileSource;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static whitelist createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1145
    new-instance v0, Landroid/graphics/ImageDecoder$ByteBufferSource;

    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder$ByteBufferSource;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static whitelist createSource(Ljava/util/concurrent/Callable;)Landroid/graphics/ImageDecoder$Source;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;)",
            "Landroid/graphics/ImageDecoder$Source;"
        }
    .end annotation

    .line 1221
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroid/content/res/AssetFileDescriptor;>;"
    new-instance v0, Landroid/graphics/ImageDecoder$CallableSource;

    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder$CallableSource;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static whitelist createSource([B)Landroid/graphics/ImageDecoder$Source;
    .locals 2
    .param p0, "data"    # [B

    .line 1123
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/ImageDecoder;->createSource([BII)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createSource([BII)Landroid/graphics/ImageDecoder$Source;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 1094
    if-eqz p0, :cond_1

    .line 1097
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_0

    .line 1102
    new-instance v0, Landroid/graphics/ImageDecoder$ByteArraySource;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$ByteArraySource;-><init>([BII)V

    return-object v0

    .line 1099
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "invalid offset/length!"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1095
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null byte[] in createSource!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createSourceQMG(Landroid/content/res/Resources;Ljava/io/InputStream;I)Landroid/graphics/ImageDecoder$Source;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "density"    # I

    .line 1183
    new-instance v0, Landroid/graphics/ImageDecoder$InputStreamSourceQMG;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ImageDecoder$InputStreamSourceQMG;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public static whitelist decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2114
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeBitmapImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2004
    if-eqz p1, :cond_0

    .line 2008
    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeBitmapImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2005
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null! Use decodeBitmap(Source) to not have a listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o decodeBitmapImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2015
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/ImageDecoder$Source;->createImageDecoder(Z)Landroid/graphics/ImageDecoder;

    move-result-object v0

    .line 2016
    .local v0, "decoder":Landroid/graphics/ImageDecoder;
    :try_start_0
    iput-object p0, v0, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;

    .line 2017
    invoke-direct {v0, p1, p0}, Landroid/graphics/ImageDecoder;->callHeaderDecoded(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;Landroid/graphics/ImageDecoder$Source;)V

    .line 2021
    invoke-direct {v0, p0}, Landroid/graphics/ImageDecoder;->computeDensity(Landroid/graphics/ImageDecoder$Source;)I

    move-result v1

    .line 2022
    .local v1, "srcDensity":I
    invoke-direct {v0}, Landroid/graphics/ImageDecoder;->decodeBitmapInternal()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2023
    .local v2, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 2025
    iget-object v3, v0, Landroid/graphics/ImageDecoder;->mOutPaddingRect:Landroid/graphics/Rect;

    .line 2026
    .local v3, "padding":Landroid/graphics/Rect;
    if-eqz v3, :cond_0

    .line 2027
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    .line 2028
    .local v4, "np":[B
    if-eqz v4, :cond_0

    invoke-static {v4}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2029
    iget-wide v5, v0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v5, v6, v3}, Landroid/graphics/ImageDecoder;->nGetPadding(JLandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2033
    .end local v4    # "np":[B
    :cond_0
    nop

    .line 2034
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/ImageDecoder;->close()V

    .line 2033
    :cond_1
    return-object v2

    .line 2015
    .end local v1    # "srcDensity":I
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "padding":Landroid/graphics/Rect;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method private greylist-max-o decodeBitmapInternal()Landroid/graphics/Bitmap;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1864
    move-object/from16 v15, p0

    const/4 v0, 0x0

    invoke-direct {v15, v0}, Landroid/graphics/ImageDecoder;->checkState(Z)V

    .line 1865
    iget-wide v1, v15, Landroid/graphics/ImageDecoder;->mNativePtr:J

    iget-object v3, v15, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    move v3, v0

    iget v4, v15, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v5, v15, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    iget-object v6, v15, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    iget-boolean v7, v15, Landroid/graphics/ImageDecoder;->mMutable:Z

    iget v8, v15, Landroid/graphics/ImageDecoder;->mAllocator:I

    iget-boolean v9, v15, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    iget-boolean v10, v15, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    iget-boolean v11, v15, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    .line 1868
    invoke-direct/range {p0 .. p0}, Landroid/graphics/ImageDecoder;->getColorSpacePtr()J

    move-result-wide v12

    .line 1869
    invoke-direct/range {p0 .. p0}, Landroid/graphics/ImageDecoder;->checkForExtended()Z

    move-result v14

    .line 1865
    move-wide v0, v1

    move-object/from16 v2, p0

    invoke-static/range {v0 .. v14}, Landroid/graphics/ImageDecoder;->nDecodeBitmap(JLandroid/graphics/ImageDecoder;ZIILandroid/graphics/Rect;ZIZZZJZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeDrawable(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1985
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeDrawableImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1900
    if-eqz p1, :cond_0

    .line 1904
    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->decodeDrawableImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 1901
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null! Use decodeDrawable(Source) to not have a listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o decodeDrawableImpl(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;
    .locals 19
    .param p0, "src"    # Landroid/graphics/ImageDecoder$Source;
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1911
    move-object/from16 v1, p0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/graphics/ImageDecoder$Source;->createImageDecoder(Z)Landroid/graphics/ImageDecoder;

    move-result-object v2

    .line 1912
    .local v2, "decoder":Landroid/graphics/ImageDecoder;
    :try_start_0
    iput-object v1, v2, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;

    .line 1913
    move-object/from16 v3, p1

    invoke-direct {v2, v3, v1}, Landroid/graphics/ImageDecoder;->callHeaderDecoded(Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;Landroid/graphics/ImageDecoder$Source;)V

    .line 1915
    iget-boolean v4, v2, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    if-nez v4, :cond_8

    .line 1922
    iget-boolean v4, v2, Landroid/graphics/ImageDecoder;->mMutable:Z

    if-nez v4, :cond_7

    .line 1929
    invoke-direct {v2, v1}, Landroid/graphics/ImageDecoder;->computeDensity(Landroid/graphics/ImageDecoder$Source;)I

    move-result v4

    .line 1930
    .local v4, "srcDensity":I
    iget-boolean v5, v2, Landroid/graphics/ImageDecoder;->mAnimated:Z

    if-eqz v5, :cond_2

    .line 1933
    iget-object v5, v2, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    const/4 v15, 0x0

    if-nez v5, :cond_0

    .line 1934
    move-object v8, v15

    goto :goto_0

    :cond_0
    move-object v8, v2

    .line 1935
    .local v8, "postProcessPtr":Landroid/graphics/ImageDecoder;
    :goto_0
    invoke-direct {v2, v0}, Landroid/graphics/ImageDecoder;->checkState(Z)V

    .line 1936
    new-instance v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    iget-wide v6, v2, Landroid/graphics/ImageDecoder;->mNativePtr:J

    iget v9, v2, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    iget v10, v2, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    .line 1938
    invoke-direct {v2}, Landroid/graphics/ImageDecoder;->getColorSpacePtr()J

    move-result-wide v11

    .line 1939
    invoke-direct {v2}, Landroid/graphics/ImageDecoder;->checkForExtended()Z

    move-result v13

    .line 1940
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/ImageDecoder$Source;->computeDstDensity()I

    move-result v16

    iget-object v14, v2, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    iget-object v5, v2, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    iget-object v1, v2, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v17, v5

    move-object v5, v0

    move-object/from16 v18, v14

    move v14, v4

    move-object v3, v15

    move/from16 v15, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v1

    invoke-direct/range {v5 .. v18}, Landroid/graphics/drawable/AnimatedImageDrawable;-><init>(JLandroid/graphics/ImageDecoder;IIJZIILandroid/graphics/Rect;Ljava/io/InputStream;Landroid/content/res/AssetFileDescriptor;)V

    .line 1943
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iput-object v3, v2, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 1944
    iput-object v3, v2, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1945
    nop

    .line 1966
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/ImageDecoder;->close()V

    .line 1945
    :cond_1
    return-object v0

    .line 1948
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "postProcessPtr":Landroid/graphics/ImageDecoder;
    :cond_2
    :try_start_1
    invoke-direct {v2}, Landroid/graphics/ImageDecoder;->decodeBitmapInternal()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1949
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1951
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/ImageDecoder$Source;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1952
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 1953
    .local v3, "np":[B
    if-eqz v3, :cond_5

    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1954
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v12, v5

    .line 1955
    .local v12, "opticalInsets":Landroid/graphics/Rect;
    invoke-virtual {v0, v12}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    .line 1956
    iget-object v5, v2, Landroid/graphics/ImageDecoder;->mOutPaddingRect:Landroid/graphics/Rect;

    .line 1957
    .local v5, "padding":Landroid/graphics/Rect;
    if-nez v5, :cond_3

    .line 1958
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v5, v6

    move-object v13, v5

    goto :goto_1

    .line 1957
    :cond_3
    move-object v13, v5

    .line 1960
    .end local v5    # "padding":Landroid/graphics/Rect;
    .local v13, "padding":Landroid/graphics/Rect;
    :goto_1
    iget-wide v5, v2, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v5, v6, v13}, Landroid/graphics/ImageDecoder;->nGetPadding(JLandroid/graphics/Rect;)V

    .line 1961
    new-instance v14, Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v11, 0x0

    move-object v5, v14

    move-object v6, v1

    move-object v7, v0

    move-object v8, v3

    move-object v9, v13

    move-object v10, v12

    invoke-direct/range {v5 .. v11}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1966
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/ImageDecoder;->close()V

    .line 1961
    :cond_4
    return-object v14

    .line 1965
    .end local v12    # "opticalInsets":Landroid/graphics/Rect;
    .end local v13    # "padding":Landroid/graphics/Rect;
    :cond_5
    :try_start_2
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1966
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/ImageDecoder;->close()V

    .line 1965
    :cond_6
    return-object v5

    .line 1923
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v3    # "np":[B
    .end local v4    # "srcDensity":I
    :cond_7
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot decode a mutable Drawable!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "decoder":Landroid/graphics/ImageDecoder;
    .end local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .end local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    throw v0

    .line 1918
    .restart local v2    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .restart local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot decode a Drawable with unpremultiplied pixels!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "decoder":Landroid/graphics/ImageDecoder;
    .end local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .end local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1911
    .restart local v2    # "decoder":Landroid/graphics/ImageDecoder;
    .restart local p0    # "src":Landroid/graphics/ImageDecoder$Source;
    .restart local p1    # "listener":Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_9

    :try_start_4
    invoke-virtual {v2}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_2
    throw v1
.end method

.method private greylist-max-o getColorSpace()Landroid/graphics/ColorSpace;
    .locals 2

    .line 2096
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->nGetColorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getColorSpacePtr()J
    .locals 2

    .line 1855
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    if-nez v0, :cond_0

    .line 1856
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1858
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getMimeType()Ljava/lang/String;
    .locals 2

    .line 2091
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->nGetMimeType(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getSampledSize(I)Landroid/util/Size;
    .locals 4
    .param p1, "sampleSize"    # I

    .line 1240
    if-lez p1, :cond_1

    .line 1244
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1248
    invoke-static {v0, v1, p1}, Landroid/graphics/ImageDecoder;->nGetSampledSize(JI)Landroid/util/Size;

    move-result-object v0

    return-object v0

    .line 1245
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageDecoder is closed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1241
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sampleSize must be positive! provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getTargetDimension(III)I
    .locals 3
    .param p1, "original"    # I
    .param p2, "sampleSize"    # I
    .param p3, "computed"    # I

    .line 1302
    if-lt p2, p1, :cond_0

    .line 1303
    const/4 v0, 0x1

    return v0

    .line 1308
    :cond_0
    div-int v0, p1, p2

    .line 1309
    .local v0, "target":I
    if-ne p3, v0, :cond_1

    .line 1310
    return p3

    .line 1316
    :cond_1
    mul-int v1, p3, p2

    .line 1317
    .local v1, "reverse":I
    sub-int v2, v1, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p2, :cond_2

    .line 1319
    return p3

    .line 1323
    :cond_2
    return v0
.end method

.method public static whitelist isMimeTypeSupported(Ljava/lang/String;)Z
    .locals 4
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 983
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "image/x-canon-cr2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "image/x-nikon-nrw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "image/x-nikon-nef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "image/x-olympus-orf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "image/x-ico"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "image/x-pentax-pef"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "image/bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "image/x-panasonic-rw2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_b
    const-string v1, "image/x-adobe-dng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_c
    const-string v1, "image/webp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_d
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_e
    const-string v1, "image/heif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_f
    const-string v1, "image/heic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_10
    const-string v1, "image/x-sony-arw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_11
    const-string v1, "image/x-samsung-srw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_12
    const-string v1, "image/x-fuji-raf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1006
    return v2

    .line 1004
    :pswitch_0
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6fc6acff -> :sswitch_12
        -0x617ac9e4 -> :sswitch_11
        -0x5f082c57 -> :sswitch_10
        -0x58a8e8f5 -> :sswitch_f
        -0x58a8e8f2 -> :sswitch_e
        -0x58a7d764 -> :sswitch_d
        -0x58a21830 -> :sswitch_c
        -0x54d6098a -> :sswitch_b
        -0x3ab85cc1 -> :sswitch_a
        -0x3468a12f -> :sswitch_9
        -0x34688ef0 -> :sswitch_8
        -0x34686c8b -> :sswitch_7
        -0x13d592a1 -> :sswitch_6
        0x2c2ee2ec -> :sswitch_5
        0x4453ce0c -> :sswitch_4
        0x52243d4a -> :sswitch_3
        0x7d1e84e8 -> :sswitch_2
        0x7d1e868c -> :sswitch_1
        0x7dd6e2bc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static native greylist-max-o nClose(J)V
.end method

.method private static native blacklist nCreate(JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nCreate(Ljava/io/FileDescriptor;JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nCreate(Ljava/io/InputStream;[BZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nCreate(Ljava/nio/ByteBuffer;IIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nCreate([BIIZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nCreateQMG(JZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nCreateQMG(Ljava/io/InputStream;[BZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nDecodeBitmap(JLandroid/graphics/ImageDecoder;ZIILandroid/graphics/Rect;ZIZZZJZ)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nGetColorSpace(J)Landroid/graphics/ColorSpace;
.end method

.method private static native greylist-max-o nGetMimeType(J)Ljava/lang/String;
.end method

.method private static native greylist-max-o nGetPadding(JLandroid/graphics/Rect;)V
.end method

.method private static native greylist-max-o nGetSampledSize(JI)Landroid/util/Size;
.end method

.method private greylist-max-o onPartialImage(ILjava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/graphics/ImageDecoder$DecodeException;
        }
    .end annotation

    .line 2135
    new-instance v0, Landroid/graphics/ImageDecoder$DecodeException;

    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mSource:Landroid/graphics/ImageDecoder$Source;

    invoke-direct {v0, p1, p2, v1}, Landroid/graphics/ImageDecoder$DecodeException;-><init>(ILjava/lang/Throwable;Landroid/graphics/ImageDecoder$Source;)V

    .line 2136
    .local v0, "exception":Landroid/graphics/ImageDecoder$DecodeException;
    iget-object v1, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    if-eqz v1, :cond_0

    .line 2137
    invoke-interface {v1, v0}, Landroid/graphics/ImageDecoder$OnPartialImageListener;->onPartialImage(Landroid/graphics/ImageDecoder$DecodeException;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2140
    return-void

    .line 2138
    :cond_0
    throw v0
.end method

.method private blacklist postProcessAndRelease(Landroid/graphics/Canvas;)I
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2123
    :try_start_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    invoke-interface {v0, p1}, Landroid/graphics/PostProcessor;->onPostProcess(Landroid/graphics/Canvas;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2125
    invoke-virtual {p1}, Landroid/graphics/Canvas;->release()V

    .line 2123
    return v0

    .line 2125
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->release()V

    .line 2126
    throw v0
.end method

.method private greylist-max-o requestedResize()Z
    .locals 2

    .line 1362
    iget v0, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    iget v1, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 3

    .line 1793
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 1794
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1795
    return-void

    .line 1797
    :cond_0
    iget-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->nClose(J)V

    .line 1798
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/ImageDecoder;->mNativePtr:J

    .line 1800
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mOwnsInputStream:Z

    if-eqz v0, :cond_1

    .line 1801
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1803
    :cond_1
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1805
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 1806
    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 1807
    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mTempStorage:[B

    .line 1808
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 962
    :try_start_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 963
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 967
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mInputStream:Ljava/io/InputStream;

    .line 968
    iput-object v0, p0, Landroid/graphics/ImageDecoder;->mAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 970
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 973
    nop

    .line 974
    return-void

    .line 972
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 973
    throw v0
.end method

.method public whitelist getAllocator()I
    .locals 1

    .line 1432
    iget v0, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    return v0
.end method

.method public greylist getAsAlphaMask()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1749
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->getDecodeAsAlphaMask()Z

    move-result v0

    return v0
.end method

.method public greylist getConserveMemory()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1684
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    return v0
.end method

.method public whitelist getCrop()Landroid/graphics/Rect;
    .locals 1

    .line 1558
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public greylist getDecodeAsAlphaMask()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1741
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    return v0
.end method

.method public whitelist getMemorySizePolicy()I
    .locals 1

    .line 1668
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist getMutable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1623
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->isMutableRequired()Z

    move-result v0

    return v0
.end method

.method public whitelist getOnPartialImageListener()Landroid/graphics/ImageDecoder$OnPartialImageListener;
    .locals 1

    .line 1530
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    return-object v0
.end method

.method public whitelist getPostProcessor()Landroid/graphics/PostProcessor;
    .locals 1

    .line 1508
    iget-object v0, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    return-object v0
.end method

.method public greylist getRequireUnpremultiplied()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1476
    invoke-virtual {p0}, Landroid/graphics/ImageDecoder;->isUnpremultipliedRequired()Z

    move-result v0

    return v0
.end method

.method public whitelist isDecodeAsAlphaMaskEnabled()Z
    .locals 1

    .line 1733
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    return v0
.end method

.method public whitelist isMutableRequired()Z
    .locals 1

    .line 1615
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    return v0
.end method

.method public whitelist isUnpremultipliedRequired()Z
    .locals 1

    .line 1468
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    return v0
.end method

.method public whitelist setAllocator(I)V
    .locals 3
    .param p1, "allocator"    # I

    .line 1421
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 1424
    iput p1, p0, Landroid/graphics/ImageDecoder;->mAllocator:I

    .line 1425
    return-void

    .line 1422
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid allocator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setAsAlphaMask(Z)Landroid/graphics/ImageDecoder;
    .locals 0
    .param p1, "asAlphaMask"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1720
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setDecodeAsAlphaMask(Z)Landroid/graphics/ImageDecoder;

    .line 1721
    return-object p0
.end method

.method public greylist setConserveMemory(Z)V
    .locals 0
    .param p1, "conserveMemory"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1676
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    .line 1677
    return-void
.end method

.method public whitelist setCrop(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "subset"    # Landroid/graphics/Rect;

    .line 1550
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mCropRect:Landroid/graphics/Rect;

    .line 1551
    return-void
.end method

.method public greylist setDecodeAsAlphaMask(Z)Landroid/graphics/ImageDecoder;
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1711
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setDecodeAsAlphaMaskEnabled(Z)V

    .line 1712
    return-object p0
.end method

.method public whitelist setDecodeAsAlphaMaskEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 1703
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mDecodeAsAlphaMask:Z

    .line 1704
    return-void
.end method

.method public whitelist setMemorySizePolicy(I)V
    .locals 1
    .param p1, "policy"    # I

    .line 1660
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/graphics/ImageDecoder;->mConserveMemory:Z

    .line 1661
    return-void
.end method

.method public greylist setMutable(Z)Landroid/graphics/ImageDecoder;
    .locals 0
    .param p1, "mutable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1607
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setMutableRequired(Z)V

    .line 1608
    return-object p0
.end method

.method public whitelist setMutableRequired(Z)V
    .locals 0
    .param p1, "mutable"    # Z

    .line 1599
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mMutable:Z

    .line 1600
    return-void
.end method

.method public whitelist setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/graphics/ImageDecoder$OnPartialImageListener;

    .line 1522
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mOnPartialImageListener:Landroid/graphics/ImageDecoder$OnPartialImageListener;

    .line 1523
    return-void
.end method

.method public greylist-max-o setOutPaddingRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "outPadding"    # Landroid/graphics/Rect;

    .line 1575
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mOutPaddingRect:Landroid/graphics/Rect;

    .line 1576
    return-void
.end method

.method public whitelist setPostProcessor(Landroid/graphics/PostProcessor;)V
    .locals 0
    .param p1, "postProcessor"    # Landroid/graphics/PostProcessor;

    .line 1500
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mPostProcessor:Landroid/graphics/PostProcessor;

    .line 1501
    return-void
.end method

.method public greylist setRequireUnpremultiplied(Z)Landroid/graphics/ImageDecoder;
    .locals 0
    .param p1, "unpremultipliedRequired"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1460
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setUnpremultipliedRequired(Z)V

    .line 1461
    return-object p0
.end method

.method public greylist setResize(I)Landroid/graphics/ImageDecoder;
    .locals 0
    .param p1, "sampleSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1296
    invoke-virtual {p0, p1}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    .line 1297
    return-object p0
.end method

.method public greylist setResize(II)Landroid/graphics/ImageDecoder;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1257
    invoke-virtual {p0, p1, p2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 1258
    return-object p0
.end method

.method public whitelist setTargetColorSpace(Landroid/graphics/ColorSpace;)V
    .locals 0
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 1780
    iput-object p1, p0, Landroid/graphics/ImageDecoder;->mDesiredColorSpace:Landroid/graphics/ColorSpace;

    .line 1781
    return-void
.end method

.method public whitelist setTargetSampleSize(I)V
    .locals 4
    .param p1, "sampleSize"    # I

    .line 1355
    invoke-direct {p0, p1}, Landroid/graphics/ImageDecoder;->getSampledSize(I)Landroid/util/Size;

    move-result-object v0

    .line 1356
    .local v0, "size":Landroid/util/Size;
    iget v1, p0, Landroid/graphics/ImageDecoder;->mWidth:I

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-direct {p0, v1, p1, v2}, Landroid/graphics/ImageDecoder;->getTargetDimension(III)I

    move-result v1

    .line 1357
    .local v1, "targetWidth":I
    iget v2, p0, Landroid/graphics/ImageDecoder;->mHeight:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, p1, v3}, Landroid/graphics/ImageDecoder;->getTargetDimension(III)I

    move-result v2

    .line 1358
    .local v2, "targetHeight":I
    invoke-virtual {p0, v1, v2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 1359
    return-void
.end method

.method public whitelist setTargetSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1282
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 1287
    iput p1, p0, Landroid/graphics/ImageDecoder;->mDesiredWidth:I

    .line 1288
    iput p2, p0, Landroid/graphics/ImageDecoder;->mDesiredHeight:I

    .line 1289
    return-void

    .line 1283
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dimensions must be positive! provided ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUnpremultipliedRequired(Z)V
    .locals 0
    .param p1, "unpremultipliedRequired"    # Z

    .line 1452
    iput-boolean p1, p0, Landroid/graphics/ImageDecoder;->mUnpremultipliedRequired:Z

    .line 1453
    return-void
.end method
