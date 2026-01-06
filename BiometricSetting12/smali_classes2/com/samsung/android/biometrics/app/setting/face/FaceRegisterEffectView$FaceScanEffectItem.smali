.class Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;
.super Ljava/lang/Object;
.source "FaceRegisterEffectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FaceScanEffectItem"
.end annotation


# instance fields
.field private angle:F

.field private ex:I

.field private sx:I


# direct methods
.method public constructor <init>(Landroid/view/animation/PathInterpolator;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->angle:F

    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    int-to-float v1, p3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->sx:I

    sub-int v1, p3, v0

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->ex:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->ex:I

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->ex:I

    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->sx:I

    const/high16 v0, 0x43870000    # 270.0f

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->angle:F

    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->sx:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->ex:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$FaceScanEffectItem;->angle:F

    return v0
.end method
