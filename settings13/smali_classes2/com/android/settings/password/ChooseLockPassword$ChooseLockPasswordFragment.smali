.class public Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;,
        Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    }
.end annotation


# instance fields
.field private LOCKSCREEN_PASSWORD_PIN_BUTTON:I

.field public MaxLengthFilter:Landroid/text/InputFilter;

.field private hasPwdPatternRestriction:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBottomBar:Landroid/widget/LinearLayout;

.field private mCheckSimplePassword:Z

.field private mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

.field private mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

.field private mEventDetail:I

.field private mFirstPassword:Lcom/android/internal/widget/LockscreenCredential;

.field private mFooterLeftButton:Landroid/widget/Button;

.field private mFooterRightButton:Landroid/widget/Button;

.field private mForAppLockBackupKey:Z

.field protected mForBiometrics:Z

.field protected mForFace:Z

.field protected mForFingerprint:Z

.field private mForPrivateModeBackupKey:Z

.field private mFromAppLock:Z

.field private mFromPersonalPage:Z

.field private mFromScreenLockBio:Z

.field private mFromScreenLockType:Z

.field private mFromSettingsBio:Z

.field private mFromSetupWizard:Z

.field private mHeaderText:Landroid/widget/TextView;

.field private mHelpText:Landroid/widget/TextView;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field protected mIsAlphaMode:Z

.field private mIsApplyingSetupTheme:Z

.field private mIsApplyingTabletGui:Z

.field private mIsChangePwdRequired:Z

.field private mIsFromKnoxTwoStep:Z

.field protected mIsManagedProfile:Z

.field private mIsPasswordShown:Z

.field private mIsSimplePassword:Z

.field private mIsSupportConfirmPINWithoutTapping:I

.field private mIsUnlockRecovery:Z

.field private mKnoxEnforcePassword:Z

.field private mLayout:Lcom/google/android/setupdesign/GlifLayout;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mMenu:Landroid/view/Menu;

.field private mMinComplexity:I

.field private mMinMetrics:Landroid/app/admin/PasswordMetrics;

.field private mMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

.field private mNumDigitsConfirmPINWithoutTapping:I

.field private mOldPassword:Lcom/android/internal/widget/LockscreenCredential;

.field private mPasswordEntry:Landroid/widget/ImeAwareEditText;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPasswordHistoryHashFactor:[B

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordShowButton:Landroid/widget/ImageButton;

.field private mPasswordType:I

.field private mPersonalPage_isPin:Z

.field private mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mPwdChangeEnforceStatus:I

.field private mPwdChangeTimeout:I

.field private mRequestGatekeeperPassword:Z

.field private mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSimplePinBtn:Landroid/widget/CheckedTextView;

.field private mStatusBarDisableCount:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTextChangedHandler:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

.field protected mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field private mUnificationProfileId:I

.field protected mUserId:I

.field private mValidationErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/PasswordValidationError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$D3Qqry6ZdsEgLjZkYh1NtDoB47g(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->lambda$handleNext$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RdBP459Yd1NRWF4V5moi7icJZYM(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->lambda$handleNext$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y8KdCyzEgM_Qhs_k42AiuWm3pho(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->lambda$convertErrorCodeToMessages$4()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sIOSFHGRscu7aNK75-QCtcEj0u0(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tkd0lPTOS0W0DNMUegn9f0r_2Lc(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->lambda$convertErrorCodeToMessages$3()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeaderText(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsChangePwdRequired(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsChangePwdRequired:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasswordEntry(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/ImeAwareEditText;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasswordMaxLength(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestGatekeeperPassword(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestGatekeeperPassword:Z

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 875
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, 0x0

    .line 578
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinComplexity:I

    const/16 v1, -0x2710

    .line 581
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    const/high16 v1, 0x20000

    .line 585
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordType:I

    .line 586
    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 618
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    .line 619
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsSimplePassword:Z

    const/4 v1, 0x1

    .line 625
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEventDetail:I

    const/4 v1, 0x4

    .line 626
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    const/16 v1, 0x100

    .line 627
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    const/4 v1, -0x1

    .line 632
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsSupportConfirmPINWithoutTapping:I

    .line 633
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNumDigitsConfirmPINWithoutTapping:I

    .line 634
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    .line 637
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    .line 644
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    const/4 v0, 0x0

    .line 654
    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 671
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 688
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$2;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->MaxLengthFilter:Landroid/text/InputFilter;

    return-void
.end method

.method private checkRepeatingChars(Ljava/lang/String;)Z
    .locals 5

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 2069
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 2070
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v3, p0

    move v2, v1

    .line 2071
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 2072
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v0, v4, :cond_0

    add-int/2addr v3, v1

    goto :goto_1

    :cond_0
    move v3, p0

    :goto_1
    const/4 v0, 0x3

    if-lt v3, v0, :cond_1

    .line 2078
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "has internal loop password : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChooseLockPassword"

    invoke-static {p1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2081
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method private checkSequentialChars(Ljava/lang/String;)Z
    .locals 8

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    const-string v1, "has Sequential password"

    const-string v2, "ChooseLockPassword"

    const/4 v3, 0x1

    const/4 v4, 0x6

    if-gt v0, v4, :cond_2

    add-int/lit8 v4, v0, 0x4

    const-string v5, "0123456789"

    .line 2040
    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "9876543210"

    .line 2041
    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1

    .line 2043
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2044
    :cond_0
    invoke-static {v2, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x16

    move v4, p0

    :goto_1
    if-gt v4, v0, :cond_5

    add-int/lit8 v5, v4, 0x4

    const-string v6, "abcdefghijklmnopqrstuvwxyz"

    .line 2053
    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "zyxwvutsrqponmlkjihgfedcba"

    .line 2054
    invoke-virtual {v7, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_4

    .line 2056
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2057
    :cond_3
    invoke-static {v2, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return p0
.end method

.method private computeMinLengthByComplexity(II)I
    .locals 1

    const/high16 v0, 0x50000

    if-ne p2, v0, :cond_1

    .line 1075
    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    :goto_0
    if-gt p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, p0

    :goto_1
    return p1
.end method

.method private customizePasswordMetrics(Landroid/app/admin/PasswordMetrics;)Landroid/app/admin/PasswordMetrics;
    .locals 1

    .line 1647
    iget p0, p1, Landroid/app/admin/PasswordMetrics;->letters:I

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    .line 1648
    iput v0, p1, Landroid/app/admin/PasswordMetrics;->letters:I

    :cond_0
    return-object p1
.end method

.method private enableStatusBar()V
    .locals 2

    .line 1752
    monitor-enter p0

    .line 1753
    :try_start_0
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 1754
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1758
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private finishWhenMultiwindowMode(Z)V
    .locals 2

    .line 1668
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->lock_screen_doesnt_support_multi_window_text:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1669
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getDefaultPINMessage()Ljava/lang/String;
    .locals 5

    .line 2681
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 2682
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$plurals;->sec_lockpassword_pin_too_short:I

    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2683
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2682
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2685
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_lockpassword_pin_recommended:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPasswordHistoryHashFactor()[B
    .locals 3

    .line 2096
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordHistoryHashFactor:[B

    if-nez v0, :cond_1

    .line 2097
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2098
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2099
    :cond_0
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    :goto_0
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 2097
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHistoryHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordHistoryHashFactor:[B

    .line 2101
    :cond_1
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordHistoryHashFactor:[B

    return-object p0
.end method

.method private hideSoftInput()V
    .locals 2

    .line 1067
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private isConfirmPINWithoutTappingOn()Z
    .locals 2

    .line 895
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isSupportConfirmPINWithoutTapping()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 898
    :cond_0
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsSupportConfirmPINWithoutTapping:I

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isSupportConfirmPINWithoutTapping()Z
    .locals 2

    .line 884
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoInnerAuthUser(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 885
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsSupportConfirmPINWithoutTapping:I

    return v0

    .line 891
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$convertErrorCodeToMessages$3()Ljava/lang/String;
    .locals 1

    .line 2461
    sget v0, Lcom/android/settings/R$string;->lockpassword_password_recently_used:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$convertErrorCodeToMessages$4()Ljava/lang/String;
    .locals 1

    .line 2465
    sget v0, Lcom/android/settings/R$string;->lockpassword_pin_recently_used:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$handleNext$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2133
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->refreshPasswordEntryToNeedToConfirm()V

    return-void
.end method

.method private synthetic lambda$handleNext$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2136
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2137
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0

    .line 1229
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    return-void
.end method

.method private refreshPasswordEntryToNeedToConfirm()V
    .locals 5

    .line 2177
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->length()I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNumDigitsConfirmPINWithoutTapping:I

    .line 2178
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFooterRightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2179
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMenu:Landroid/view/Menu;

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 2180
    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2182
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const-string v3, "disableToolbar=true;disableEnterKey=true;lockScreenPasswordField=true;"

    invoke-virtual {v0, v3}, Landroid/widget/ImeAwareEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 2183
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->MaxLengthFilter:Landroid/text/InputFilter;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImeAwareEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2184
    new-instance v0, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 2186
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 2187
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2188
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->clear()V

    .line 2190
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2191
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 2192
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    .line 2193
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setVisibilityNdigitsPinMenu()V

    return-void
.end method

.method private scheduleNextPwdChange(II)V
    .locals 6

    .line 2250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 2251
    new-instance p2, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2252
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    invoke-static {v2, v4, p2, v5, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p2

    .line 2254
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2258
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ChooseLockPassword"

    const-string p1, "PasswordPolicy is NULL!"

    .line 2260
    invoke-static {p0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 2262
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setPwdChangeRequested(I)Z

    :goto_0
    return-void
.end method

.method private setVisibilityNdigitsPinMenu()V
    .locals 4

    .line 910
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    if-nez v0, :cond_0

    return-void

    .line 911
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isSupportConfirmPINWithoutTapping()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 912
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVisibilityNdigitsPinMenu = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChooseLockPassword"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    return-void
.end method

.method private startSaveAndFinish()V
    .locals 10

    .line 2742
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    const-string p0, "ChooseLockPassword"

    const-string/jumbo v0, "startSaveAndFinish with an existing SaveAndFinishWorker."

    .line 2743
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2747
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 2748
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 2750
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    invoke-direct {v0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;-><init>()V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    .line 2751
    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 2753
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    const-string/jumbo v2, "save_and_finish_worker"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 2754
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 2755
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 2757
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "extra_require_password"

    .line 2758
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 2760
    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_2

    const-string/jumbo v1, "unification_profile_credential"

    .line 2762
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 2763
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 2765
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 2761
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0

    .line 2769
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isConfirmPINWithoutTappingOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNumDigitsConfirmPINWithoutTapping:I

    if-lez v0, :cond_3

    .line 2770
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v1, v0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setDigitsConfirmPINWithoutTapping(I)V

    :cond_3
    const/16 v0, 0x1130

    .line 2772
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x115c

    goto :goto_2

    :cond_4
    const/16 v1, 0x115a

    :goto_2
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEventDetail:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 2774
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestGatekeeperPassword:Z

    iget-object v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    iget-object v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    iget v9, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZLcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)V

    return-void
.end method

.method private updateHeaderText()Ljava/lang/String;
    .locals 5

    .line 2670
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-nez v0, :cond_0

    .line 2671
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getDefaultPINMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2673
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2674
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$plurals;->sec_lockpassword_password_too_short:I

    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2676
    :cond_1
    sget v0, Lcom/android/settings/R$string;->sec_lockpassword_password_policy_too_short:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateNdigitsPinState()V
    .locals 2

    .line 903
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isConfirmPINWithoutTappingOn()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsSupportConfirmPINWithoutTapping:I

    .line 904
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    if-eqz p0, :cond_1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 905
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private validateSamsungPasswordPolicy(Lcom/android/internal/widget/LockscreenCredential;)Z
    .locals 4

    .line 2198
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2202
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p1

    .line 2203
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    const/4 v3, 0x4

    .line 2204
    iput v3, v0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 2205
    iput v2, v0, Landroid/app/admin/PasswordMetrics;->seqLength:I

    .line 2207
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinComplexity:I

    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    xor-int/2addr p0, v1

    invoke-static {v0, v2, p0, p1}, Landroid/app/admin/PasswordMetrics;->validatePassword(Landroid/app/admin/PasswordMetrics;IZ[B)Ljava/util/List;

    move-result-object p0

    .line 2208
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 2705
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 2706
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 2711
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 2713
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2714
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 2716
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isConfirmPINWithoutTappingOn()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-nez v1, :cond_2

    .line 2717
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNumDigitsConfirmPINWithoutTapping:I

    if-ne p1, v1, :cond_2

    .line 2718
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Lcom/android/internal/widget/LockscreenCredential;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2719
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 2721
    :cond_1
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 2727
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2730
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mTextChangedHandler:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    invoke-static {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->-$$Nest$mnotifyAfterTextChanged(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method convertErrorCodeToMessages()[Ljava/lang/String;
    .locals 8

    .line 2376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2377
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/PasswordValidationError;

    .line 2378
    iget v4, v2, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    const/16 v5, -0x2710

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    .line 2571
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown error validating password: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChooseLockPassword"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2531
    :pswitch_0
    sget v2, Lcom/android/settings/R$string;->password_must_not_contain_banned_words:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2566
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/android/settings/R$string;->lockpassword_password_repeating_chars:I

    goto :goto_1

    :cond_0
    sget v2, Lcom/android/settings/R$string;->sec_lockpassword_pin_repeating_nums:I

    :goto_1
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2561
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/android/settings/R$string;->lockpassword_password_sequential_chars:I

    goto :goto_2

    :cond_1
    sget v2, Lcom/android/settings/R$string;->sec_lockpassword_pin_sequential_nums:I

    :goto_2
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2556
    :pswitch_3
    sget v2, Lcom/android/settings/R$string;->lockpassword_password_failed_match_pattern:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2536
    :pswitch_4
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    if-eq v2, v5, :cond_4

    .line 2537
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    .line 2538
    iget v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v4

    .line 2540
    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v2

    if-nez v2, :cond_2

    .line 2542
    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v2

    goto :goto_3

    .line 2543
    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v5

    if-le v2, v5, :cond_3

    .line 2544
    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v2

    .line 2547
    :cond_3
    :goto_3
    sget v4, Lcom/android/settings/R$string;->password_must_not_contain_numbers_in_order:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2549
    :cond_4
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    .line 2550
    sget v4, Lcom/android/settings/R$string;->maximum_characters_occurance_is_allowed_in_new_password:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2511
    :pswitch_5
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    if-eq v2, v5, :cond_7

    .line 2512
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    .line 2513
    iget v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v4

    .line 2515
    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v2

    if-nez v2, :cond_5

    .line 2517
    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v2

    goto :goto_4

    .line 2518
    :cond_5
    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v5

    if-le v2, v5, :cond_6

    .line 2519
    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v2

    .line 2522
    :cond_6
    :goto_4
    sget v4, Lcom/android/settings/R$string;->password_must_not_contain_numbers_in_order:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2524
    :cond_7
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    .line 2525
    sget v4, Lcom/android/settings/R$string;->minimum_characters_should_be_changed_in_new_password:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2491
    :pswitch_6
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    if-eq v2, v5, :cond_a

    .line 2492
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    .line 2493
    iget v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v4

    .line 2495
    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v2

    if-nez v2, :cond_8

    .line 2497
    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v2

    goto :goto_5

    .line 2498
    :cond_8
    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v5

    if-le v2, v5, :cond_9

    .line 2499
    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v2

    .line 2502
    :cond_9
    :goto_5
    sget v4, Lcom/android/settings/R$string;->password_must_not_contain_numbers_in_order:I

    new-array v5, v6, [Ljava/lang/Object;

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2504
    :cond_a
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    .line 2505
    sget v4, Lcom/android/settings/R$string;->password_must_not_contain_letters_in_order:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v2

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2471
    :pswitch_7
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    if-eq v2, v5, :cond_d

    .line 2472
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    .line 2473
    iget v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v4

    .line 2475
    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v2

    if-nez v2, :cond_b

    .line 2477
    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v2

    goto :goto_6

    .line 2478
    :cond_b
    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v5

    if-le v2, v5, :cond_c

    .line 2479
    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v2

    .line 2482
    :cond_c
    :goto_6
    sget v4, Lcom/android/settings/R$string;->password_must_not_contain_numbers_in_order:I

    new-array v5, v6, [Ljava/lang/Object;

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2484
    :cond_d
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    .line 2485
    sget v4, Lcom/android/settings/R$string;->password_must_not_contain_numbers_in_order:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v2

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2457
    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 2458
    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v3, :cond_e

    .line 2459
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    new-instance v3, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    const-string v4, "Settings.PASSWORD_RECENTLY_USED"

    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2463
    :cond_e
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    new-instance v3, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    const-string v4, "Settings.PIN_RECENTLY_USED"

    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2413
    :pswitch_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$plurals;->lockpassword_password_requires_nonnumerical:I

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 2415
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 2413
    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2408
    :pswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$plurals;->lockpassword_password_requires_nonletter:I

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 2410
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 2408
    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2403
    :pswitch_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$plurals;->lockpassword_password_requires_symbols:I

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 2405
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 2403
    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2398
    :pswitch_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$plurals;->lockpassword_password_requires_numeric:I

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 2400
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 2398
    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2388
    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$plurals;->lockpassword_password_requires_lowercase:I

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 2390
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 2388
    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2383
    :pswitch_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$plurals;->lockpassword_password_requires_uppercase:I

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 2385
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 2383
    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2393
    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$plurals;->lockpassword_password_requires_letters:I

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 2395
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 2393
    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2453
    :pswitch_10
    sget v2, Lcom/android/settings/R$string;->lockpassword_pin_no_sequential_digits:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2447
    :pswitch_11
    iget-boolean v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_f

    .line 2448
    sget v4, Lcom/android/settings/R$string;->sec_lockpassword_password_too_long:I

    goto :goto_7

    .line 2449
    :cond_f
    sget v4, Lcom/android/settings/R$string;->sec_lockpassword_pin_too_long:I

    :goto_7
    new-array v5, v6, [Ljava/lang/Object;

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    .line 2447
    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2436
    :pswitch_12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    sget v4, Lcom/android/settings/R$string;->lockpassword_password_too_short_all_numeric:I

    invoke-static {v3, v2, v4}, Lcom/android/settingslib/utils/StringUtil;->getIcuPluralsString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 2435
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2425
    :pswitch_13
    iget-boolean v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_10

    .line 2426
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$plurals;->sec_lockpassword_password_too_short:I

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 2428
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 2426
    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2430
    :cond_10
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getDefaultPINMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2380
    :pswitch_14
    sget v2, Lcom/android/settings/R$string;->lockpassword_illegal_character:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    new-array p0, v3, [Ljava/lang/String;

    .line 2575
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 1110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportActionBarButton(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1111
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v0, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 1112
    invoke-interface {p1, v2, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1113
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1114
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFooterRightButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 1115
    invoke-virtual {v4}, Landroid/widget/Button;->isEnabled()Z

    move-result v4

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1117
    :cond_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1119
    :goto_0
    sget v0, Lcom/android/settings/R$string;->lockpassword_cancel_label:I

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1120
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1121
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMenu:Landroid/view/Menu;

    :cond_1
    return v1
.end method

.method protected getChooseLockHintSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    .line 1840
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {p1, p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1c

    return p0
.end method

.method public getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
    .locals 4

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPwdPolicy () "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooseLockPassword"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1090
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1092
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error fetching admin uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    .line 1094
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1095
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {p0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1097
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    move-object v2, p0

    goto :goto_1

    .line 1100
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1102
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    :cond_1
    :goto_1
    return-object v2
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    .line 1835
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {p1, p0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public handleCancel()V
    .locals 5

    .line 2212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockscreen.password_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/high16 v3, 0x20000

    if-eq v3, v0, :cond_1

    const/high16 v3, 0x30000

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 2215
    :goto_1
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v3, v4, :cond_4

    if-nez v0, :cond_3

    .line 2216
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPersonalPage_isPin:Z

    if-eqz v0, :cond_2

    goto :goto_2

    .line 2219
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$integer;->lockscreen_confirm_lock_password_pw_cancel:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->LOCKSCREEN_PASSWORD_PIN_BUTTON:I

    goto :goto_4

    .line 2217
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$integer;->lockscreen_choose_lock_password_pin_cancel:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->LOCKSCREEN_PASSWORD_PIN_BUTTON:I

    goto :goto_4

    :cond_4
    if-nez v0, :cond_6

    .line 2222
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPersonalPage_isPin:Z

    if-eqz v0, :cond_5

    goto :goto_3

    .line 2225
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$integer;->lockscreen_confirm_lock_password_pw_continue_cancel:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->LOCKSCREEN_PASSWORD_PIN_BUTTON:I

    goto :goto_4

    .line 2223
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$integer;->lockscreen_confirm_lock_password_pin_continue_cancel:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->LOCKSCREEN_PASSWORD_PIN_BUTTON:I

    .line 2228
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getMetricsCategory()I

    move-result v0

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->LOCKSCREEN_PASSWORD_PIN_BUTTON:I

    invoke-static {v0, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 2231
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsChangePwdRequired:Z

    if-eqz v0, :cond_a

    .line 2232
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v4, :cond_7

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-ne v3, v1, :cond_7

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    if-lez v1, :cond_7

    .line 2235
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->scheduleNextPwdChange(II)V

    .line 2236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 2237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 2239
    :cond_7
    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v0, v1, :cond_8

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_9

    .line 2240
    :cond_8
    invoke-virtual {p0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 2241
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void

    .line 2246
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public handleNext()V
    .locals 7

    .line 2105
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    return-void

    .line 2107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 2111
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 2112
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFooterRightButton:Landroid/widget/Button;

    .line 2113
    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2114
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_4

    .line 2115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$plurals;->sec_lockpassword_pin_too_short:I

    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    new-array v5, v3, [Ljava/lang/Object;

    .line 2117
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 2115
    invoke-virtual {v1, v4, p0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 2117
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void

    .line 2121
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    goto :goto_0

    .line 2122
    :cond_6
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 2123
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v4, :cond_9

    .line 2124
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Lcom/android/internal/widget/LockscreenCredential;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2126
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->validateSamsungPasswordPolicy(Lcom/android/internal/widget/LockscreenCredential;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2127
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->refreshPasswordEntryToNeedToConfirm()V

    goto/16 :goto_2

    .line 2129
    :cond_7
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->sec_lock_pin_easy_to_guess_body:I

    .line 2130
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 2131
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_lock_pin_easy_to_guess_use_anyway:I

    new-instance v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    .line 2132
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_lock_pin_easy_to_guess_change_pin:I

    new-instance v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    .line 2134
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 2138
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_2

    .line 2146
    :cond_8
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    goto :goto_2

    .line 2148
    :cond_9
    sget-object v4, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v4, :cond_f

    .line 2149
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockscreenCredential;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2151
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->enableStatusBar()V

    .line 2152
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->hideSoftInput()V

    .line 2153
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromAppLock:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForAppLockBackupKey:Z

    if-eqz v0, :cond_c

    .line 2154
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "applock_mQuality"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "ChooseLockPassword"

    if-eqz v0, :cond_b

    const-string v0, "Save PIN for AppLock"

    .line 2155
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_b
    const-string v0, "Save Password for AppLock"

    .line 2157
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 2160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2163
    :cond_c
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->startSaveAndFinish()V

    goto :goto_2

    .line 2165
    :cond_d
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2167
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 2169
    :cond_e
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 2170
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_f
    :goto_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1820
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 1824
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 1825
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "password"

    .line 1827
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    :goto_0
    return-void
.end method

.method public onChosenLockSaveFinished(ZLandroid/content/Intent;)V
    .locals 7

    .line 2782
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsSimplePassword:Z

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    const-string v3, "is_smpw_key"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2787
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v0

    const-string v1, "ChooseLockPassword"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2788
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2789
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x14000000

    new-instance v5, Landroid/os/UserHandle;

    .line 2791
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 2789
    invoke-static {v3, v2, v0, v4, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2792
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2795
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "PasswordPolicy is NULL!"

    .line 2797
    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2798
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2799
    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 2806
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->enableStatusBar()V

    .line 2807
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    if-nez v0, :cond_2

    .line 2809
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v4}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isFmmUnlockAllowed(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2810
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFmmService(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2812
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2816
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 2834
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p2}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2835
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p2}, Landroid/widget/ImeAwareEditText;->clear()V

    .line 2837
    :cond_3
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_4

    .line 2840
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForPrivateModeBackupKey:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForAppLockBackupKey:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFace:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsFromKnoxTwoStep:Z

    if-nez p2, :cond_4

    .line 2841
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {p2, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoInnerAuthUser(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_4

    move p2, v1

    goto :goto_2

    :cond_4
    move p2, v2

    .line 2842
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getChooseLockHintSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "justPPP"

    const-string v4, "fromSetupWizard"

    if-eqz v0, :cond_6

    .line 2844
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    const-string/jumbo v6, "secret_key"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v5, "set_redaction"

    .line 2845
    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2846
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2847
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFace:Z

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    if-nez p2, :cond_5

    .line 2848
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2850
    :cond_5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_8

    .line 2852
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 2854
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2855
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFace:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    if-nez v0, :cond_7

    .line 2856
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2859
    :cond_7
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 2863
    :cond_8
    :goto_3
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p2, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsFromKnoxTwoStep:Z

    if-nez v0, :cond_9

    .line 2864
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2866
    :cond_9
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p2, :cond_a

    .line 2867
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2869
    :cond_a
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p2, :cond_b

    .line 2870
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_b
    if-nez p1, :cond_c

    .line 2882
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsFromKnoxTwoStep:Z

    if-eqz p1, :cond_c

    .line 2883
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo p2, "trust"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/trust/TrustManager;

    .line 2884
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p1, p2, v2}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 2888
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 2313
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2314
    sget v0, Lcom/android/settings/R$id;->next_button:I

    if-ne p1, v0, :cond_0

    .line 2315
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto/16 :goto_1

    .line 2316
    :cond_0
    sget v0, Lcom/android/settings/R$id;->cancel_button:I

    if-ne p1, v0, :cond_1

    .line 2317
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleCancel()V

    goto/16 :goto_1

    .line 2318
    :cond_1
    sget v0, Lcom/android/settings/R$id;->emergencyCall:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 2321
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq p1, v0, :cond_2

    return-void

    .line 2325
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.app.telephonyui.action.OPEN_EMERGENCY_DIALER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10800000

    .line 2326
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "enable_ice_contact_list"

    .line 2328
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "enable_emergency_medical_info"

    .line 2329
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2331
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 2333
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 2336
    :cond_3
    sget v0, Lcom/android/settings/R$id;->radio_btn:I

    if-ne p1, v0, :cond_4

    .line 2337
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateNdigitsPinState()V

    goto :goto_1

    .line 2338
    :cond_4
    sget v0, Lcom/android/settings/R$id;->password_show_btn:I

    if-ne p1, v0, :cond_6

    .line 2339
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->getSelectionEnd()I

    move-result p1

    .line 2340
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 2341
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$drawable;->sec_lock_setting_btn_password_hide_mtrl:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2342
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2343
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    sget v2, Lcom/android/settings/R$string;->sec_lockpassword_show_button:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2344
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    goto :goto_0

    .line 2346
    :cond_5
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$drawable;->sec_lock_setting_btn_password_show_mtrl:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2347
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0, v2}, Landroid/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2348
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    sget v1, Lcom/android/settings/R$string;->sec_lockpassword_hide_button:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 2349
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    .line 2352
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 2354
    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 919
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 920
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 921
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 922
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/password/ChooseLockPassword;

    if-eqz v1, :cond_11

    .line 926
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 929
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 930
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsManagedProfile:Z

    const-string v1, "for_fingerprint"

    const/4 v2, 0x0

    .line 931
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    const-string v1, "for_face"

    .line 933
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFace:Z

    const-string v1, "for_biometrics"

    .line 934
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForBiometrics:Z

    const/high16 v1, 0x20000

    const-string v3, "lockscreen.password_type"

    .line 937
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordType:I

    const/16 v1, -0x2710

    const-string/jumbo v3, "unification_profile_id"

    .line 939
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    const-string/jumbo v1, "min_complexity"

    .line 942
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinComplexity:I

    const-string/jumbo v1, "min_metrics"

    .line 943
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PasswordMetrics;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinMetrics:Landroid/app/admin/PasswordMetrics;

    if-nez v1, :cond_0

    .line 944
    new-instance v1, Landroid/app/admin/PasswordMetrics;

    const/4 v3, -0x1

    invoke-direct {v1, v3}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinMetrics:Landroid/app/admin/PasswordMetrics;

    :cond_0
    const-string v1, "for_cred_req_boot"

    .line 946
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 948
    new-instance v4, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    invoke-direct {v4}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;-><init>()V

    .line 949
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "extra_require_password"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string/jumbo v1, "password"

    .line 951
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/internal/widget/LockscreenCredential;

    .line 954
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 956
    invoke-virtual {v4, v3}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setBlocking(Z)V

    .line 957
    invoke-virtual {v4, p0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    const/4 v7, 0x0

    .line 958
    iget v10, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    move-object v8, v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZLcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 961
    :cond_1
    new-instance v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mTextChangedHandler:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    .line 964
    new-instance v1, Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-direct {v1, v4, v5, v0}, Lcom/android/settings/password/LockTypePolicy;-><init>(Landroid/content/Context;ILandroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    if-nez p1, :cond_2

    .line 966
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    const-string/jumbo v4, "n_digits_pin_enabled"

    invoke-static {p1, v4, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsSupportConfirmPINWithoutTapping:I

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "simple_pin_enabled"

    .line 968
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsSupportConfirmPINWithoutTapping:I

    const-string/jumbo v1, "simple_pin_digits"

    .line 969
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNumDigitsConfirmPINWithoutTapping:I

    :goto_0
    const-string p1, "from_personal"

    .line 972
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromPersonalPage:Z

    const-string p1, "from_applock"

    .line 973
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromAppLock:Z

    const-string/jumbo p1, "personal_mQuality"

    .line 974
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPersonalPage_isPin:Z

    const-string p1, "fromSetupWizard"

    .line 975
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    const-string p1, "fromScreenLock"

    .line 976
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromScreenLockType:Z

    const-string/jumbo p1, "screen_lock_bio"

    .line 977
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromScreenLockBio:Z

    const-string/jumbo p1, "settings_bio"

    .line 978
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSettingsBio:Z

    .line 979
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mForFingerprint : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mForFace : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFace:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ChooseLockPassword"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "knoxEnforcePassword"

    .line 980
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mKnoxEnforcePassword:Z

    const-string p1, "forPrivateBackupKey"

    .line 981
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForPrivateModeBackupKey:Z

    const-string p1, "forAppLockBackupKey"

    .line 982
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForAppLockBackupKey:Z

    .line 984
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 985
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v4, "com.samsung.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsChangePwdRequired:Z

    .line 988
    :cond_4
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/app/admin/DevicePolicyManager;->semIsSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 989
    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    .line 991
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCheckSimplePassword = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "fmm_unlock_recovery"

    invoke-static {p1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_6

    move p1, v3

    goto :goto_2

    :cond_6
    move p1, v2

    :goto_2
    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsUnlockRecovery:Z

    const-string p1, "lockscreen.password_old"

    .line 994
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 996
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    const/4 v4, 0x4

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 997
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingTabletGui:Z

    .line 998
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingSetupTheme(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    .line 1000
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1001
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v4, "phone"

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1002
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v4, "statusbar"

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatusBarManager;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1005
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isWorkDeviceOrProfile()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1006
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v4, 0x2000

    invoke-virtual {p1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1010
    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->initializeStreamCipher()J

    move-result-wide v4

    .line 1011
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCreate - StreamCipher initialized with handle("

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "ChooseLockPassword.SDP"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "is_knox_password_secured"

    .line 1014
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 1016
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCreate - Password secured for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    .line 1019
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 1020
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v4

    .line 1019
    invoke-static {p1, v4, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->restoreCipherPassword(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Lcom/android/internal/widget/LockscreenCredential;

    :cond_8
    const-string p1, "is_knox_two_step"

    .line 1025
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsFromKnoxTwoStep:Z

    .line 1030
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p1

    if-nez p1, :cond_9

    const-string v0, "PasswordPolicy is NULL!"

    .line 1032
    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1033
    :cond_9
    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1034
    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    :cond_a
    :goto_3
    if-eqz p1, :cond_c

    .line 1040
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoInnerAuthUser(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1041
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequestedForInner()I

    move-result v2

    goto :goto_4

    .line 1044
    :cond_b
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequested()I

    move-result v2

    .line 1048
    :cond_c
    :goto_4
    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-eqz p1, :cond_d

    .line 1050
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result p1

    iput p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    .line 1054
    :cond_d
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSettingsBio:Z

    const/4 v0, 0x2

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromScreenLockBio:Z

    if-eqz p1, :cond_f

    .line 1055
    :cond_e
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEventDetail:I

    .line 1057
    :cond_f
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    if-nez p1, :cond_10

    .line 1058
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEventDetail:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEventDetail:I

    .line 1060
    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 923
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Fragment contained in wrong activity"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1146
    iget-boolean p3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingTabletGui:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1147
    sget p3, Lcom/android/settings/R$layout;->sec_choose_lock_password_tablet:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1148
    :cond_0
    iget-boolean p3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    if-eqz p3, :cond_1

    .line 1149
    sget p3, Lcom/android/settings/R$layout;->sec_setup_choose_lock_password:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1151
    :cond_1
    sget p3, Lcom/android/settings/R$layout;->sec_choose_lock_password:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1156
    :goto_0
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    if-eqz p2, :cond_2

    .line 1157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const p3, 0x1020002

    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 1158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 1159
    new-instance p0, Landroidx/appcompat/view/SeslContentViewInsetsCallback;

    .line 1160
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p3

    .line 1161
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-direct {p0, p3, v0}, Landroidx/appcompat/view/SeslContentViewInsetsCallback;-><init>(II)V

    .line 1162
    invoke-virtual {p2, p0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 1163
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1165
    sget p0, Lcom/android/settings/R$id;->bottom_bar:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1167
    new-instance p2, Landroidx/appcompat/view/SeslTranslateViewInsetsCallback;

    .line 1169
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-direct {p2, p0, p3, v0}, Landroidx/appcompat/view/SeslTranslateViewInsetsCallback;-><init>(Landroid/view/View;II)V

    .line 1167
    invoke-virtual {p0, p2}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    :cond_2
    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 1581
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    .line 1582
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_0

    .line 1583
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    const/4 v0, 0x0

    .line 1585
    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 1590
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1591
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 1592
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1595
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1596
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->hasChooseLockResult()Z

    move-result v0

    .line 1597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroy() - Has ChooseLock result? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChooseLockPassword.SDP"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 1600
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_1

    .line 1601
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 1603
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_2

    .line 1604
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 1606
    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_3

    .line 1607
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 1609
    :cond_3
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    if-eqz v0, :cond_4

    .line 1610
    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->clear()V

    .line 1611
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
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

    .line 2365
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    const/4 p0, 0x1

    return p0
.end method

.method protected onKeyBackPressedListener()Z
    .locals 0

    .line 684
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->isAsyncTaskRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1656
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    if-eqz p1, :cond_1

    .line 1657
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1658
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1659
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->finishWhenMultiwindowMode(Z)V

    return-void

    :cond_0
    const-string p0, "ChooseLockPassword"

    const-string p1, "If knox user or Dex stand alone mode, enable multi window"

    .line 1662
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 0

    .line 2308
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1725
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1726
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 1729
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1730
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    const-string/jumbo v2, "screen_lock_force_destroy"

    .line 1731
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1732
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1733
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1735
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->hideSoftInput()V

    .line 1736
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->enableStatusBar()V

    .line 1739
    :goto_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 1675
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 1678
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1679
    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->finishWhenMultiwindowMode(Z)V

    return-void

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 1685
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_1

    .line 1686
    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    goto :goto_0

    .line 1688
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    .line 1689
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    .line 1693
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsChangePwdRequired:Z

    if-eqz v0, :cond_2

    .line 1694
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->sec_password_expired:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1699
    :cond_2
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p0, "ChooseLockPassword"

    const-string v0, "PasswordPolicy is NULL!"

    .line 1701
    invoke-static {p0, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1703
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordVisibilityEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 1705
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1707
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->sec_lock_setting_btn_password_hide_mtrl:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1708
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1709
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    sget v2, Lcom/android/settings/R$string;->sec_lockpassword_show_button:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1710
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    goto :goto_1

    .line 1713
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v0, :cond_5

    .line 1714
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .line 1764
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1765
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ui_stage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsSupportConfirmPINWithoutTapping:I

    const-string/jumbo v1, "simple_pin_enabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1768
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNumDigitsConfirmPINWithoutTapping:I

    const-string/jumbo v1, "simple_pin_digits"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1769
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    const-string/jumbo v1, "password_shown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1785
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSaveInstanceState - Secured password required for user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ChooseLockPassword.SDP"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipher(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 1788
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1791
    :cond_0
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipher(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    :cond_1
    :goto_0
    const-string v3, "is_knox_password_secured"

    .line 1793
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    move-object v0, v2

    :goto_1
    const-string v3, "current_credential"

    const-string v4, "first_password"

    if-eqz v1, :cond_3

    .line 1800
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1801
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    .line 1803
    :cond_3
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1805
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p0, :cond_4

    .line 1806
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    .line 1807
    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1181
    invoke-super/range {p0 .. p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1184
    iget-boolean v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    if-eqz v3, :cond_0

    iget-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    if-eqz v4, :cond_0

    .line 1185
    move-object v4, v1

    check-cast v4, Lcom/google/android/setupdesign/GlifLayout;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    :cond_0
    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 1217
    iget-boolean v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    if-eqz v3, :cond_1

    .line 1218
    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class v6, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v3, v6}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v3

    check-cast v3, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 1219
    new-instance v6, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 1220
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/android/settings/R$string;->lockpassword_continue_label:I

    .line 1221
    invoke-virtual {v6, v7}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    .line 1222
    invoke-virtual {v6, v7}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v6

    .line 1223
    invoke-virtual {v6, v4}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v6

    sget v7, Lcom/android/settings/R$style;->SudGlifButton_Primary:I

    .line 1224
    invoke-virtual {v6, v7}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v6

    .line 1225
    invoke-virtual {v6}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v6

    .line 1219
    invoke-virtual {v3, v6}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 1227
    invoke-virtual {v3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getButtonContainer()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settings/R$color;->sec_lock_suw_background_color:I

    invoke-virtual {v7, v8, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1228
    invoke-virtual {v3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 1229
    new-instance v7, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    invoke-virtual {v6, v7}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListenerWhenDisabled(Landroid/view/View$OnClickListener;)V

    .line 1230
    iput-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    :cond_1
    const/high16 v3, 0x40000

    .line 1239
    iget v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordType:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v3, v6, :cond_3

    const/high16 v3, 0x50000

    if-eq v3, v6, :cond_3

    const/high16 v3, 0x60000

    if-ne v3, v6, :cond_2

    goto :goto_0

    :cond_2
    move v3, v8

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v7

    :goto_1
    iput-boolean v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    const/16 v3, 0x100

    .line 1244
    iput v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 1245
    iget v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinComplexity:I

    invoke-direct {v0, v6, v9}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->computeMinLengthByComplexity(II)I

    move-result v6

    iput v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 1246
    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinMetrics:Landroid/app/admin/PasswordMetrics;

    iget v9, v9, Landroid/app/admin/PasswordMetrics;->length:I

    .line 1247
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1246
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 1255
    sget v3, Lcom/android/settings/R$id;->password_entry:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImeAwareEditText;

    iput-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    .line 1257
    iget-boolean v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v3, :cond_5

    .line 1258
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1259
    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const v6, 0x800005

    invoke-virtual {v3, v6}, Landroid/widget/ImeAwareEditText;->setGravity(I)V

    .line 1260
    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v3}, Landroid/widget/ImeAwareEditText;->getPaddingEnd()I

    move-result v6

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v9}, Landroid/widget/ImeAwareEditText;->getPaddingTop()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/android/settings/R$dimen;->sec_lock_password_edit_padding_end:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iget-object v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v11}, Landroid/widget/ImeAwareEditText;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v3, v6, v9, v10, v11}, Landroid/widget/ImeAwareEditText;->setPaddingRelative(IIII)V

    goto :goto_2

    .line 1262
    :cond_4
    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const v6, 0x800003

    invoke-virtual {v3, v6}, Landroid/widget/ImeAwareEditText;->setGravity(I)V

    .line 1263
    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v3}, Landroid/widget/ImeAwareEditText;->getPaddingLeft()I

    move-result v6

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v9}, Landroid/widget/ImeAwareEditText;->getPaddingTop()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/android/settings/R$dimen;->sec_lock_password_edit_padding_end:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iget-object v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v11}, Landroid/widget/ImeAwareEditText;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v3, v6, v9, v10, v11}, Landroid/widget/ImeAwareEditText;->setPadding(IIII)V

    .line 1267
    :cond_5
    :goto_2
    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v3, v0}, Landroid/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1268
    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v3, v0}, Landroid/widget/ImeAwareEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1269
    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v3}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    .line 1272
    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v3, v0}, Landroid/widget/ImeAwareEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1273
    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const-string v6, "disableToolbar=true;lockScreenPasswordField=true;"

    invoke-virtual {v3, v6}, Landroid/widget/ImeAwareEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 1274
    iget v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    const/4 v6, 0x2

    if-lez v3, :cond_6

    .line 1275
    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    new-array v9, v6, [Landroid/text/InputFilter;

    iget-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->MaxLengthFilter:Landroid/text/InputFilter;

    aput-object v10, v9, v8

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    iget v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-direct {v10, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v9, v7

    invoke-virtual {v3, v9}, Landroid/widget/ImeAwareEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1278
    :cond_6
    new-instance v3, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-direct {v3, v9}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 1280
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 1282
    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v9}, Landroid/widget/ImeAwareEditText;->getInputType()I

    move-result v9

    .line 1283
    iget-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    iget-boolean v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v11, :cond_7

    goto :goto_3

    :cond_7
    const/16 v9, 0x12

    :goto_3
    invoke-virtual {v10, v9}, Landroid/widget/ImeAwareEditText;->setInputType(I)V

    .line 1285
    iget-boolean v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v9, :cond_8

    .line 1286
    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    sget v10, Lcom/android/settings/R$string;->unlock_set_unlock_password_title:I

    .line 1287
    invoke-virtual {v0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1286
    invoke-virtual {v9, v10}, Landroid/widget/ImeAwareEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1289
    :cond_8
    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    sget v10, Lcom/android/settings/R$string;->unlock_set_unlock_pin_title:I

    .line 1290
    invoke-virtual {v0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1289
    invoke-virtual {v9, v10}, Landroid/widget/ImeAwareEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1293
    :goto_4
    iget-object v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    .line 1294
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x1040356

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1293
    invoke-static {v10, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImeAwareEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1297
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "confirm_credentials"

    .line 1298
    invoke-virtual {v9, v10, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v2, :cond_9

    const-string/jumbo v11, "password"

    .line 1302
    invoke-virtual {v9, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 1311
    :cond_9
    iget-object v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v11}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v11

    const-string v12, " : "

    const-string v13, "ChooseLockPassword.SDP"

    const-string v14, "is_knox_password_secured"

    if-eqz v11, :cond_a

    if-nez v2, :cond_a

    .line 1313
    invoke-virtual {v9, v14, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 1315
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. onViewCreated - Password secured for user "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_a

    .line 1318
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 1319
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v5

    .line 1318
    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/knox/KnoxUtils;->restoreCipherPassword(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 1323
    :cond_a
    sget v4, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFooterLeftButton:Landroid/widget/Button;

    .line 1324
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1325
    sget v4, Lcom/android/settings/R$id;->next_button:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFooterRightButton:Landroid/widget/Button;

    .line 1326
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1328
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "fromKnoxKeyguard"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_b

    iget-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsChangePwdRequired:Z

    if-eqz v4, :cond_b

    .line 1329
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFooterLeftButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 1330
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFooterLeftButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1331
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMenu:Landroid/view/Menu;

    if-eqz v4, :cond_b

    .line 1332
    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1336
    :cond_b
    sget v4, Lcom/android/settings/R$id;->bottom_bar:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mBottomBar:Landroid/widget/LinearLayout;

    .line 1337
    sget v4, Lcom/android/settings/R$id;->choose_lock_password_main_view:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMainView:Landroid/widget/LinearLayout;

    .line 1339
    sget v4, Lcom/android/settings/R$id;->headerText:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 1340
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 1341
    iget-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    if-eqz v4, :cond_c

    iget-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    if-eqz v4, :cond_c

    .line 1342
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mBottomBar:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1345
    :cond_c
    sget v4, Lcom/android/settings/R$id;->helpText:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    if-eqz v4, :cond_15

    .line 1347
    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_d

    .line 1348
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    iget v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v7

    goto :goto_5

    :cond_d
    move v4, v8

    .line 1349
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 1350
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_11

    :cond_e
    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromPersonalPage:Z

    if-nez v5, :cond_11

    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromAppLock:Z

    if-nez v5, :cond_11

    if-nez v4, :cond_11

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    .line 1352
    invoke-virtual {v4}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v4

    if-nez v4, :cond_11

    .line 1353
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v6, :cond_f

    .line 1354
    sget v6, Lcom/android/settings/R$string;->sec_chooselock_warning_text_password:I

    goto :goto_6

    :cond_f
    sget v6, Lcom/android/settings/R$string;->sec_chooselock_warning_text_pin:I

    .line 1353
    :goto_6
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getColorAdjustmentType(Landroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isColorBlindSwitchEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1357
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1359
    :cond_10
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1361
    :cond_11
    iget-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mKnoxEnforcePassword:Z

    if-eqz v4, :cond_12

    .line 1362
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->sec_knox_finger_backup_password_helptext:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1363
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1366
    :cond_12
    iget-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsUnlockRecovery:Z

    if-eqz v4, :cond_13

    .line 1367
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1371
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v4, :cond_15

    .line 1372
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1373
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/ImeAwareEditText;->setImportantForAccessibility(I)V

    .line 1374
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v5, :cond_14

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_7

    .line 1375
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/settings/R$string;->sec_chooselock_warning_text_pin_content_description:I

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1374
    :goto_7
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1381
    :cond_15
    sget v4, Lcom/android/settings/R$id;->password_show_btn:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const v5, 0x1010036

    if-eqz v4, :cond_1a

    .line 1383
    iget-boolean v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v6, :cond_16

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_16
    if-eqz v2, :cond_17

    const-string/jumbo v4, "password_shown"

    .line 1384
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    .line 1385
    :cond_17
    iget-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    if-eqz v4, :cond_18

    .line 1386
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v15, Lcom/android/settings/R$drawable;->sec_lock_setting_btn_password_show_mtrl:I

    const/4 v11, 0x0

    invoke-virtual {v6, v15, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1387
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v4, v11}, Landroid/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1388
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    sget v6, Lcom/android/settings/R$string;->sec_lockpassword_hide_button:I

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_18
    const/4 v11, 0x0

    .line 1390
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v15, Lcom/android/settings/R$drawable;->sec_lock_setting_btn_password_hide_mtrl:I

    invoke-virtual {v6, v15, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1391
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1392
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    sget v6, Lcom/android/settings/R$string;->sec_lockpassword_show_button:I

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1394
    :goto_8
    iget-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    if-eqz v4, :cond_19

    iget-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    if-eqz v4, :cond_19

    .line 1395
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v15, Lcom/android/settings/R$color;->sesl_dialog_body_text_color_light:I

    const/4 v11, 0x0

    invoke-virtual {v6, v15, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_9

    .line 1397
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5, v8}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getColorFromAttribute(Landroid/content/Context;II)I

    move-result v4

    .line 1398
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/16 v7, 0xa0

    invoke-static {v6, v11, v4, v15, v7}, Lcom/samsung/android/settings/lockscreen/LockUtils;->setForegroundTintList(Landroid/content/Context;Landroid/view/View;ILandroid/graphics/PorterDuff$Mode;I)V

    .line 1400
    :goto_9
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1403
    :cond_1a
    sget v4, Lcom/android/settings/R$id;->radio_btn:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    const-string/jumbo v4, "ui_stage"

    if-eqz v1, :cond_1d

    .line 1405
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1406
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5, v8}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getColorFromAttribute(Landroid/content/Context;II)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 1409
    :cond_1b
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1410
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->isConfirmPINWithoutTappingOn()Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1411
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    invoke-static {v1, v5}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 1413
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/settings/R$string;->sec_n_digits_pin_witout_ok:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 1414
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/android/settings/R$string;->lockscreen_ok_button:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v8

    .line 1413
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1415
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1416
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSimplePinBtn:Landroid/widget/CheckedTextView;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setTextDirection(I)V

    if-eqz v2, :cond_1c

    .line 1420
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 1422
    invoke-static {v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 1423
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 1427
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setVisibilityNdigitsPinMenu()V

    .line 1430
    :cond_1d
    iget-boolean v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    if-nez v1, :cond_1e

    iget-boolean v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingTabletGui:Z

    if-nez v1, :cond_1e

    .line 1431
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMainView:Landroid/widget/LinearLayout;

    const/16 v5, 0xf

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 1432
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 1435
    :cond_1e
    iget-boolean v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_1f

    .line 1436
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinMetrics:Landroid/app/admin/PasswordMetrics;

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->customizePasswordMetrics(Landroid/app/admin/PasswordMetrics;)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinMetrics:Landroid/app/admin/PasswordMetrics;

    :cond_1f
    const-string/jumbo v1, "request_gk_pw_handle"

    .line 1439
    invoke-virtual {v9, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestGatekeeperPassword:Z

    if-nez v2, :cond_20

    .line 1443
    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    if-eqz v10, :cond_25

    .line 1445
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 1446
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 v2, 0x3a

    .line 1447
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title:I

    .line 1448
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 1449
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestGatekeeperPassword:Z

    .line 1450
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    iget v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 1451
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 1452
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    goto :goto_b

    .line 1457
    :cond_20
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1458
    invoke-virtual {v2, v14, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1460
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2. onViewCreated - Password secured for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_21
    move v1, v8

    :goto_a
    const-string v5, "first_password"

    .line 1466
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v1, :cond_22

    .line 1470
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v6

    .line 1469
    invoke-static {v5, v6, v7}, Lcom/samsung/android/settings/knox/KnoxUtils;->restoreCipherPassword(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPassword:Lcom/android/internal/widget/LockscreenCredential;

    .line 1473
    :cond_22
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 1475
    invoke-static {v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 1476
    invoke-virtual {v0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    :cond_23
    const-string v4, "current_credential"

    .line 1479
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v1, :cond_24

    .line 1483
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v4

    .line 1482
    invoke-static {v2, v4, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->restoreCipherPassword(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 1488
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "save_and_finish_worker"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    iput-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    .line 1492
    :cond_25
    :goto_b
    instance-of v1, v3, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_2f

    .line 1493
    check-cast v3, Lcom/android/settings/SettingsActivity;

    .line 1496
    iget-boolean v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_26

    sget v1, Lcom/android/settings/R$string;->sec_lockpassword_choose_your_password_header:I

    goto :goto_c

    .line 1497
    :cond_26
    sget v1, Lcom/android/settings/R$string;->sec_lockpassword_choose_your_pin_header:I

    .line 1498
    :goto_c
    iget-boolean v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromPersonalPage:Z

    if-nez v2, :cond_27

    iget-boolean v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForPrivateModeBackupKey:Z

    if-eqz v2, :cond_29

    .line 1499
    :cond_27
    iget-boolean v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPersonalPage_isPin:Z

    if-eqz v1, :cond_28

    sget v1, Lcom/android/settings/R$string;->sec_personal_page_pin_unlock_title:I

    goto :goto_d

    .line 1500
    :cond_28
    sget v1, Lcom/android/settings/R$string;->sec_personal_page_password_unlock_title:I

    .line 1503
    :cond_29
    :goto_d
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1515
    iget-object v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v2}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-boolean v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    if-nez v2, :cond_2e

    .line 1516
    iget-boolean v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_2b

    .line 1517
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1518
    sget v1, Lcom/android/settings/R$string;->sec_sf_set_password_header:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    .line 1520
    :cond_2a
    sget v1, Lcom/android/settings/R$string;->sec_knox_password_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    .line 1523
    :cond_2b
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v1}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1524
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_2c

    sget v1, Lcom/android/settings/R$string;->sec_sf_set_pin_header_jpn:I

    goto :goto_e

    :cond_2c
    sget v1, Lcom/android/settings/R$string;->sec_sf_set_pin_header:I

    :goto_e
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_f

    .line 1526
    :cond_2d
    sget v1, Lcom/android/settings/R$string;->sec_knox_pin_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1531
    :cond_2e
    :goto_f
    invoke-virtual {v3, v1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2f
    return-void
.end method

.method public selectOptionItem(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportActionBarButton(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1130
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 1132
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 1135
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleCancel()V

    :cond_2
    :goto_0
    return v1
.end method

.method protected setNextEnabled(Z)V
    .locals 2

    .line 2271
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 2272
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2274
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    if-eqz v0, :cond_1

    .line 2275
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 2276
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->sswl_bottom_primary_button_text_color:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 2278
    :cond_1
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFooterRightButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method protected setNextText(I)V
    .locals 2

    .line 2287
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 2288
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2290
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    if-eqz v0, :cond_1

    .line 2291
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2293
    :cond_1
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFooterRightButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void
.end method

.method protected updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 1

    .line 1845
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isVzwDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1846
    sget-object p1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 1848
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 1849
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 1850
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    if-eq v0, p1, :cond_1

    .line 1856
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 1857
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected updateUi()V
    .locals 9

    .line 2582
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2584
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v3, :cond_1

    .line 2585
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v3}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockscreenCredential;->createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v3

    goto :goto_1

    .line 2586
    :cond_1
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v3}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v3

    .line 2587
    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v4

    .line 2588
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v6, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v5, v6, :cond_7

    if-lez v4, :cond_5

    .line 2590
    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v4, v5, :cond_3

    .line 2592
    iget-boolean v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_2

    .line 2593
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$plurals;->sec_lockpassword_password_too_short:I

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-virtual {v4, v5, v6, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 2595
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getDefaultPINMessage()Ljava/lang/String;

    move-result-object v1

    .line 2597
    :goto_2
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2598
    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto/16 :goto_8

    .line 2600
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Lcom/android/internal/widget/LockscreenCredential;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2601
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->sec_lockpassword_press_continue:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2602
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto/16 :goto_8

    .line 2604
    :cond_4
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->convertErrorCodeToMessages()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    invoke-static {v5, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2605
    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_8

    .line 2612
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Lcom/android/internal/widget/LockscreenCredential;)Z

    move-result v4

    .line 2613
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->convertErrorCodeToMessages()[Ljava/lang/String;

    .line 2619
    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v5, :cond_6

    .line 2620
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$plurals;->sec_lockpassword_password_too_short:I

    iget v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v2

    invoke-virtual {v5, v6, v7, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 2622
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getDefaultPINMessage()Ljava/lang/String;

    move-result-object v1

    .line 2624
    :goto_3
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2627
    invoke-virtual {p0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_8

    .line 2638
    :cond_7
    sget-object v6, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v5, v6, :cond_9

    sget-object v6, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v5, v6, :cond_8

    goto :goto_4

    .line 2641
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateHeaderText()Ljava/lang/String;

    move-result-object v5

    .line 2642
    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 2639
    :cond_9
    :goto_4
    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v7, :cond_a

    iget v5, v5, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    goto :goto_5

    :cond_a
    iget v5, v5, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    :goto_5
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_6
    if-eqz v0, :cond_b

    if-lez v4, :cond_b

    goto :goto_7

    :cond_b
    move v1, v2

    .line 2644
    :goto_7
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 2663
    :goto_8
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v1, v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextText(I)V

    .line 2664
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 2665
    invoke-virtual {v3}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method

.method validatePassword(Lcom/android/internal/widget/LockscreenCredential;)Z
    .locals 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1876
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p1

    .line 1877
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinComplexity:I

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v0, v1, v2, p1}, Landroid/app/admin/PasswordMetrics;->validatePassword(Landroid/app/admin/PasswordMetrics;IZ[B)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    .line 1882
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v2, v1

    .line 1884
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1885
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-lt v4, v5, :cond_1

    const/16 v5, 0x7f

    if-le v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1888
    :cond_1
    :goto_1
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    .line 1895
    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1896
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPasswordHistoryHashFactor()[B

    move-result-object v2

    iget v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 1895
    invoke-virtual {v0, p1, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory([B[BI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1897
    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v2, 0xe

    invoke-direct {v0, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    .line 1898
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    :cond_3
    const-string v0, ""

    move-object v4, v0

    move v2, v1

    .line 1904
    :goto_2
    array-length v5, p1

    if-ge v2, v5, :cond_4

    .line 1905
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, p1, v2

    int-to-char v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1908
    :cond_4
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    const/16 v2, -0x2710

    const/16 v5, 0x13

    const/16 v6, 0x12

    const/16 v7, 0x16

    const/16 v8, 0x11

    const/16 v9, 0x10

    const/16 v10, 0xf

    if-eq p1, v2, :cond_12

    .line 1909
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p1

    .line 1910
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    if-eqz p1, :cond_1b

    if-eqz v2, :cond_1b

    .line 1912
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v11

    if-nez v11, :cond_5

    .line 1913
    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_5

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_5

    .line 1914
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v11

    if-nez v11, :cond_5

    .line 1915
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v11

    if-nez v11, :cond_5

    .line 1916
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v11

    if-nez v11, :cond_5

    .line 1917
    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_5

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1b

    .line 1921
    :cond_5
    iget-object v11, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v11, :cond_6

    .line 1922
    invoke-virtual {v11}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v11

    move v12, v1

    .line 1923
    :goto_3
    array-length v13, v11

    if-ge v12, v13, :cond_6

    .line 1924
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, v11, v12

    int-to-char v0, v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1928
    :cond_6
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenNumericSequence(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenNumericSequence(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1929
    :cond_7
    iget-object v11, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1930
    iget-object v11, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v12, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v12, v10}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1933
    :cond_8
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenCharacterSequence(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenCharacterSequence(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1934
    :cond_9
    iget-object v10, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1935
    iget-object v10, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v11, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v11, v9}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1938
    :cond_a
    invoke-virtual {p1, v4, v0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1939
    :cond_b
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1940
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v9, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v9, v8}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1943
    :cond_c
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenData(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1944
    :cond_d
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1945
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v8, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v8, v7}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1948
    :cond_e
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasMaxRepeatedCharacters(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasMaxRepeatedCharacters(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1949
    :cond_f
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1950
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v7, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v7, v6}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1953
    :cond_10
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 1954
    :cond_11
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1955
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v0, v5}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1961
    :cond_12
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p1

    if-nez p1, :cond_13

    const-string p1, "ChooseLockPassword"

    const-string v0, "PasswordPolicy is NULL!"

    .line 1963
    invoke-static {p1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0

    .line 1967
    :cond_13
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v2

    if-nez v2, :cond_14

    .line 1968
    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_14

    .line 1969
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v2

    if-nez v2, :cond_14

    .line 1970
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v2

    if-nez v2, :cond_14

    .line 1971
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v2

    if-nez v2, :cond_14

    .line 1972
    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 1975
    :cond_14
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v2, :cond_15

    .line 1976
    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v2

    move v11, v1

    .line 1977
    :goto_4
    array-length v12, v2

    if-ge v11, v12, :cond_15

    .line 1978
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, v2, v11

    int-to-char v0, v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1982
    :cond_15
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenNumericSequence(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1983
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1984
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v11, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v11, v10}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1987
    :cond_16
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenCharacterSequence(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1988
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1989
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v10, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v10, v9}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1992
    :cond_17
    invoke-virtual {p1, v4, v0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1993
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1994
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v2, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v2, v8}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1997
    :cond_18
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1998
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1999
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v2, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v2, v7}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2002
    :cond_19
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasMaxRepeatedCharacters(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2003
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2004
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v2, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v2, v6}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2007
    :cond_1a
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 2008
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 2009
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v0, v5}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2015
    :cond_1b
    :goto_5
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    if-eqz p1, :cond_1d

    .line 2016
    invoke-direct {p0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 2017
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 2018
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2021
    :cond_1c
    invoke-direct {p0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 2022
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 2023
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v2, 0x15

    invoke-direct {v0, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2027
    :cond_1d
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne p1, v0, :cond_20

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_20

    .line 2028
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    if-nez p1, :cond_1e

    invoke-direct {p0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1f

    invoke-direct {p0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_6

    :cond_1e
    move v3, v1

    :cond_1f
    :goto_6
    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsSimplePassword:Z

    .line 2032
    :cond_20
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method
