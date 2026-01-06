.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;
.super Lcom/samsung/android/biometrics/app/setting/SysUiWindow;
.source "GestureCalibrationWindow.java"


# static fields
.field private static final DISMISS_DELAY_TIME:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "BSS_SysUiWindow.GCW"


# instance fields
.field private final mBackgroundAlpha:I

.field private mDescriptionTxtView:Landroid/widget/TextView;

.field private mIsCalibrationSuccess:Z

.field private final mSwipeDirection:I

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_FP_GESTURE_DIRECTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mSwipeDirection:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mBackgroundAlpha:I

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mBaseView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mBaseView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mBaseView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->setHelpGuideView()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->setEventListener()V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->checkWindowFocus()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->setCloseSystemDialogBroadcast(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BSS_SysUiWindow.GCW"

    const-string v2, "GestureCalibrationWindow: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$setHelpGuideView$2(Landroid/widget/ImageView;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method private setEventListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mBaseView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private setHelpGuideView()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mBaseView:Landroid/view/View;

    const v1, 0x7f0a00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080086

    const v2, 0x7f10009b

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mSwipeDirection:I

    const/16 v4, 0x4e21

    if-ne v3, v4, :cond_0

    const v1, 0x7f080089

    const v2, 0x7f10009c

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow$$ExternalSyntheticLambda1;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mBaseView:Landroid/view/View;

    const v4, 0x7f0a00b4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mDescriptionTxtView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public dismiss()Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mIsCalibrationSuccess:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10009a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->removeView()V

    const/4 v0, 0x1

    return v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    const v6, 0x1080102

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7d8

    const/4 v5, -0x3

    move-object v0, v7

    move v4, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mBackgroundAlpha:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "BSS_SysUiWindow.GCW"

    return-object v0
.end method

.method public handleEvent(IILandroid/os/Bundle;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEvent - cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_SysUiWindow.GCW"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x258

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mDescriptionTxtView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v1, 0x7f100099

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mIsCalibrationSuccess:Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnEvent(II)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$handleEvent$0$GestureCalibrationWindow()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnGestureCalibrationDismissed(I)V

    return-void
.end method

.method public synthetic lambda$setEventListener$1$GestureCalibrationWindow(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mIsCalibrationSuccess:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public show()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->addView()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnEvent(II)V

    return-void
.end method
