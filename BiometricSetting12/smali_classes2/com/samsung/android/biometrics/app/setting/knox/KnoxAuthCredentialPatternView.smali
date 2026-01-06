.class public Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;
.super Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;
.source "KnoxAuthCredentialPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;
    }
.end annotation


# instance fields
.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;)Lcom/android/internal/widget/LockPatternView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->onAttachedToWindow()V

    const v0, 0x7f0a00ee

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$UnlockPatternListener;-><init>(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->setOrientation(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->setOrientation(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mContext:Landroid/content/Context;

    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const v2, -0xbbbbbc

    const/high16 v3, -0x10000

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->setColors(III)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getKnoxSysUiClientHelper()Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-interface {v0, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;->onAttachedPatternViewToWindow(Lcom/android/internal/widget/LockPatternView;)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->setOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->setOrientation(I)V

    :goto_0
    return-void
.end method

.method protected onErrorTimeoutFinish()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;->onErrorTimeoutFinish()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getKnoxSysUiClientHelper()Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mCredentialType:I

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;->onErrorTimeoutFinish(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;ILandroid/view/View;)V

    :cond_0
    return-void
.end method
