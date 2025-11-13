.class public final Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$2;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    iget p0, p1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mScaleY:F

    const p1, 0x43f9ffff    # 499.99997f

    mul-float/2addr p0, p1

    return p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    const p0, 0x3b03126f    # 0.002f

    mul-float/2addr p2, p0

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleY(F)V

    return-void
.end method
