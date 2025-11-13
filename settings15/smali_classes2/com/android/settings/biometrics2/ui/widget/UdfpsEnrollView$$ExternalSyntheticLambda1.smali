.class public final synthetic Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .locals 10

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    const-string v1, "UdfpsEnrollView"

    if-nez v0, :cond_0

    const-string p0, "There is no sensor info!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "Can not get display"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation()Landroid/hardware/biometrics/SensorLocationInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/biometrics/SensorLocationInternal;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mUdfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/biometrics/UdfpsUtils;->getScaleFactor(Landroid/view/DisplayInfo;)F

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->scale(F)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v1, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v6

    iget v8, v0, Landroid/view/DisplayInfo;->rotation:I

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v9, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IIFII)V

    iput-object v1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    new-instance v0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
