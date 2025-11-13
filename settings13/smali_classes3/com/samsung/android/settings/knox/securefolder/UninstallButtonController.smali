.class public Lcom/samsung/android/settings/knox/securefolder/UninstallButtonController;
.super Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;
.source "UninstallButtonController.java"


# instance fields
.field private final mIsResetEnabled:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 17
    new-instance p3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/knox/securefolder/UninstallButtonController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 18
    invoke-static {p1, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/securefolder/UninstallButtonController;->mIsResetEnabled:Z

    return-void
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/securefolder/UninstallButtonController;->mIsResetEnabled:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/securefolder/UninstallButtonController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 31
    iget-object p0, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/knox/securefolder/UninstallButtonController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 35
    iget-object p0, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 38
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
