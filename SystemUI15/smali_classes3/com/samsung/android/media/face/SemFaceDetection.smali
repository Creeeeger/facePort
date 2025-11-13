.class public Lcom/samsung/android/media/face/SemFaceDetection;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mFdPointer:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "FacePreProcessing_jni.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    const/4 p0, 0x0

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p0

    return-void
.end method

.method private static native detectionCreateSupportMultiInstance([JLcom/samsung/android/media/face/SemFaceDetection$Settings;)I
.end method

.method private static native detectionDestroySupportMultiInstance([J)I
.end method

.method private static native detectionFindFaceOnBitmapSupportMultiInstance([JLandroid/graphics/Bitmap;)I
.end method

.method private static native detectionGetFacePoseSupportMultiInstance([JI)I
.end method

.method private static native detectionGetFaceRectSupportMultiInstance([JI)Landroid/graphics/Rect;
.end method


# virtual methods
.method public final init()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const-string v1, "SemFaceDetection"

    const-string v2, "function release() is processed before the second function call for init()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/media/face/SemFaceDetection;->release()V

    :cond_0
    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionCreateSupportMultiInstance([JLcom/samsung/android/media/face/SemFaceDetection$Settings;)I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Improperly instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final release()V
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string p0, "SemFaceDetection"

    const-string v0, "The function init() is not yet called"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionDestroySupportMultiInstance([J)I

    aput-wide v3, p0, v0

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Improperly instantiated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final run(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)I
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/media/face/SemFaceDetection;->mFdPointer:[J

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-static {p0, p1}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionFindFaceOnBitmapSupportMultiInstance([JLandroid/graphics/Bitmap;)I

    move-result p1

    if-lez p1, :cond_0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-static {p0, v0}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionGetFaceRectSupportMultiInstance([JI)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/samsung/android/media/face/SemFaceDetection;->detectionGetFacePoseSupportMultiInstance([JI)I

    move-result v2

    new-instance v3, Lcom/samsung/android/media/face/SemFace;

    invoke-direct {v3, v1, v2}, Lcom/samsung/android/media/face/SemFace;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid dimension of image ["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image data is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The function init() is not yet called"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Improperly instantiated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
