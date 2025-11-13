.class public Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/settings/password/CredentialCheckResultTracker$Listener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPasswordFragment"
.end annotation


# instance fields
.field private mAppLock_isPin:Z

.field private mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mBottomView:Landroid/view/View;

.field private mContinueButton:Landroid/widget/Button;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

.field private mDetailMsg:Ljava/lang/CharSequence;

.field private mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mDisappearing:Z

.field private mExternal:Z

.field private mFromAppLock:Z

.field private mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAlpha:Z

.field private mIsManagedProfile:Z

.field private mIsPasswordMaxLength:Z

.field private mIsPasswordShown:Z

.field private final mMaxLengthFilter:Landroid/text/InputFilter;

.field private mMenu:Landroid/view/Menu;

.field protected mMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

.field private mPasswordEntry:Landroid/widget/ImeAwareEditText;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPasswordMaxLength:I

.field private mPasswordShowButton:Landroid/widget/ImageButton;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private mPersonalPage_isPin:Z

.field protected mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mTwoFactorBiometricConfirmed:Z

.field private mUnlockRecovery:Z

.field private mWaitingForTwoFactorConfirmation:Z

.field private nDigitsPin:I


# direct methods
.method public static synthetic $r8$lambda$7LfSoBF-SO4hY-Xm--83SUtg1QU(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->lambda$getDefaultHeader$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O9NJMIyMsdydt9ALyyRmt_C1zec(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->lambda$getDefaultHeader$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$e08tA699hPd280TY7a1tsNkrCEM(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->lambda$getDefaultDetails$3(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$i3Zk7kG7BYoTMTvR3s1dfo5Amzw(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->updatePasswordEntry()V

    return-void
.end method

.method public static synthetic $r8$lambda$k1c_ZN600aanRqm2jiApYha48Hg(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;ILandroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->lambda$startVerifyPassword$4(ILandroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/VerifyCredentialResponse;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wVflNBwAOdT3kxO4J4-CB77wzlg()V
    .locals 0

    invoke-static {}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->lambda$onDestroy$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCredentialCheckResultTracker(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGlifLayout(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/password/SecGlifLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAlpha(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPasswordMaxLength(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsPasswordMaxLength:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasswordEntry(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/ImeAwareEditText;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasswordMaxLength(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordMaxLength:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasswordShowButton(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingForTwoFactorConfirmation(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mWaitingForTwoFactorConfirmation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsPasswordMaxLength(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsPasswordMaxLength:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingLockCheck(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDefaultDetails(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultDetails()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misInternalActivity(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdatePasswordEntry(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->updatePasswordEntry()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 299
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    .line 236
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUnlockRecovery:Z

    .line 244
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPersonalPage_isPin:Z

    .line 245
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mAppLock_isPin:Z

    const/16 v1, 0x100

    .line 250
    iput v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordMaxLength:I

    .line 251
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsPasswordMaxLength:Z

    const/4 v1, 0x0

    .line 255
    iput-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailMsg:Ljava/lang/CharSequence;

    .line 264
    new-instance v1, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    iput-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mMaxLengthFilter:Landroid/text/InputFilter;

    .line 294
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mTwoFactorBiometricConfirmed:Z

    .line 295
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mWaitingForTwoFactorConfirmation:Z

    return-void
.end method

.method private getActiveViews()[Landroid/view/View;
    .locals 2

    .line 902
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 903
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v1}, Lcom/android/settings/password/SecGlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v1}, Lcom/android/settings/password/SecGlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 906
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mForgotButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 909
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    :cond_1
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/view/View;

    .line 913
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/View;

    return-object p0
.end method

.method private getAdminUid(Landroid/content/Context;I)I
    .locals 1

    .line 415
    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 416
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 418
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error fetching admin uid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChooseLockPassword"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private getDefaultDetails()Ljava/lang/String;
    .locals 4

    .line 791
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 792
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 793
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->confirm_lockpassword_your_first_password_header:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 794
    :cond_0
    sget v0, Lcom/android/settings/R$string;->confirm_lockpassword_your_first_pin_header:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 796
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequestedForInner(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_3

    .line 797
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/settings/R$string;->confirm_lockpassword_your_second_password_header:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 798
    :cond_2
    sget v0, Lcom/android/settings/R$string;->confirm_lockpassword_your_second_pin_header:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    .line 802
    :cond_3
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->getDefaultDetails()I

    move-result v0

    if-lez v0, :cond_4

    .line 804
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 806
    :cond_4
    iget v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 807
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_6

    .line 808
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/android/settings/R$string;->sec_knox_lockpassword_strong_auth_required_work_password:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 809
    :cond_5
    sget v0, Lcom/android/settings/R$string;->sec_knox_lockpassword_strong_auth_required_work_pin:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    .line 812
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-eqz v0, :cond_8

    .line 813
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_password_details_frp:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 814
    :cond_7
    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_pin_details_frp:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0

    .line 816
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isStrongAuthRequired()Z

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    .line 818
    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsManagedProfile:Z

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 819
    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    add-int/2addr v0, v1

    .line 820
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/password/ConfirmLockPassword;->-$$Nest$sfgetDETAIL_TEXT_OVERRIDES()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    new-instance v3, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultHeader()Ljava/lang/String;
    .locals 2

    .line 760
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-eqz v0, :cond_1

    .line 762
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->sec_lockpassword_confirm_your_password_header_frp:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 763
    :cond_0
    sget v0, Lcom/android/settings/R$string;->sec_lockpassword_confirm_your_pin_header_frp:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 769
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsManagedProfile:Z

    if-eqz v0, :cond_3

    .line 770
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_2

    .line 771
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    const-string p0, "Settings.CONFIRM_WORK_PROFILE_PASSWORD_HEADER"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 776
    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    const-string p0, "Settings.CONFIRM_WORK_PROFILE_PIN_HEADER"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 781
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/android/settings/R$string;->sec_lockpassword_confirm_your_password_header:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 782
    :cond_4
    sget v0, Lcom/android/settings/R$string;->sec_lockpassword_confirm_your_pin_header:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getErrorMessage()I
    .locals 1

    .line 826
    sget v0, Lcom/android/settings/R$string;->sec_lockpassword_need_to_unlock_wrong:I

    .line 828
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->getErrorMessage(I)I

    move-result p0

    return p0
.end method

.method private getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPwdPolicy () "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmLockPasswordFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getAdminUid(Landroid/content/Context;I)I

    move-result v0

    .line 399
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {p0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    return-object p0

    .line 404
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 406
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleAttemptLockout(J)V
    .locals 8

    .line 1337
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 1338
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setFocusable(Z)V

    .line 1340
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1341
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1344
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1345
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    .line 1346
    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1348
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz v0, :cond_2

    .line 1349
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 1352
    :cond_2
    new-instance v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;

    .line 1353
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v4, p1, v1

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;JJ)V

    .line 1393
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 1394
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->updatePasswordEntry()V

    return-void
.end method

.method private handleNext()V
    .locals 6

    .line 1089
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1095
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1099
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    goto :goto_0

    .line 1100
    :cond_2
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 1101
    :goto_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1102
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v1}, Landroid/widget/ImeAwareEditText;->clear()V

    .line 1103
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1107
    :cond_3
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v1}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    move v3, v2

    .line 1109
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 1110
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-lt v4, v5, :cond_5

    const/16 v5, 0x7f

    if-le v4, v5, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1113
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getErrorMessage()I

    move-result v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->showError(IJ)V

    return-void

    .line 1120
    :cond_6
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 1122
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1124
    iget-boolean v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnGatekeeperPassword:Z

    if-eqz v3, :cond_7

    .line 1125
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v2, 0x1

    .line 1126
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->startVerifyPassword(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;I)V

    return-void

    .line 1130
    :cond_7
    iget-boolean v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mForceVerifyPath:Z

    if-eqz v3, :cond_9

    .line 1131
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1132
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->startVerifyPassword(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;I)V

    return-void

    .line 1140
    :cond_8
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v2, v1, v2, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void

    .line 1136
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->startCheckPassword(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;)V

    :cond_a
    :goto_3
    return-void
.end method

.method private isEnabledNdigitsPinForConfirm()Z
    .locals 1

    .line 386
    iget v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->nDigitsPin:I

    if-lez v0, :cond_0

    .line 387
    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isInternalActivity()Z
    .locals 0

    .line 1144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    return p0
.end method

.method private synthetic lambda$getDefaultDetails$3(I)Ljava/lang/String;
    .locals 1

    .line 821
    invoke-static {}, Lcom/android/settings/password/ConfirmLockPassword;->-$$Nest$sfgetDETAIL_TEXTS()[I

    move-result-object v0

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDefaultHeader$1()Ljava/lang/String;
    .locals 1

    .line 773
    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_work_password_header:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDefaultHeader$2()Ljava/lang/String;
    .locals 1

    .line 778
    sget v0, Lcom/android/settings/R$string;->lockpassword_confirm_your_work_pin_header:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onDestroy$0()V
    .locals 0

    .line 753
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 754
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 755
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private synthetic lambda$startVerifyPassword$4(ILandroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 4

    const/4 v0, 0x0

    .line 1153
    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 1154
    invoke-virtual {p5}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1155
    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    .line 1158
    invoke-virtual {p5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    move-result-wide v2

    const-string p1, "gk_pw_handle"

    .line 1157
    invoke-virtual {p2, p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 1162
    :cond_0
    invoke-virtual {p5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object p1

    const-string p5, "hw_auth_token"

    .line 1160
    invoke-virtual {p2, p5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1169
    :goto_0
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result p1

    const-string/jumbo p5, "password"

    if-eqz p1, :cond_1

    .line 1170
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startVerifyPassword - Secured password required for user "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ConfirmLockPasswordFragment.SDP"

    invoke-static {v2, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v2

    invoke-static {p3, v2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipher(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    .line 1172
    invoke-virtual {p2, p5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "is_knox_password_secured"

    .line 1174
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 1177
    :cond_1
    invoke-virtual {p2, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1182
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {p0, v0, p2, p6, p4}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method

.method private onPasswordChecked(ZLandroid/content/Intent;IIZ)V
    .locals 2

    .line 1247
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    if-eqz p1, :cond_4

    if-eqz p5, :cond_0

    .line 1251
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {p1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->reportSuccessfulAttempt()V

    .line 1252
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {p1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->removeGlobalLayoutListenerIfRequired()V

    .line 1253
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object p3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p1, p3}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->hideSoftInputIfNeeded(Landroid/widget/ImeAwareEditText;)V

    .line 1255
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget-object p4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget p5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-static {p1, p3, p4, p5, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->reportSuccessfulAttempt(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;IZ)V

    .line 1260
    :cond_0
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

    if-eq p1, p3, :cond_2

    const/4 p3, 0x4

    if-eq p1, p3, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_2

    const/4 p3, 0x6

    if-ne p1, p3, :cond_1

    goto :goto_0

    .line 1270
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 1271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->checkForPendingIntent(Landroid/app/Activity;)V

    goto :goto_1

    .line 1267
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->checkForPendingIntent(Landroid/app/Activity;)V

    .line 1268
    invoke-direct {p0, p2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 1280
    :goto_1
    :try_start_0
    iget-boolean p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUnlockRecovery:Z

    if-eqz p1, :cond_6

    .line 1281
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    iget-object p3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p3}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isFmmUnlockAllowed(Landroid/content/Context;IZ)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1283
    iget-boolean p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    goto :goto_2

    .line 1284
    :cond_3
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    .line 1285
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFmmService(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 1286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 1289
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_4
    if-lez p3, :cond_5

    .line 1295
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {p1, p3}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->setBiometricLockoutDeadline(I)V

    .line 1297
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->refreshLockScreen()V

    .line 1298
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p1

    .line 1300
    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    goto :goto_3

    .line 1302
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getErrorMessage()I

    move-result p1

    const-wide/16 p2, 0xbb8

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->showError(IJ)V

    :goto_3
    if-eqz p5, :cond_6

    .line 1305
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->reportFailedAttempt()V

    :cond_6
    :goto_4
    return-void
.end method

.method private startCheckPassword(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;)V
    .locals 3

    .line 1194
    iget v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 1195
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;I)V

    invoke-static {v1, p1, v0, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 3

    .line 1214
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1217
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    .line 1219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ConfirmLockPassword;

    if-eqz v0, :cond_2

    .line 1221
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1239
    :cond_1
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p0, -0x1

    .line 1240
    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1241
    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method private startVerifyPassword(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Intent;I)V
    .locals 9

    .line 1150
    iget v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 1151
    iget v7, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    .line 1152
    new-instance v8, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda6;

    move-object v0, v8

    move-object v1, p0

    move v2, p3

    move-object v3, p2

    move-object v4, p1

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;ILandroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;I)V

    if-ne v6, v7, :cond_0

    .line 1186
    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p2, p1, v7, p3, v8}, Lcom/android/internal/widget/LockPatternChecker;->verifyCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    goto :goto_0

    .line 1188
    :cond_0
    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p2, p1, v7, p3, v8}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method private updatePasswordEntry()V
    .locals 6

    .line 1015
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 1016
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1017
    :goto_0
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 1019
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImeAwareEditText;->setFocusable(Z)V

    .line 1020
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImeAwareEditText;->setFocusableInTouchMode(Z)V

    .line 1023
    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v3}, Lcom/android/settings/password/SecGlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->needToUpdateErrorMessage(Landroid/widget/TextView;I)V

    .line 1025
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    if-eqz v0, :cond_1

    .line 1027
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    .line 1032
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    :goto_1
    return-void
.end method


# virtual methods
.method public adjustPasswordViewWithIme(Landroid/view/View;I)V
    .locals 2

    .line 1493
    sget p0, Lcom/android/settings/R$id;->pwdLayoutScrollView:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ScrollView;

    .line 1494
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/ScrollView;->setPadding(IIII)V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 1459
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->isEnabledNdigitsPinForConfirm()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 1460
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v4}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    iget v5, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->nDigitsPin:I

    if-le v4, v5, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1461
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_2

    .line 1462
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v1}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iget v4, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->nDigitsPin:I

    if-le v1, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1464
    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz v0, :cond_9

    .line 1465
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v1}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iget v4, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->nDigitsPin:I

    if-le v1, v4, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    goto :goto_6

    .line 1468
    :cond_4
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v4}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_5

    move v4, v2

    goto :goto_3

    :cond_5
    move v4, v3

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1469
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_7

    .line 1470
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v1}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1472
    :cond_7
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz v0, :cond_9

    .line 1473
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v1}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v3

    :goto_5
    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 1476
    :cond_9
    :goto_6
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->isEnabledNdigitsPinForConfirm()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    iget v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->nDigitsPin:I

    if-ne p1, v0, :cond_a

    .line 1477
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    :cond_a
    return-void
.end method

.method protected authenticationSucceeded()V
    .locals 5

    .line 1005
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    .line 1006
    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->interceptAuthenticationSucceededIfNeeded(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ConfirmLockPasswordFragment"

    const-string v0, "interceptAuthenticationSucceededIfNeeded"

    .line 1007
    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1011
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public createOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .line 338
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportActionBarButton(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 339
    sget v0, Lcom/android/settings/R$string;->lockpassword_continue_label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 340
    invoke-interface {p1, v2, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 341
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 342
    iget-object v4, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    if-eqz v4, :cond_3

    .line 343
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->isEnabledNdigitsPinForConfirm()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 344
    iget-object v4, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v4}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    iget v5, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->nDigitsPin:I

    if-lt v4, v5, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 346
    :cond_1
    iget-object v4, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v4}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 349
    :cond_3
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 351
    :goto_2
    sget v0, Lcom/android/settings/R$string;->lockpattern_tutorial_cancel_label:I

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 352
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 353
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mMenu:Landroid/view/Menu;

    .line 356
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isDevicePasswordAdminEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 357
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result p1

    if-lez p1, :cond_4

    move p1, v1

    goto :goto_3

    :cond_4
    move p1, v2

    .line 358
    :goto_3
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 359
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequestedForInner(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v2

    :goto_4
    if-nez p1, :cond_6

    if-eqz v0, :cond_7

    .line 362
    :cond_6
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mMenu:Landroid/view/Menu;

    if-eqz p0, :cond_7

    .line 363
    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_7
    return v1
.end method

.method public disableConfirmCredentialCallback()V
    .locals 5

    .line 1523
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 1525
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setFocusable(Z)V

    .line 1526
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setFocusableInTouchMode(Z)V

    .line 1529
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v2}, Lcom/android/settings/password/SecGlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->needToUpdateErrorMessage(Landroid/widget/TextView;I)V

    .line 1531
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 1532
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public enableConfirmCredentialCallback()V
    .locals 5

    const/4 v0, 0x1

    .line 1499
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mTwoFactorBiometricConfirmed:Z

    const/4 v1, 0x0

    .line 1500
    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mWaitingForTwoFactorConfirmation:Z

    .line 1502
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1504
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->refreshLockScreen()V

    .line 1505
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v1, v0}, Landroid/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 1507
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v1, v0}, Landroid/widget/ImeAwareEditText;->setFocusable(Z)V

    .line 1508
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v1, v0}, Landroid/widget/ImeAwareEditText;->setFocusableInTouchMode(Z)V

    .line 1511
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v2}, Lcom/android/settings/password/SecGlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->needToUpdateErrorMessage(Landroid/widget/TextView;I)V

    .line 1513
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 1515
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    .line 1517
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->scheduleShowSoftInput()V

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

    .line 866
    sget p0, Lcom/android/settings/R$string;->sec_lock_last_attempt_before_wipe_user:I

    return p0

    .line 872
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

    .line 859
    :cond_1
    sget p0, Lcom/android/settings/R$string;->sec_lock_last_attempt_before_wipe_profile:I

    return p0

    .line 852
    :cond_2
    sget p0, Lcom/android/settings/R$string;->sec_lock_last_attempt_before_wipe_device:I

    return p0
.end method

.method protected getLastTryOverrideErrorMessageId(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 840
    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz p0, :cond_0

    const-string p0, "Settings.WORK_PROFILE_LAST_PASSWORD_ATTEMPT_BEFORE_WIPE"

    goto :goto_0

    :cond_0
    const-string p0, "Settings.WORK_PROFILE_LAST_PIN_ATTEMPT_BEFORE_WIPE"

    :goto_0
    return-object p0

    :cond_1
    const-string p0, "UNDEFINED"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method public interceptOnKeyDownIfNeeded(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1059
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isDevicePasswordAdminEnabled()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 1060
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result p1

    if-lez p1, :cond_0

    return p2

    .line 1063
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1064
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequestedForInner(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_1

    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public interceptOnOptionsItemSelectedIfNeeded(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1073
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    return v0

    .line 1077
    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isDevicePasswordAdminEnabled()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1078
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-static {p1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result p1

    if-lez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 1079
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1080
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequestedForInner(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_2

    move p0, v1

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    if-nez p1, :cond_3

    if-eqz p0, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1398
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->next_button:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1399
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 1400
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->cancel_button:I

    if-ne v0, v1, :cond_1

    .line 1401
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 1402
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1406
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->password_show_btn:I

    if-ne p1, v0, :cond_3

    .line 1407
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->getSelectionEnd()I

    move-result p1

    .line 1408
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsPasswordShown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1409
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$drawable;->sec_lock_setting_btn_password_hide_mtrl:I

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1410
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1411
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    sget v1, Lcom/android/settings/R$string;->sec_lockpassword_show_button:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1412
    iput-boolean v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsPasswordShown:Z

    goto :goto_1

    .line 1414
    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->sec_lock_setting_btn_password_show_mtrl:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1415
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1416
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    sget v1, Lcom/android/settings/R$string;->sec_lockpassword_hide_button:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 1417
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsPasswordShown:Z

    .line 1420
    :goto_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsPasswordShown:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->setShowPwdImgColor(Landroid/widget/ImageButton;Z)V

    .line 1423
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p0, p1}, Landroid/widget/ImeAwareEditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1425
    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 306
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 308
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "unlock_recovery"

    .line 310
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUnlockRecovery:Z

    const-string v2, "applock_mQuality"

    .line 311
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mAppLock_isPin:Z

    const-string v2, "com.android.settings.ConfirmCredentials.showWhenLocked"

    .line 312
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mExternal:Z

    const-string v2, "from_applock"

    .line 313
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFromAppLock:Z

    .line 315
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "n_digits_pin_enabled"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->nDigitsPin:I

    .line 318
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mForFingerprint:Z

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->nDigitsPin:I

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->nDigitsPin:I

    .line 327
    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->initializeStreamCipher()J

    move-result-wide v0

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate - StreamCipher initialized with handle("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmLockPasswordFragment.SDP"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 427
    iget-object v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    .line 430
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/android/settings/password/ConfirmLockPassword;

    .line 434
    iget-boolean v6, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    .line 435
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/android/settings/R$id;->content_parent:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 437
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 439
    :cond_0
    sget v5, Lcom/android/settings/R$layout;->sec_setup_confirm_lock_password:I

    invoke-virtual {v1, v5, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 442
    :cond_1
    invoke-static {v5}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 443
    sget v5, Lcom/android/settings/R$layout;->sec_confirm_lock_password_tablet:I

    goto :goto_0

    .line 444
    :cond_2
    sget v5, Lcom/android/settings/R$layout;->sec_confirm_lock_password:I

    .line 441
    :goto_0
    invoke-virtual {v1, v5, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 449
    :goto_1
    iget-object v5, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v5, v1, v2, v6}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->switchViewIfNeeded(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 461
    new-instance v2, Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    invoke-direct {v2, v5, v1, v6}, Lcom/android/settings/password/SecGlifLayout;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    .line 466
    sget v2, Lcom/android/settings/R$id;->password_entry:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImeAwareEditText;

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    .line 467
    invoke-virtual {v2, v0}, Landroid/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 469
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v2}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    const/high16 v2, 0x40000

    if-eq v2, v4, :cond_4

    const/high16 v2, 0x50000

    if-eq v2, v4, :cond_4

    const/high16 v2, 0x60000

    if-eq v2, v4, :cond_4

    const/high16 v2, 0x80000

    if-ne v2, v4, :cond_3

    goto :goto_2

    :cond_3
    move v2, v8

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v7

    .line 476
    :goto_3
    iput-boolean v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    .line 481
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v2}, Lcom/android/settings/password/SecGlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    .line 482
    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v2, :cond_6

    .line 483
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 484
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const v4, 0x800005

    invoke-virtual {v2, v4}, Landroid/widget/ImeAwareEditText;->setGravity(I)V

    .line 485
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v2}, Landroid/widget/ImeAwareEditText;->getPaddingEnd()I

    move-result v4

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v5}, Landroid/widget/ImeAwareEditText;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v9, Lcom/android/settings/R$dimen;->sec_lock_password_edit_padding_end:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v9}, Landroid/widget/ImeAwareEditText;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v2, v4, v5, v6, v9}, Landroid/widget/ImeAwareEditText;->setPaddingRelative(IIII)V

    goto :goto_4

    .line 487
    :cond_5
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const v4, 0x800003

    invoke-virtual {v2, v4}, Landroid/widget/ImeAwareEditText;->setGravity(I)V

    .line 488
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v2}, Landroid/widget/ImeAwareEditText;->getPaddingLeft()I

    move-result v4

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v5}, Landroid/widget/ImeAwareEditText;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v9, Lcom/android/settings/R$dimen;->sec_lock_password_edit_padding_end:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v9}, Landroid/widget/ImeAwareEditText;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v2, v4, v5, v6, v9}, Landroid/widget/ImeAwareEditText;->setPadding(IIII)V

    .line 491
    :goto_4
    iget-object v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->setPasswordEntry(Landroid/widget/ImeAwareEditText;)V

    :cond_6
    const/16 v2, 0x100

    .line 494
    iput v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordMaxLength:I

    .line 495
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/text/InputFilter;

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mMaxLengthFilter:Landroid/text/InputFilter;

    aput-object v5, v4, v8

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    iget v6, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordMaxLength:I

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {v2, v4}, Landroid/widget/ImeAwareEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 496
    new-instance v2, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-direct {v2, v4}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 499
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 502
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsManagedProfile:Z

    .line 504
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v4, "com.android.settings.ConfirmCredentials.header"

    .line 506
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "com.android.settings.ConfirmCredentials.details"

    .line 508
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 510
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsManagedProfile:Z

    if-eqz v5, :cond_7

    .line 511
    iget-object v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v5, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 513
    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 514
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()Ljava/lang/String;

    move-result-object v4

    .line 516
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 517
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultDetails()Ljava/lang/String;

    move-result-object v2

    .line 520
    :cond_9
    iget-object v5, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-boolean v6, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->getDefaultHeader(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 522
    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v5, v4}, Lcom/android/settings/password/SecGlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v4, v2}, Lcom/android/settings/password/SecGlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    .line 526
    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailMsg:Ljava/lang/CharSequence;

    .line 529
    :cond_a
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v2}, Landroid/widget/ImeAwareEditText;->getInputType()I

    move-result v2

    .line 530
    iget-boolean v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v4, :cond_b

    .line 531
    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v4, v2}, Landroid/widget/ImeAwareEditText;->setInputType(I)V

    .line 532
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    .line 533
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->unlock_set_unlock_password_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 532
    invoke-virtual {v2, v4}, Landroid/widget/ImeAwareEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 535
    :cond_b
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Landroid/widget/ImeAwareEditText;->setInputType(I)V

    .line 537
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    .line 538
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->unlock_set_unlock_pin_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 537
    invoke-virtual {v2, v4}, Landroid/widget/ImeAwareEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 541
    :goto_5
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    .line 542
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040356

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 541
    invoke-static {v4, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImeAwareEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 544
    new-instance v2, Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const-wide/16 v11, 0xdc

    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v14, 0x3f800000    # 1.0f

    .line 546
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10c000e

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v15

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 548
    new-instance v2, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v17

    const-wide/16 v18, 0x6e

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f000000    # 0.5f

    .line 551
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10c000f

    .line 550
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v22

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 553
    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-nez v2, :cond_c

    .line 554
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v2}, Lcom/android/settings/password/SecGlifLayout;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    .line 557
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v4, "check_lock_result"

    .line 558
    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/password/CredentialCheckResultTracker;

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    if-nez v2, :cond_d

    .line 560
    new-instance v2, Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-direct {v2}, Lcom/android/settings/password/CredentialCheckResultTracker;-><init>()V

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    .line 561
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v2, v5, v4}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 562
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 566
    :cond_d
    sget v2, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    sget v4, Lcom/android/settings/R$id;->next_button:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    .line 569
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 572
    sget v4, Lcom/android/settings/R$id;->bottomView:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBottomView:Landroid/view/View;

    .line 575
    iget-object v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v4}, Lcom/android/settings/password/LockTypePolicy;->isDevicePasswordAdminEnabled()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 576
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v4

    if-lez v4, :cond_e

    move v4, v7

    goto :goto_6

    :cond_e
    move v4, v8

    .line 577
    :goto_6
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoEnabled()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 578
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequestedForInner(Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_f

    move v5, v7

    goto :goto_7

    :cond_f
    move v5, v8

    :goto_7
    if-nez v4, :cond_10

    if-eqz v5, :cond_11

    .line 581
    :cond_10
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 582
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_11

    .line 583
    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 587
    :cond_11
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v2, v0}, Landroid/widget/ImeAwareEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 588
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const/high16 v4, 0x2000000

    invoke-virtual {v2, v4}, Landroid/widget/ImeAwareEditText;->setImeOptions(I)V

    .line 589
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const-string v4, "disableToolbar=true;lockScreenPasswordField=true;"

    invoke-virtual {v2, v4}, Landroid/widget/ImeAwareEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 591
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->isEnabledNdigitsPinForConfirm()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 592
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const-string v4, "disableToolbar=true;disableEnterKey=true;lockScreenPasswordField=true;"

    invoke-virtual {v2, v4}, Landroid/widget/ImeAwareEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 595
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_13

    iget v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_13

    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mExternal:Z

    if-eqz v2, :cond_13

    .line 596
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v2}, Lcom/android/settings/password/SecGlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v2, v8}, Lcom/android/settings/password/SecGlifLayout;->setIconVisibility(I)V

    .line 600
    :cond_13
    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFromPersonalPage:Z

    if-nez v2, :cond_14

    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFromAppLock:Z

    if-eqz v2, :cond_17

    .line 601
    :cond_14
    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPersonalPage_isPin:Z

    if-nez v2, :cond_16

    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mAppLock_isPin:Z

    if-eqz v2, :cond_15

    goto :goto_8

    .line 604
    :cond_15
    iput-boolean v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    goto :goto_9

    .line 602
    :cond_16
    :goto_8
    iput-boolean v8, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    .line 608
    :cond_17
    :goto_9
    sget v2, Lcom/android/settings/R$id;->password_show_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    if-eqz v2, :cond_1c

    .line 610
    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-nez v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 611
    :cond_18
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_19
    if-eqz v3, :cond_1a

    const-string/jumbo v2, "password_shown"

    .line 614
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsPasswordShown:Z

    .line 616
    :cond_1a
    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsPasswordShown:Z

    if-eqz v2, :cond_1b

    .line 617
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/settings/R$drawable;->sec_lock_setting_btn_password_show_mtrl:I

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 618
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v2, v4}, Landroid/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 619
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    sget v3, Lcom/android/settings/R$string;->sec_lockpassword_hide_button:I

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 621
    :cond_1b
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/settings/R$drawable;->sec_lock_setting_btn_password_hide_mtrl:I

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 622
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 623
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    sget v3, Lcom/android/settings/R$string;->sec_lockpassword_show_button:I

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 625
    :goto_a
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/settings/R$color;->body_text_color:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 627
    iget-object v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    iget-boolean v5, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsPasswordShown:Z

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->setShowPwdImgColor(Landroid/widget/ImageButton;Z)V

    .line 632
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 637
    sget v2, Lcom/android/settings/R$id;->confirm_lock_password_main_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0xf

    if-eqz v2, :cond_1d

    .line 639
    invoke-virtual {v2, v3}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 640
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 642
    :cond_1d
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBottomView:Landroid/view/View;

    if-eqz v2, :cond_1e

    const/16 v5, 0xc

    .line 643
    invoke-virtual {v2, v5}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 644
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBottomView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 649
    :cond_1e
    iget-object v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->onCreateView(Landroid/view/View;)V

    .line 652
    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-eqz v2, :cond_20

    .line 653
    invoke-virtual {v1, v8}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 654
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_lock_suw_background_color:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 655
    sget v2, Lcom/android/settings/R$id;->button_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1f

    const/16 v3, 0x8

    .line 657
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 659
    :cond_1f
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBottomView:Landroid/view/View;

    if-eqz v2, :cond_20

    .line 660
    invoke-virtual {v2, v8}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 666
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_22

    iget-boolean v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsManagedProfile:Z

    if-nez v2, :cond_22

    .line 667
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v7, :cond_22

    .line 668
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 669
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 670
    new-instance v3, Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    .line 671
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    .line 672
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/view/SeslContentViewInsetsCallback;-><init>(II)V

    .line 673
    invoke-virtual {v2, v3}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 674
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 676
    sget v2, Lcom/android/settings/R$id;->button_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 678
    new-instance v3, Landroidx/appcompat/view/SeslTranslateViewInsetsCallback;

    .line 680
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    invoke-direct {v3, v2, v4, v5}, Landroidx/appcompat/view/SeslTranslateViewInsetsCallback;-><init>(Landroid/view/View;II)V

    .line 678
    invoke-virtual {v2, v3}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 682
    :cond_21
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBottomView:Landroid/view/View;

    if-eqz v2, :cond_22

    .line 683
    new-instance v3, Landroidx/appcompat/view/SeslTranslateViewInsetsCallback;

    iget-object v0, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mBottomView:Landroid/view/View;

    .line 685
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Landroidx/appcompat/view/SeslTranslateViewInsetsCallback;-><init>(Landroid/view/View;II)V

    .line 683
    invoke-virtual {v2, v3}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    :cond_22
    return-object v1
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;IIZ)V
    .locals 0

    .line 1313
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->onPasswordChecked(ZLandroid/content/Intent;IIZ)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 731
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onDestroy()V

    .line 736
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->clear()V

    .line 739
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 746
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 747
    invoke-virtual {p0, v0}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 752
    :cond_1
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda2;-><init>()V

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1438
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->isEnabledNdigitsPinForConfirm()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "ConfirmLockPasswordFragment"

    const-string p1, "Done key has no action because Confirm PIN without OK is enabled"

    .line 1439
    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1441
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 0

    .line 696
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 924
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 925
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 927
    iput-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 929
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {p0, v1}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 939
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 940
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 942
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->clearResult()V

    .line 943
    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    goto :goto_0

    .line 945
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->updatePasswordEntry()V

    .line 949
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 952
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    .line 951
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->updateErrorMessage(I)V

    .line 954
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    .line 957
    iget v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "ConfirmLockPasswordFragment"

    const-string v2, "PasswordPolicy is NULL!"

    .line 959
    invoke-static {v0, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 961
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordVisibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 963
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 965
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->sec_lock_setting_btn_password_hide_mtrl:I

    const/4 v4, 0x0

    .line 966
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 965
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 968
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    .line 969
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    .line 968
    invoke-virtual {v0, v2}, Landroid/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 970
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    sget v2, Lcom/android/settings/R$string;->sec_lockpassword_show_button:I

    .line 971
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 970
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 972
    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsPasswordShown:Z

    .line 974
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    .line 975
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->setShowPwdImgColor(Landroid/widget/ImageButton;Z)V

    goto :goto_1

    .line 979
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_3

    .line 980
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 988
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 989
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 991
    iget-boolean v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mTwoFactorBiometricConfirmed:Z

    if-nez v2, :cond_4

    const-string v2, "from_knox_work_profile_security"

    .line 992
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 994
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    .line 995
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 994
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->confirmBiometricIfNeeded(ZLandroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mWaitingForTwoFactorConfirmation:Z

    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 879
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 880
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsPasswordShown:Z

    const-string/jumbo v1, "password_shown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 882
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->onSavedInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onShowDefault()V
    .locals 3

    .line 1324
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailMsg:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1327
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v1}, Lcom/android/settings/password/SecGlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->needToUpdateErrorMessage(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 1330
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onShowError()V
    .locals 1

    .line 1318
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 702
    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 703
    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mForgotButton:Landroid/widget/Button;

    if-eqz p2, :cond_1

    .line 704
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    .line 705
    sget v0, Lcom/android/settings/R$string;->lockpassword_forgot_password:I

    goto :goto_0

    .line 706
    :cond_0
    sget v0, Lcom/android/settings/R$string;->lockpassword_forgot_pin:I

    .line 704
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    .line 709
    :cond_1
    iget-boolean p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-eqz p2, :cond_3

    .line 710
    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    .line 711
    const-class p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 712
    new-instance p2, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 713
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->lockpassword_continue_label:I

    .line 714
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p2

    new-instance v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    .line 715
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p2

    const/4 v0, 0x5

    .line 716
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p2

    sget v0, Lcom/android/settings/R$style;->SudGlifButton_Primary:I

    .line 717
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p2

    .line 718
    invoke-virtual {p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p2

    .line 712
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 720
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getButtonContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_lock_suw_background_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 721
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 723
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 725
    :cond_2
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    :cond_3
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->onWindowFocusChanged(Z)V

    .line 1039
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->setCredentialCheckResultTrackerIfNeeded(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1047
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1048
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 1053
    :cond_2
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    new-instance v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImeAwareEditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 2

    .line 890
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 891
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v0}, Lcom/android/settings/password/SecGlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 892
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mGlifLayout:Lcom/android/settings/password/SecGlifLayout;

    invoke-virtual {v0}, Lcom/android/settings/password/SecGlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 893
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 894
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mForgotButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 895
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setAlpha(F)V

    .line 898
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method public selectOptionItem(Landroid/view/MenuItem;)Z
    .locals 3

    .line 372
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportActionBarButton(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 375
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 377
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 379
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V

    .line 380
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return v2
.end method

.method public startEnterAnimation()V
    .locals 3

    .line 918
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 919
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActiveViews()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateState()V
    .locals 1

    .line 1485
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->refreshLockScreen()V

    .line 1488
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    return-void
.end method
