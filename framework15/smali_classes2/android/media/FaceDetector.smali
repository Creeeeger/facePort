.class public Landroid/media/FaceDetector;
.super Ljava/lang/Object;
.source "FaceDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/FaceDetector$Face;
    }
.end annotation


# static fields
.field private static greylist-max-o sInitialized:Z


# instance fields
.field private greylist-max-o mBWBuffer:[B

.field private greylist-max-o mDCR:J

.field private greylist-max-o mFD:J

.field private greylist-max-o mHeight:I

.field private greylist-max-o mMaxFaces:I

.field private greylist-max-o mSDK:J

.field private greylist-max-o mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const-string v0, "FFTEm"

    const/4 v1, 0x0

    sput-boolean v1, Landroid/media/FaceDetector;->sInitialized:Z

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/FaceDetector;->nativeClassInit()V

    const/4 v1, 0x1

    sput-boolean v1, Landroid/media/FaceDetector;->sInitialized:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "face detection library not found!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Landroid/media/FaceDetector;->sInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/FaceDetector;->fft_initialize(III)I

    iput p1, p0, Landroid/media/FaceDetector;->mWidth:I

    iput p2, p0, Landroid/media/FaceDetector;->mHeight:I

    iput p3, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    mul-int v0, p1, p2

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/FaceDetector;->mBWBuffer:[B

    return-void
.end method

.method private native greylist-max-o fft_destroy()V
.end method

.method private native greylist-max-o fft_detect(Landroid/graphics/Bitmap;)I
.end method

.method private native greylist-max-o fft_get_face(Landroid/media/FaceDetector$Face;I)V
.end method

.method private native greylist-max-o fft_initialize(III)I
.end method

.method private static native greylist-max-o nativeClassInit()V
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/FaceDetector;->fft_destroy()V

    return-void
.end method

.method public whitelist findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I
    .locals 4

    sget-boolean v0, Landroid/media/FaceDetector;->sInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/media/FaceDetector;->mWidth:I

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/media/FaceDetector;->mHeight:I

    if-ne v0, v1, :cond_5

    array-length v0, p2

    iget v1, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    if-lt v0, v1, :cond_4

    invoke-direct {p0, p1}, Landroid/media/FaceDetector;->fft_detect(Landroid/graphics/Bitmap;)I

    move-result v0

    iget v1, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/media/FaceDetector;->mMaxFaces:I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    if-nez v2, :cond_2

    new-instance v2, Landroid/media/FaceDetector$Face;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/media/FaceDetector$Face;-><init>(Landroid/media/FaceDetector;Landroid/media/FaceDetector$Face-IA;)V

    aput-object v2, p2, v1

    :cond_2
    aget-object v2, p2, v1

    invoke-direct {p0, v2, v1}, Landroid/media/FaceDetector;->fft_get_face(Landroid/media/FaceDetector$Face;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "faces[] smaller than maxFaces"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap size doesn\'t match initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
