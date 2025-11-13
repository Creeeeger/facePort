.class public Lcom/samsung/android/settings/knox/securefolder/ResetPasswordButtonController;
.super Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;
.source "ResetPasswordButtonController.java"


# instance fields
.field private final mIsResetEnabled:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 21
    new-instance p3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/knox/securefolder/ResetPasswordButtonController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 22
    invoke-static {p1, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/securefolder/ResetPasswordButtonController;->mIsResetEnabled:Z

    return-void
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/securefolder/ResetPasswordButtonController;->mIsResetEnabled:Z

    if-nez v1, :cond_1

    const/16 p0, 0x8

    .line 31
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/securefolder/ResetPasswordButtonController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 35
    iget-object p0, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 38
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public updateLayout()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/settings/knox/securefolder/ResetPasswordButtonController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_3

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x70000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x80000

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->forgot_password:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->forgot_pin:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/securefolder/KnoxLockScreenButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->forgot_pattern:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
