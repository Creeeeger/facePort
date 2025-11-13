.class public final synthetic Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mUdfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mUdfpsEnrollView:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    invoke-virtual {v3}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->getOverlayParams()Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p2, v3}, Lcom/android/systemui/biometrics/UdfpsUtils;->getPortraitTouch(ILandroid/view/MotionEvent;Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;)Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v3, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->scaleFactor:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mUdfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mUdfpsEnrollView:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    invoke-virtual {v4}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->getOverlayParams()Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p2, v4}, Lcom/android/systemui/biometrics/UdfpsUtils;->getPortraitTouch(ILandroid/view/MotionEvent;Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;)Landroid/graphics/Point;

    move-result-object p2

    iget-object v2, v4, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mUdfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mContext:Landroid/content/Context;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mUdfpsEnrollView:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->getOverlayParams()Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v4, v0, p0}, Lcom/android/systemui/biometrics/UdfpsUtils;->onTouchOutsideOfSensorArea(ZLandroid/content/Context;IILcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return v1
.end method
