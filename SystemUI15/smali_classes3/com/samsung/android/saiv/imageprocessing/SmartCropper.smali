.class public Lcom/samsung/android/saiv/imageprocessing/SmartCropper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBDPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "smart_cropping.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3f

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->init(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3f

    invoke-static {v0, p1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->init(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    return-void
.end method

.method public static native findObjectRect(J[I)I
.end method

.method public static native init(II)J
.end method

.method public static native release(J)V
.end method

.method public static native releaseOneImage(J)I
.end method

.method public static native setImageIntBuf(J[IIII)J
.end method


# virtual methods
.method public final finalize()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->release(J)V

    iput-wide v2, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final findObjectRect()Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    iget-wide v2, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    invoke-static {v2, v3, v1}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->findObjectRect(J[I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    aget p0, v1, p0

    iput p0, v0, Landroid/graphics/Rect;->left:I

    const/4 p0, 0x1

    aget p0, v1, p0

    iput p0, v0, Landroid/graphics/Rect;->top:I

    const/4 p0, 0x2

    aget p0, v1, p0

    iput p0, v0, Landroid/graphics/Rect;->right:I

    const/4 p0, 0x3

    aget p0, v1, p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-object v0
.end method

.method public final setImage(II[I)Z
    .locals 8

    const-string v0, "SCE_v2.0"

    const-string v1, "This is SCE v2.02"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->mBDPtr:J

    const/16 v7, 0x1000

    move-object v4, p3

    move v5, p1

    move v6, p2

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->setImageIntBuf(J[IIII)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p0, p2, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
