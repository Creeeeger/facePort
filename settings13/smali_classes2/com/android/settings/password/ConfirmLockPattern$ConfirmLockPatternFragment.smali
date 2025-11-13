.class public Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;
.implements Lcom/android/settings/password/CredentialCheckResultTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;",
        "Lcom/android/settingslib/animation/AppearAnimationCreator<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/android/settings/password/CredentialCheckResultTracker$Listener;"
    }
.end annotation


# instance fields
.field private mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mBackUpPinButton:Landroid/widget/Button;

.field private mBackupPinButtonClickListner:Landroid/view/View$OnClickListener;

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

.field private mDetailsText:Ljava/lang/CharSequence;

.field private mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mDisappearing:Z

.field private mExternal:Z

.field private mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mIsManagedProfile:Z

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mPattern:Lcom/android/internal/widget/LockscreenCredential;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private mTopLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

.field private mTwoFactorBiometricConfirmed:Z

.field private mUiStage:Lcom/android/settings/password/ConfirmLockPattern$Stage;

.field private mWaitingForTwoFactorConfirmation:Z


# direct methods
.method public static synthetic $r8$lambda$59yb9CVg3VeIvHChnm9qIRODS24(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->lambda$getDefaultDetails$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NaYazYAwTbLC7tpQALXlVA7KIPQ(Lcom/android/settings/password/ConfirmLockPattern;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->lambda$startDisappearAnimation$4(Lcom/android/settings/password/ConfirmLockPattern;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S4OdZkek0tH4whm8YgY7mQPuYog(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->lambda$onCreateView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$imzhugpL3aMTD6M31hhgZ6CLRrc(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->lambda$getDefaultDetails$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClearPatternRunnable(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCredentialCheckResultTracker(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisappearing(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGlifLayout(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/password/SecGlifLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockPatternView(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingLockCheck(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingForTwoFactorConfirmation(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mWaitingForTwoFactorConfirmation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPattern(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/internal/widget/LockscreenCredential;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPattern:Lcom/android/internal/widget/LockscreenCredential;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingLockCheck(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method static bridge synthetic -$$Nest$monPatternChecked(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;ZLandroid/content/Intent;IIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->onPatternChecked(ZLandroid/content/Intent;IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStage(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings/password/ConfirmLockPattern$Stage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 222
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    .line 194
    sget-object v1, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    iput-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUiStage:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    .line 197
    new-instance v1, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$1;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackupPinButtonClickListner:Landroid/view/View$OnClickListener;

    .line 217
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mTwoFactorBiometricConfirmed:Z

    .line 218
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mWaitingForTwoFactorConfirmation:Z

    .line 730
    new-instance v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 786
    new-instance v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method private getActiveViews()[[Ljava/lang/Object;
    .locals 7

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 606
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v2}, Lcom/android/settings/password/SecGlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    .line 608
    invoke-virtual {v2}, Lcom/android/settings/password/SecGlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 607
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 610
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mForgotButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 613
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mForgotButton:Landroid/widget/Button;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_1
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 616
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 617
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    .line 618
    :goto_1
    aget-object v5, p0, v2

    array-length v6, v5

    if-ge v4, v6, :cond_2

    .line 619
    aget-object v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 621
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 623
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    aget-object p0, p0, v1

    array-length p0, p0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput p0, v3, v4

    aput v2, v3, v1

    const-class p0, Ljava/lang/Object;

    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/Object;

    move v2, v1

    .line 624
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 625
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move v4, v1

    .line 626
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 627
    aget-object v5, p0, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-object p0
.end method

.method private getDefaultDetails()Ljava/lang/String;
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->getDefaultDetails()I

    move-result v0

    if-lez v0, :cond_0

    .line 569
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 571
    :cond_0
    iget v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v0}, Lcom/android/settings/password/SecGlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 574
    sget v0, Lcom/android/settings/R$string;->sec_knox_lockpassword_strong_auth_required_work_pattern:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 577
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-eqz v0, :cond_2

    .line 578
    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_pattern_details_frp:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 580
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isStrongAuthRequired()Z

    move-result v0

    .line 581
    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsManagedProfile:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 583
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    const-string p0, "Settings.WORK_PROFILE_PATTERN_REQUIRED"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 588
    :cond_3
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    const-string p0, "Settings.WORK_PROFILE_CONFIRM_PATTERN"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 595
    :cond_4
    sget v0, Lcom/android/settings/R$string;->lockpattern_need_to_unlock:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    .line 1012
    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    .line 1013
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1014
    new-instance v8, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    sub-long v4, p1, v0

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V

    .line 1045
    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private synthetic lambda$getDefaultDetails$1()Ljava/lang/String;
    .locals 1

    .line 585
    sget v0, Lcom/android/settings/R$string;->lockpassword_strong_auth_required_work_pattern:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDefaultDetails$2()Ljava/lang/String;
    .locals 1

    .line 590
    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_pattern_generic_profile:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onCreateView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$startDisappearAnimation$4(Lcom/android/settings/password/ConfirmLockPattern;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    .line 770
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 771
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    .line 772
    sget p1, Lcom/android/settings/R$anim;->confirm_credential_close_enter:I

    sget v0, Lcom/android/settings/R$anim;->confirm_credential_close_exit:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private onPatternChecked(ZLandroid/content/Intent;IIZ)V
    .locals 2

    .line 909
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    if-eqz p1, :cond_4

    if-eqz p5, :cond_0

    .line 913
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {p1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->reportSuccessfulAttempt()V

    .line 915
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget-object p4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget p5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-static {p1, p3, p4, p5, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->reportSuccessfulAttempt(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;IZ)V

    .line 922
    :cond_0
    :try_start_0
    iget-boolean p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUnlockRecovery:Z

    if-eqz p1, :cond_1

    .line 923
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    iget-object p4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p4}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result p4

    invoke-static {p1, p3, p4}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isFmmUnlockAllowed(Landroid/content/Context;IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 924
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPattern:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFmmService(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 925
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 928
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 933
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_3

    const/4 p3, 0x4

    if-eq p1, p3, :cond_3

    const/4 p3, 0x5

    if-eq p1, p3, :cond_3

    const/4 p3, 0x6

    if-ne p1, p3, :cond_2

    goto :goto_1

    .line 943
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 944
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->checkForPendingIntent(Landroid/app/Activity;)V

    goto :goto_3

    .line 940
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->checkForPendingIntent(Landroid/app/Activity;)V

    .line 941
    invoke-direct {p0, p2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    goto :goto_3

    :cond_4
    if-lez p3, :cond_5

    .line 954
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {p1, p3}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->setBiometricLockoutDeadline(I)V

    .line 956
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->refreshLockScreen()V

    .line 957
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p1

    .line 959
    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    goto :goto_2

    .line 961
    :cond_5
    sget-object p1, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    .line 962
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    :goto_2
    if-eqz p5, :cond_6

    .line 965
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->reportFailedAttempt()V

    :cond_6
    :goto_3
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 3

    .line 739
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 740
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 4

    .line 756
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 759
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    .line 761
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ConfirmLockPattern;

    if-eqz v0, :cond_3

    .line 763
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 766
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getConfirmCredentialTheme()Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    move-result-object v1

    sget-object v2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v1, v2, :cond_2

    .line 767
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 768
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActiveViews()[[Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/password/ConfirmLockPattern;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    .line 777
    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 778
    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V
    .locals 6

    .line 644
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUiStage:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    .line 646
    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$1;->$SwitchMap$com$android$settings$password$ConfirmLockPattern$Stage:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto/16 :goto_2

    .line 703
    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 705
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 708
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto/16 :goto_2

    .line 682
    :cond_1
    sget p1, Lcom/android/settings/R$string;->sec_lockpassword_need_to_unlock_wrong:I

    .line 684
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->getErrorMessage(I)I

    move-result p1

    .line 686
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v0, p1}, Lcom/android/settings/password/SecGlifLayout;->setDescriptionText(I)V

    .line 687
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    .line 688
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {p1}, Lcom/android/settings/password/SecGlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v0}, Lcom/android/settings/password/SecGlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 694
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 695
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 696
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 698
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v1}, Lcom/android/settings/password/SecGlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v2}, Lcom/android/settings/password/SecGlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->updateStageNeedToUnlockWrong(Lcom/android/internal/widget/LockPatternView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_2

    .line 648
    :cond_2
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    .line 649
    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v3, p1}, Lcom/android/settings/password/SecGlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 651
    :cond_3
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    sget v3, Lcom/android/settings/R$string;->sec_lockpassword_confirm_your_pattern_header:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/password/SecGlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 653
    :goto_0
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_4

    .line 654
    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v3, p1}, Lcom/android/settings/password/SecGlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 656
    :cond_4
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getDefaultDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/settings/password/SecGlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    .line 658
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v3}, Lcom/android/settings/password/SecGlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->needToUpdateErrorMessage(Landroid/widget/TextView;I)V

    .line 664
    :goto_1
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 665
    invoke-virtual {p1, v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result p1

    .line 664
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->updateErrorMessage(I)V

    .line 668
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 669
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 673
    :cond_5
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 674
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 675
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 677
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v1}, Lcom/android/settings/password/SecGlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v2}, Lcom/android/settings/password/SecGlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->updateStageNeedToUnlock(Lcom/android/internal/widget/LockPatternView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 714
    :goto_2
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {p1}, Lcom/android/settings/password/SecGlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {p0}, Lcom/android/settings/password/SecGlifLayout;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected authenticationSucceeded()V
    .locals 5

    .line 746
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    .line 747
    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->interceptAuthenticationSucceededIfNeeded(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ConfirmLockPatternFragment"

    const-string v0, "interceptAuthenticationSucceededIfNeeded"

    .line 748
    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method

.method public createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1053
    instance-of v2, v1, Lcom/android/internal/widget/LockPatternView$CellState;

    if-eqz v2, :cond_4

    .line 1054
    move-object v4, v1

    check-cast v4, Lcom/android/internal/widget/LockPatternView$CellState;

    .line 1055
    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p7, :cond_0

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    if-eqz p7, :cond_1

    move/from16 v7, p6

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    if-eqz p7, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    move/from16 v8, p6

    :goto_2
    if-eqz p7, :cond_3

    move v9, v1

    goto :goto_3

    :cond_3
    move v9, v0

    :goto_3
    const/high16 v10, 0x3f800000    # 1.0f

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v3 .. v16}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_4

    .line 1062
    :cond_4
    iget-object v0, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    check-cast v1, Landroid/view/View;

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :goto_4
    return-void
.end method

.method public disableConfirmCredentialCallback()V
    .locals 1

    .line 1098
    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method public enableConfirmCredentialCallback()V
    .locals 4

    const/4 v0, 0x1

    .line 1086
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mTwoFactorBiometricConfirmed:Z

    const/4 v0, 0x0

    .line 1087
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mWaitingForTwoFactorConfirmation:Z

    .line 1089
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1091
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->refreshLockScreen()V

    .line 1092
    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    :cond_0
    return-void
.end method

.method protected getLastTryDefaultErrorMessage(I)I
    .locals 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    .line 1002
    sget p0, Lcom/android/settings/R$string;->sec_lock_last_attempt_before_wipe_user:I

    return p0

    .line 1007
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized user type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 996
    :cond_1
    sget p0, Lcom/android/settings/R$string;->sec_lock_last_attempt_before_wipe_profile:I

    return p0

    .line 990
    :cond_2
    sget p0, Lcom/android/settings/R$string;->sec_lock_last_attempt_before_wipe_device:I

    return p0
.end method

.method protected getLastTryOverrideErrorMessageId(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const-string p0, "Settings.WORK_PROFILE_LAST_PATTERN_ATTEMPT_BEFORE_WIPE"

    return-object p0

    :cond_0
    const-string p0, "UNDEFINED"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1f

    return p0
.end method

.method public interceptOnKeyDownIfNeeded(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 518
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isDevicePasswordAdminEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 519
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-static {p1, p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public interceptOnOptionsItemSelectedIfNeeded(Landroid/view/MenuItem;)Z
    .locals 0

    .line 527
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isDevicePasswordAdminEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 528
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-static {p1, p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 229
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "unlock_recovery"

    const/4 v2, 0x0

    .line 232
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUnlockRecovery:Z

    const-string v1, "com.android.settings.ConfirmCredentials.showWhenLocked"

    .line 233
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mExternal:Z

    .line 237
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 246
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/password/ConfirmLockPattern;

    .line 249
    iget-boolean v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 250
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    sget v7, Lcom/android/settings/R$id;->content_parent:I

    invoke-virtual {v4, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 252
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 254
    :cond_0
    sget v4, Lcom/android/settings/R$layout;->sec_setup_confirm_lock_pattern:I

    invoke-virtual {v1, v4, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 257
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 258
    sget v4, Lcom/android/settings/R$layout;->sec_confirm_lock_pattern_tablet:I

    goto :goto_0

    .line 259
    :cond_2
    sget v4, Lcom/android/settings/R$layout;->sec_confirm_lock_pattern:I

    .line 256
    :goto_0
    invoke-virtual {v1, v4, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 264
    :goto_1
    iget-object v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v4, v1, v2, v7}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->switchViewIfNeeded(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 276
    new-instance v2, Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v7, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    invoke-direct {v2, v4, v1, v7}, Lcom/android/settings/password/SecGlifLayout;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    .line 281
    sget v2, Lcom/android/settings/R$id;->lockPattern:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView;

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 284
    sget v2, Lcom/android/settings/R$id;->backupPin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackUpPinButton:Landroid/widget/Button;

    .line 285
    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackupPinButtonClickListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    sget v2, Lcom/android/settings/R$id;->topLayout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mTopLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 287
    iget-boolean v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    .line 289
    invoke-virtual {v2, v6, v6, v6, v6}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setPadding(IIII)V

    .line 296
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsManagedProfile:Z

    .line 299
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mTopLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    if-eqz v2, :cond_4

    .line 300
    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 302
    :cond_4
    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsManagedProfile:Z

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mExternal:Z

    if-eqz v2, :cond_5

    .line 303
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v2}, Lcom/android/settings/password/SecGlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v2, v6}, Lcom/android/settings/password/SecGlifLayout;->setIconVisibility(I)V

    .line 325
    :cond_5
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsManagedProfile:Z

    if-eqz v2, :cond_6

    .line 326
    iget-object v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    .line 329
    :cond_6
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v4

    xor-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 331
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 332
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v4, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 338
    sget-object v2, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-direct {v0, v2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    if-nez v3, :cond_7

    .line 350
    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 351
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 355
    :cond_7
    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern$Stage;->values()[Lcom/android/settings/password/ConfirmLockPattern$Stage;

    move-result-object v2

    const-string/jumbo v4, "uiStage"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    aget-object v2, v2, v4

    invoke-direct {v0, v2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    .line 356
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackUpPinButton:Landroid/widget/Button;

    const-string v4, "backup_pin_btn_visibility"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 359
    :cond_8
    :goto_2
    new-instance v2, Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-wide/16 v9, 0xdc

    const/high16 v11, 0x40000000    # 2.0f

    const v12, 0x3fa66666    # 1.3f

    .line 362
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10c000e

    .line 361
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v13

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 363
    new-instance v2, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v15

    const-wide/16 v16, 0x7d

    const/high16 v18, 0x40800000    # 4.0f

    const v19, 0x3e99999a    # 0.3f

    .line 366
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10c000f

    .line 365
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v20

    new-instance v3, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    invoke-direct {v3, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$2;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    move-object v14, v2

    move-object/from16 v21, v3

    invoke-direct/range {v14 .. v21}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;)V

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 374
    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-nez v2, :cond_9

    .line 375
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v2}, Lcom/android/settings/password/SecGlifLayout;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    .line 379
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "check_lock_result"

    .line 380
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/password/CredentialCheckResultTracker;

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    if-nez v2, :cond_a

    .line 382
    new-instance v2, Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-direct {v2}, Lcom/android/settings/password/CredentialCheckResultTracker;-><init>()V

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    .line 383
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v2, v4, v3}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 384
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 388
    :cond_a
    iget-object v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v2}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 389
    iget-object v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v2

    iget-object v3, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v3

    xor-int/2addr v3, v5

    or-int/2addr v2, v3

    .line 390
    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    goto :goto_3

    .line 392
    :cond_b
    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFromPersonalPage:Z

    if-nez v2, :cond_c

    .line 393
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v3

    xor-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 397
    :cond_c
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_d

    const/16 v2, 0xf

    .line 398
    invoke-virtual {v1, v2}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 403
    :cond_d
    iget-object v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->setPatternColor(Lcom/android/internal/widget/LockPatternView;)V

    .line 404
    iget-object v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->onCreateView(Landroid/view/View;)V

    .line 407
    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-eqz v2, :cond_e

    .line 408
    invoke-virtual {v1, v6}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 409
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$color;->sec_lock_suw_background_color:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_e
    return-object v1
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;IIZ)V
    .locals 0

    .line 973
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->onPatternChecked(ZLandroid/content/Intent;IIZ)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 444
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onDestroy()V

    .line 447
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPattern:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p0, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 459
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 461
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 464
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 474
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 477
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 479
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->clearResult()V

    .line 480
    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 484
    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    .line 486
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    .line 489
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 490
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 492
    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mTwoFactorBiometricConfirmed:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    const-string v2, "from_knox_work_profile_security"

    .line 493
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 495
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    .line 496
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 495
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->confirmBiometricIfNeeded(ZLandroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mWaitingForTwoFactorConfirmation:Z

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 428
    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern$Stage;->values()[Lcom/android/settings/password/ConfirmLockPattern$Stage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUiStage:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    if-ne v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUiStage:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string/jumbo v1, "uiStage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 433
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackUpPinButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const-string v1, "backup_pin_btn_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->onSavedInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceStateCallback()V
    .locals 2

    .line 1079
    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern$Stage;->values()[Lcom/android/settings/password/ConfirmLockPattern$Stage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUiStage:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    if-ne v0, v1, :cond_0

    .line 1080
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    :cond_0
    return-void
.end method

.method protected onShowDefault()V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 543
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SecGlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getDefaultDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/password/SecGlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v1}, Lcom/android/settings/password/SecGlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->needToUpdateErrorMessage(Landroid/widget/TextView;I)V

    :goto_0
    return-void
.end method

.method protected onShowError()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 418
    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 419
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mForgotButton:Landroid/widget/Button;

    if-eqz p0, :cond_0

    .line 420
    sget p1, Lcom/android/settings/R$string;->lockpassword_forgot_pattern:I

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->onWindowFocusChanged(Z)V

    .line 507
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->setCredentialCheckResultTrackerIfNeeded(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 508
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {p1, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    .line 511
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 512
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    :cond_1
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 2

    .line 555
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 556
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v0}, Lcom/android/settings/password/SecGlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 557
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 558
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mForgotButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    .line 562
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {p0}, Lcom/android/settings/password/SecGlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public startEnterAnimation()V
    .locals 1

    .line 635
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 636
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    return-void
.end method

.method public updateState()V
    .locals 1

    .line 1070
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->refreshLockScreen()V

    .line 1071
    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    .line 1074
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    return-void
.end method
