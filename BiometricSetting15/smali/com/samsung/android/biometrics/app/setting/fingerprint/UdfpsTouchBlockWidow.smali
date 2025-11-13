.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;
.super Lcom/samsung/android/biometrics/app/setting/SysUiWindow;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

.field public final mX:I

.field public final mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 5
    .line 6
    iput p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->mX:I

    .line 7
    .line 8
    iput p4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->mY:I

    .line 9
    .line 10
    :try_start_0
    new-instance p2, Landroid/view/View;

    .line 11
    .line 12
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 16
    .line 17
    new-instance p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p2, "UdfpsTouchBlockWidow: "

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p2, "BSS_SysUiWindow.TB"

    .line 35
    .line 36
    invoke-static {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method


# virtual methods
.method public final getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    const v1, 0x1000128

    .line 4
    .line 5
    .line 6
    const/4 v2, -0x3

    .line 7
    const/16 v3, 0x7d9

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 10
    .line 11
    .line 12
    const-string v1, "FP TB"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x33

    .line 22
    .line 23
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 27
    .line 28
    const v1, 0x20000010

    .line 29
    .line 30
    .line 31
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 34
    .line 35
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorImageSize:I

    .line 36
    .line 37
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 38
    .line 39
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 40
    .line 41
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->mX:I

    .line 42
    .line 43
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 44
    .line 45
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->mY:I

    .line 46
    .line 47
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 48
    .line 49
    return-object v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "BSS_SysUiWindow.TB"

    .line 2
    .line 3
    return-object p0
.end method

.method public final removeView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->removeView()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
