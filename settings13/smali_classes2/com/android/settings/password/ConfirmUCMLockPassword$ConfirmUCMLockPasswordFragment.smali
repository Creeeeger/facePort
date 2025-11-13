.class public Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmUCMLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/android/settings/password/CredentialCheckResultTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmUCMLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmUCMLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;,
        Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;
    }
.end annotation


# static fields
.field private static mConfirmUCMLockPasswordFragment:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;


# instance fields
.field private final MSG_SHOW_SOFTINPUT:I

.field private mAgentTitle:Ljava/lang/String;

.field private mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mBlockImm:Z

.field private mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

.field private mCsName:Ljava/lang/String;

.field private mCsNameUri:Ljava/lang/String;

.field private mDetailsTextView:Landroid/widget/TextView;

.field private mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mFromSettings:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsKnoxTheme:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNumWrongConfirmAttempts:I

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private mPinMaxLength:I

.field private mPinMinLength:I

.field private mPukMaxLength:I

.field private mPukMinLength:I

.field mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

.field private mStorageType:Ljava/lang/String;

.field protected mTester:Landroid/os/Handler;

.field private mUserId:I

.field private mUsingFingerprint:Z

.field private mVendorID:Ljava/lang/String;

.field private mVendorIDView:Landroid/widget/TextView;

.field private progDlg:Landroid/app/ProgressDialog;

.field private result:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCredentialCheckResultTracker(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCsName(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCsNameUri(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsNameUri:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFromSettings(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mFromSettings:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImm(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasswordEntry(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmBlockImm(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mBlockImm:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingLockCheck(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Landroid/os/AsyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPinMaxLength(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPinMaxLength:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPinMinLength(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPinMinLength:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPukMaxLength(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPukMaxLength:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPukMinLength(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPukMinLength:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDefaultDetails(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultDetails(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetRemainingCount(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getRemainingCount(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUCMService(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misInternalActivity(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->isInternalActivity()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetState(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->resetState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldAutoShowSoftKeyboard(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->shouldAutoShowSoftKeyboard()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowMISCInfo(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->showMISCInfo(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSoftInput(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->showSoftInput()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartProgress(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->startProgress()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopProgress(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->stopProgress()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDetails(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->updateDetails(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 165
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 119
    iput v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->MSG_SHOW_SOFTINPUT:I

    .line 120
    new-instance v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;-><init>(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    iput-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    .line 130
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 134
    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUsingFingerprint:Z

    .line 139
    new-instance v2, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;-><init>(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    iput-object v2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mTester:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 157
    iput-object v2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsNameUri:Ljava/lang/String;

    .line 158
    iput-object v2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsName:Ljava/lang/String;

    .line 159
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mFromSettings:Z

    .line 161
    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->result:Z

    .line 162
    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mIsKnoxTheme:Z

    .line 166
    sput-object p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mConfirmUCMLockPasswordFragment:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    return-void
.end method

.method private getActiveViews()[Landroid/view/View;
    .locals 2

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 486
    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/view/View;

    .line 492
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/View;

    return-object p0
.end method

.method private getCsName()Ljava/lang/String;
    .locals 2

    const-string v0, "com.samsung.ucs.ucsservice"

    .line 230
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 233
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ConfirmUCMLockPasswordFragment"

    const-string v0, "failed to get UCM service"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    .line 237
    :cond_1
    :try_start_0
    iget p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 239
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    const-string v0, ""

    .line 242
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    return-object v1
.end method

.method private getDefaultDetails(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 409
    sget p0, Lcom/android/settings/R$string;->ucm_failed_to_connect_smartcard:I

    return p0

    .line 407
    :pswitch_0
    sget p0, Lcom/android/settings/R$string;->success_puk_string:I

    return p0

    .line 401
    :pswitch_1
    sget p0, Lcom/android/settings/R$string;->ucm_confirm_pin:I

    return p0

    .line 405
    :pswitch_2
    sget p0, Lcom/android/settings/R$string;->ucm_enter_new_pin:I

    return p0

    .line 403
    :pswitch_3
    sget p0, Lcom/android/settings/R$string;->ucm_enter_puk:I

    return p0

    .line 399
    :pswitch_4
    sget p0, Lcom/android/settings/R$string;->confirm_ucm_your_pin_header:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultHeader()I
    .locals 0

    .line 392
    sget p0, Lcom/android/settings/R$string;->lockpassword_confirm_your_pin_header:I

    return p0
.end method

.method private getRemainingCount(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    .line 416
    sget v2, Lcom/android/settings/R$string;->keyguard_password_attempt_count_pin_code:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 418
    :cond_0
    sget v2, Lcom/android/settings/R$string;->keyguard_password_attempts_count_pin_code:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 2

    const-string p0, "com.samsung.ucs.ucsservice"

    .line 426
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 425
    invoke-static {p0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-nez p0, :cond_0

    .line 428
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConfirmUCMLockPasswordFragment"

    const-string v1, "Failed to get UCM service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method private getVendorID()V
    .locals 5

    const-string v0, ""

    const-string v1, "com.samsung.ucs.ucsservice"

    .line 436
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 435
    invoke-static {v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    const-string v2, "ConfirmUCMLockPasswordFragment"

    if-nez v1, :cond_1

    .line 438
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "failed to get UCM service"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 442
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsNameUri:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string/jumbo v3, "vendorId"

    .line 446
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 447
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 450
    :cond_3
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vendorID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 448
    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "NO vendorID info"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    const-string/jumbo v3, "storageType"

    .line 452
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStorageType:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 453
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    .line 456
    :cond_6
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "storageType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStorageType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 454
    :cond_7
    :goto_2
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "NO storageType info"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    const-string/jumbo v3, "title"

    .line 458
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mAgentTitle:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 459
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    .line 462
    :cond_9
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "agentTitle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mAgentTitle:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 460
    :cond_a
    :goto_4
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "NO agentTitle info"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 465
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_5
    return-void
.end method

.method private handleNext()V
    .locals 2

    .line 715
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConfirmUCMLockPasswordFragment"

    const-string v1, "handleNext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 717
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 718
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 722
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_0

    .line 726
    :cond_2
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->next(Ljava/lang/String;)V

    return-void

    .line 723
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->resetState()V

    return-void
.end method

.method private isInternalActivity()Z
    .locals 0

    .line 730
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$InternalActivity;

    return p0
.end method

.method private onPasswordChecked(ZLandroid/content/Intent;IIZ)V
    .locals 1

    .line 741
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPasswordChecked, matched: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", effectiveUserId:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ConfirmUCMLockPasswordFragment"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_0
    iget-object p3, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    if-eqz p1, :cond_2

    if-eqz p5, :cond_1

    .line 746
    iget-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget-object p5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-static {p1, p3, p5, v0, p4}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->reportSuccessfulAttempt(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;IZ)V

    .line 752
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 753
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->checkForPendingIntent(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method private resetState()V
    .locals 3

    .line 615
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mBlockImm:Z

    if-eqz v0, :cond_0

    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getErrorState()I

    move-result v0

    const v1, 0x10006

    if-eq v0, v1, :cond_2

    .line 617
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ConfirmUCMLockPasswordFragment"

    const-string/jumbo v1, "resetState set the passwordentry as null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 621
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 622
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 623
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 624
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 625
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->shouldAutoShowSoftKeyboard()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 626
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->showSoftInput()V

    .line 630
    :cond_3
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->resetState(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method private shouldAutoShowSoftKeyboard()Z
    .locals 0

    .line 636
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result p0

    return p0
.end method

.method private showMISCInfo(Z)V
    .locals 2

    .line 779
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showMISCInfo called : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/settings/ucm/UCMUtils;->miscInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmUCMLockPasswordFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mIsKnoxTheme:Z

    if-eqz v0, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    .line 783
    sget-object v1, Lcom/samsung/android/settings/ucm/UCMUtils;->miscInfo:Ljava/lang/String;

    goto :goto_1

    .line 784
    :cond_2
    sget-object p1, Lcom/samsung/android/settings/ucm/UCMUtils;->miscInfo:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 785
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/settings/ucm/UCMUtils;->miscInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 788
    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->updateVendor(Ljava/lang/String;)V

    return-void
.end method

.method private showSoftInput()V
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mTester:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 2

    .line 735
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 736
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private startProgress()V
    .locals 2

    .line 170
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConfirmUCMLockPasswordFragment"

    const-string/jumbo v1, "startProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->progDlg:Landroid/app/ProgressDialog;

    if-eqz p0, :cond_1

    .line 173
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 175
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopProgress()V
    .locals 2

    .line 181
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConfirmUCMLockPasswordFragment"

    const-string/jumbo v1, "stopProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->progDlg:Landroid/app/ProgressDialog;

    if-eqz p0, :cond_1

    .line 184
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateDetails(Ljava/lang/String;)V
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    .line 536
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateVendor(Ljava/lang/String;)V
    .locals 0

    .line 547
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorIDView:Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    .line 550
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method protected authenticationSucceeded()V
    .locals 5

    .line 584
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget v2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 585
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

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

    .line 678
    sget p0, Lcom/android/settings/R$string;->sec_lock_last_attempt_before_wipe_user:I

    return p0

    .line 683
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

    .line 672
    :cond_1
    sget p0, Lcom/android/settings/R$string;->sec_lock_last_attempt_before_wipe_profile:I

    return p0

    .line 666
    :cond_2
    sget p0, Lcom/android/settings/R$string;->sec_lock_last_attempt_before_wipe_device:I

    return p0
.end method

.method protected getLastTryOverrideErrorMessageId(I)Ljava/lang/String;
    .locals 0

    const-string p0, "UNDEFINED"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method public getSettingsConfig()V
    .locals 3

    .line 792
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get settings config for the vendor : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsNameUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmUCMLockPasswordFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_0
    new-instance v0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsNameUri:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;-><init>(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Ljava/lang/String;I)V

    const-string p0, ""

    .line 794
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 758
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->next_button:I

    if-ne v0, v1, :cond_0

    .line 759
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 760
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->cancel_button:I

    if-ne p1, v0, :cond_1

    .line 761
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 762
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 193
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 195
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->build()Lcom/android/settings/password/ChooseLockSettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    .line 196
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-string v2, "android.intent.extra.USER_ID"

    const/4 v3, -0x1

    .line 198
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    if-ne v2, v3, :cond_0

    .line 200
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iput v2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    :cond_0
    const-string v2, "lockscreen.ucscredentialstoragename"

    .line 203
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 204
    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mFromSettings:Z

    .line 205
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsName:Ljava/lang/String;

    goto :goto_0

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getCsName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsName:Ljava/lang/String;

    .line 209
    :goto_0
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v2

    const-string v3, "ConfirmUCMLockPasswordFragment"

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCsName:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, "lockscreen.ucscredentialstoragenameuri"

    .line 210
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 211
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsNameUri:Ljava/lang/String;

    goto :goto_1

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsName:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsNameUri:Ljava/lang/String;

    .line 215
    :goto_1
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCsNameUri:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsNameUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_4
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetmCurrentPassword()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    if-nez v0, :cond_5

    .line 218
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "mCurrentPassword is null, check again:"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz p1, :cond_6

    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    .line 222
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mNumWrongConfirmAttempts:I

    .line 225
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getVendorID()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 253
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->progDlg:Landroid/app/ProgressDialog;

    .line 254
    sget v2, Lcom/android/settings/R$string;->ucm_loading:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 255
    iget-object v3, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->progDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->progDlg:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 257
    iget-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->progDlg:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 258
    iget-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->progDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 259
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v2

    const-string v5, "ConfirmUCMLockPasswordFragment"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCreateView : check1: :"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    iget-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    .line 262
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/password/ConfirmUCMLockPassword;

    .line 264
    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 265
    sget v6, Lcom/android/settings/R$layout;->sec_confirm_lock_password_tablet:I

    goto :goto_0

    .line 266
    :cond_1
    sget v6, Lcom/android/settings/R$layout;->sec_confirm_lock_password:I

    :goto_0
    move-object/from16 v7, p2

    .line 263
    invoke-virtual {v0, v6, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 272
    iget-object v7, v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v7, v0, v6, v8}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->switchViewIfNeeded(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v7

    .line 273
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    iput-boolean v0, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mIsKnoxTheme:Z

    .line 276
    sget v0, Lcom/android/settings/R$id;->button_layout:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v6, 0x8

    if-eqz v0, :cond_2

    .line 278
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 281
    :cond_2
    sget v0, Lcom/android/settings/R$id;->password_entry:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 282
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 283
    iget-object v0, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 284
    iget-object v0, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v8, 0x2000000

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 285
    new-instance v0, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v8, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v0, v8}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v0, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 287
    sget v0, Lcom/android/settings/R$id;->headerText:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 288
    sget v0, Lcom/android/settings/R$id;->detailsText:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    .line 289
    iput-object v0, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    .line 290
    sget v0, Lcom/android/settings/R$id;->ucmvendorIDText:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorIDView:Landroid/widget/TextView;

    .line 291
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v8, "input_method"

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 297
    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    sget v0, Lcom/android/settings/R$id;->bottom_bar:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NullPointerException "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v2, "com.android.settings.ConfirmCredentials.header"

    .line 306
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v5, "com.android.settings.ConfirmCredentials.details"

    .line 308
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 310
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 311
    iget-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mAgentTitle:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 312
    iget-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mAgentTitle:Ljava/lang/String;

    goto :goto_2

    .line 314
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultHeader()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 317
    :cond_5
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 318
    iget-object v5, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {v5}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v5

    const/high16 v6, 0x10000

    if-eq v5, v6, :cond_7

    const v6, 0x10001

    if-ne v5, v6, :cond_6

    goto :goto_3

    :cond_6
    const-string v5, ""

    goto :goto_4

    .line 322
    :cond_7
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v1, v5}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultDetails(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    .line 323
    invoke-virtual {v5}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getAttemptsRemaining()I

    move-result v5

    invoke-direct {v1, v5}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getRemainingCount(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 326
    :cond_8
    :goto_4
    iget-object v6, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_9

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :cond_9
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->updateDetails(Ljava/lang/String;)V

    .line 330
    :cond_a
    iget-boolean v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mIsKnoxTheme:Z

    if-eqz v2, :cond_b

    .line 331
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/android/settings/R$color;->work_profile_lock_screen_text_color:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 333
    iget-object v5, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorIDView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 334
    :cond_b
    iget-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 335
    iget-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorIDView:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :cond_c
    :goto_5
    iget-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    .line 341
    iget-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v5, 0x12

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 343
    new-instance v2, Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const-wide/16 v10, 0xdc

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v13, 0x3f800000    # 1.0f

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10c000e

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v14

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 347
    new-instance v2, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v16

    const-wide/16 v17, 0x6e

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f000000    # 0.5f

    .line 350
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10c000f

    .line 349
    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v21

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 351
    iget-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v5, "check_lock_result"

    .line 354
    invoke-virtual {v2, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/password/CredentialCheckResultTracker;

    iput-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    if-nez v2, :cond_d

    .line 356
    new-instance v2, Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-direct {v2}, Lcom/android/settings/password/CredentialCheckResultTracker;-><init>()V

    iput-object v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    .line 357
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    iget-object v6, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v2, v6, v5}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 358
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_d
    const-string v2, "confirm_credentials"

    .line 361
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 362
    iget-boolean v5, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mFromSettings:Z

    if-nez v5, :cond_e

    if-eqz v2, :cond_e

    const-string/jumbo v2, "request_gk_pw_handle"

    .line 363
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 365
    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 367
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v4, 0x64

    .line 369
    invoke-virtual {v2, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    sget v4, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title:I

    .line 370
    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    .line 371
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    .line 372
    invoke-virtual {v2, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget v2, v1, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    .line 373
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    .line 378
    :cond_e
    iget-object v0, v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->onCreateView(Landroid/view/View;)V

    return-object v7
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;IIZ)V
    .locals 0

    .line 388
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->onPasswordChecked(ZLandroid/content/Intent;IIZ)V

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

    .line 772
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->handleNext()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 3

    .line 509
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 510
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 511
    iget-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 515
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 516
    iput-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 519
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 520
    iput-object v1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    .line 524
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->clearResult()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 567
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 568
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConfirmUCMLockPasswordFragment"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 570
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->resetState()V

    .line 571
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    .line 572
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getSettingsConfig()V

    .line 573
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mTester:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 578
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 579
    iget p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mNumWrongConfirmAttempts:I

    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onShowDefault()V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getDefaultHeader()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected onShowError()V
    .locals 1

    .line 597
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 644
    iget-boolean p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mBlockImm:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 648
    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;-><init>(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 2

    .line 476
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 477
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 478
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 479
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 480
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mBlockImm:Z

    return-void
.end method

.method public startEnterAnimation()V
    .locals 3

    .line 497
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 498
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getActiveViews()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$2;-><init>(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
