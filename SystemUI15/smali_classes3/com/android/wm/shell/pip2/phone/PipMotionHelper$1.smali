.class public final Lcom/android/wm/shell/pip2/phone/PipMotionHelper$1;
.super Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip2/phone/PipMotionHelper;Landroid/content/Context;Landroid/graphics/Rect;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    return-void
.end method


# virtual methods
.method public final getHeight(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public final getLocationOnScreen(Ljava/lang/Object;[I)V
    .locals 1

    check-cast p1, Landroid/graphics/Rect;

    iget p0, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    aput p0, p2, v0

    const/4 p0, 0x1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    aput p1, p2, p0

    return-void
.end method

.method public final getWidth(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method
