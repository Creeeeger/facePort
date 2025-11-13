.class public final Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mPunchCutView:Landroid/view/View;

.field public mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field public mWindowManager:Landroid/view/WindowManager;


# virtual methods
.method public final pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchCutView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final play()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v2, "any_screen_running"

    .line 13
    .line 14
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->pause()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string v0, "BSS_Utils"

    .line 26
    .line 27
    const-string v2, "isOneHandedModeActive : context = null"

    .line 28
    .line 29
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchCutView:Landroid/view/View;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIView;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method
