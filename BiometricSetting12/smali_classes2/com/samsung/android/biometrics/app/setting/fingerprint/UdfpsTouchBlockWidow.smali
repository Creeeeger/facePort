.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;
.super Lcom/samsung/android/biometrics/app/setting/SysUiWindow;
.source "UdfpsTouchBlockWidow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BSS_SysUiWindow.TB"


# instance fields
.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;II)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->mX:I

    iput p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->mY:I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    :try_start_0
    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->mBaseView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->mBaseView:Landroid/view/View;

    sget-object v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow$$ExternalSyntheticLambda0;->INSTANCE:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UdfpsTouchBlockWidow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSS_SysUiWindow.TB"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Touch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_SysUiWindow.TB"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dismiss()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->mBaseView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->removeView()V

    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d9

    const v2, 0x1000128

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    const-string v1, "FP TB"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const v1, 0x20000010

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getInDisplaySensorHelper()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getImageSize()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->mX:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->mY:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "BSS_SysUiWindow.TB"

    return-object v0
.end method

.method public show()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->addView()V

    return-void
.end method
