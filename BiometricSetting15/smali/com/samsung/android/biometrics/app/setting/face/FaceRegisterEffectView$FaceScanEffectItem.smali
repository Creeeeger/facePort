.class public final Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final angle:F

.field public final ex:I

.field public final sx:I


# direct methods
.method public constructor <init>(Landroid/view/animation/PathInterpolator;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x42b40000    # 90.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->angle:F

    .line 7
    .line 8
    int-to-float p2, p2

    .line 9
    int-to-float v0, p3

    .line 10
    div-float/2addr p2, v0

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    mul-float/2addr p1, v0

    .line 16
    float-to-int p1, p1

    .line 17
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->sx:I

    .line 18
    .line 19
    sub-int/2addr p3, p1

    .line 20
    iput p3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->ex:I

    .line 21
    .line 22
    if-le p1, p3, :cond_0

    .line 23
    .line 24
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->ex:I

    .line 25
    .line 26
    iput p3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->sx:I

    .line 27
    .line 28
    const/high16 p1, 0x43870000    # 270.0f

    .line 29
    .line 30
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->angle:F

    .line 31
    .line 32
    :cond_0
    return-void
.end method
