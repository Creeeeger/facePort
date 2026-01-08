.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;
.super Lcom/samsung/android/biometrics/app/setting/FocusableWindow;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final mBackgroundAlpha:I

.field public final mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient;

.field public mDescriptionTxtView:Landroid/widget/TextView;

.field public mIsCalibrationSuccess:Z

.field public final mSwipeDirection:I

.field public final mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient;

    .line 5
    .line 6
    new-instance p2, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mUIHandler:Landroid/os/Handler;

    .line 16
    .line 17
    iput p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mSwipeDirection:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const p3, 0x7f0b0007

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mBackgroundAlpha:I

    .line 31
    .line 32
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const p2, 0x7f0d0031

    .line 37
    .line 38
    .line 39
    const/4 p3, 0x0

    .line 40
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 45
    .line 46
    const/4 p2, 0x1

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->setHelpGuideView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    const-string p1, "BSS_SysUiWindow.GCW"

    .line 66
    .line 67
    const-string p2, "GestureCalibrationWindow: "

    .line 68
    .line 69
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method


# virtual methods
.method public final getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 1
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    const/16 v3, 0x7d8

    .line 4
    .line 5
    const/4 v5, -0x3

    .line 6
    const/4 v1, -0x1

    .line 7
    const/4 v2, -0x1

    .line 8
    const v4, 0x1080102

    .line 9
    .line 10
    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 17
    .line 18
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 19
    .line 20
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mBackgroundAlpha:I

    .line 21
    .line 22
    int-to-float p0, p0

    .line 23
    const/high16 v0, 0x42c80000    # 100.0f

    .line 24
    .line 25
    div-float/2addr p0, v0

    .line 26
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 27
    .line 28
    iget p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 29
    .line 30
    or-int/lit8 p0, p0, 0x10

    .line 31
    .line 32
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 33
    .line 34
    return-object v6
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "BSS_SysUiWindow.GCW"

    .line 2
    .line 3
    return-object p0
.end method

.method public final onAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->onAttachedToWindow(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendEvent(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onFocusLost()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendDismissedEvent(I[B)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->stop()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mIsCalibrationSuccess:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    const/4 p2, 0x2

    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendDismissedEvent(I[B)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->stop()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public final onSystemDialogClosed()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpGestureCalibrationClient;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendDismissedEvent(I[B)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->stop()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final removeView()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mIsCalibrationSuccess:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const v1, 0x7f1000d0

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mUIHandler:Landroid/os/Handler;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow;->removeView()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final setHelpGuideView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f0a00e2

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ImageView;

    .line 11
    .line 12
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mSwipeDirection:I

    .line 13
    .line 14
    const/16 v2, 0x4e21

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    const v1, 0x7f080076

    .line 19
    .line 20
    .line 21
    const v2, 0x7f1000d2

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const v1, 0x7f080073

    .line 26
    .line 27
    .line 28
    const v2, 0x7f1000d1

    .line 29
    .line 30
    .line 31
    :goto_0
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImageView;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 51
    .line 52
    const v1, 0x7f0a00df

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method
