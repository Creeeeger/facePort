.class public Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;
.super Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;
.source "AuthCredentialPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$UnlockPatternListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BSS_AuthCredentialPatternView"

.field private static final WRONG_PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0


# instance fields
.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnContinue:Landroid/widget/Button;

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mLockPatternLayout:Landroid/widget/FrameLayout;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$OcWBYnMi_xZmnuNPS-t9l2iAHyY(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->onPatternVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$1;-><init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)Lcom/android/internal/widget/LockPatternView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mBtnContinue:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mPattern:Ljava/util/List;

    return-object p1
.end method

.method private checkPatterAndUnlock()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mPattern:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v2

    const/4 v3, 0x1

    new-instance v4, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternChecker;->verifyCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method private onPatternVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    const-string v0, "BSS_AuthCredentialPatternView"

    const-string v1, "onPatternVerified"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mBtnContinue:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mBtnContinue:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private setLockPatternView()V
    .locals 5

    const v0, 0x7f0a00ee

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const v0, 0x7f0a00e6

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$UnlockPatternListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$UnlockPatternListener;-><init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setFadePattern(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mContext:Landroid/content/Context;

    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mContext:Landroid/content/Context;

    const v3, 0x7f060023

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mContext:Landroid/content/Context;

    const v4, 0x7f060022

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->setColors(III)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onAttachedToWindow$0$AuthCredentialPatternView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a005a

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/16 v1, 0x3eb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnEvent(II)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a005b

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->checkPatterAndUnlock()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->onAttachedToWindow()V

    const-string v0, "BSS_AuthCredentialPatternView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a005a

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mBtnCancel:Landroid/widget/Button;

    const v0, 0x7f0a005b

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mBtnContinue:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mBtnCancel:Landroid/widget/Button;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mBtnContinue:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->setLockPatternView()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "BSS_AuthCredentialPatternView"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const/4 v2, -0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mBtnContinue:Landroid/widget/Button;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method protected onErrorTimeoutFinish()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialView;->onErrorTimeoutFinish()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    return-void
.end method
