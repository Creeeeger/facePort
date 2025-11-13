.class public Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;
.super Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mClearPatternRunnable:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView$1;

.field public mLockPatternLayout:Landroid/widget/FrameLayout;

.field public mLockPatternView:Lcom/android/internal/widget/LockPatternView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView$1;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mClearPatternRunnable:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView$1;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public enterAlertMode(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "enterAlertMode: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "BSS_AuthCredentialPatternView"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->enterAlertMode(I)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public exitAlertMode()V
    .locals 2

    .line 1
    const-string v0, "BSS_AuthCredentialPatternView"

    .line 2
    .line 3
    const-string v1, "exitAlertMode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->exitAlertMode()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mBtnCancel:Landroid/widget/Button;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->disableButton(Landroid/widget/Button;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mBtnContinue:Landroid/widget/Button;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->disableButton(Landroid/widget/Button;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public hidePattern()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a012f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 14
    .line 15
    const v0, 0x7f0a0125

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/FrameLayout;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternLayout:Landroid/widget/FrameLayout;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setFadePattern(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getEffectiveUserId()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    xor-int/2addr v1, v2

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 56
    .line 57
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    const v2, 0x7f060031

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    const v3, 0x7f060023

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    const v4, 0x7f060022

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->setColors(III)V

    .line 85
    .line 86
    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->updateScrollView()V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "BSS_AuthCredentialPatternView"

    .line 5
    .line 6
    const-string v0, "onConfigurationChanged"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->resizePattern()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->updateScrollView()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onLockoutTimeoutFinish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->onLockoutTimeoutFinish()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onLockoutTimeoutStart()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->hidePattern()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onPatternCellAdded(Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPatternCleared()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mClearPatternRunnable:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView$1;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onPatternDetected(Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    if-eqz p1, :cond_2

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getEffectiveUserId()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;)V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-static {v0, p1, v1, v3, v2}, Lcom/android/internal/widget/LockPatternChecker;->verifyCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mPendingLockCheck:Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    :try_start_1
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_1
    move-exception p1

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    throw p0

    .line 51
    :cond_2
    :goto_1
    return-void
.end method

.method public final onPatternStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mClearPatternRunnable:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView$1;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public resizePattern()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternLayout:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->isScreenLandscape()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 19
    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    .line 22
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, -0x2

    .line 26
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 27
    .line 28
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternLayout:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public setPatternViewVisibility(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final updateScrollView()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->getScrollView()Landroid/widget/ScrollView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->isScreenLandscape()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-wide v3, 0x407f400000000000L    # 500.0

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-static {v2, v3, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    const-wide v3, 0x406f400000000000L    # 250.0

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :goto_1
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->updateScrollViewDivider()V

    .line 49
    .line 50
    .line 51
    return-void
.end method
