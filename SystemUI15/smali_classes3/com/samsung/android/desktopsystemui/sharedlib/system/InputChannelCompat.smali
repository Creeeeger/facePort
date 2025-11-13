.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/InputChannelCompat;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRotationMatrix(III)Landroid/graphics/Matrix;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/MotionEvent;->createRotateMatrix(III)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static mergeMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->addBatch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
