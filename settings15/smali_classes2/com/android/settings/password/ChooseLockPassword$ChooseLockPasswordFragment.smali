.class public Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/android/settings/password/SaveAndFinishWorker$Listener;
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
        Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    }
.end annotation


# instance fields
.field public final MaxLengthFilter:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$2;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAutoPinConfirmOption:Landroid/widget/CheckBox;

.field public mBottomBar:Landroid/widget/LinearLayout;

.field public mCheckSimplePassword:Z

.field public mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

.field public mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

.field public mEasyPinAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field public mFirstPassword:Lcom/android/internal/widget/LockscreenCredential;

.field public mFooterLeftButton:Landroid/widget/Button;

.field public mFooterRightButton:Landroid/widget/Button;

.field public mForAppLockBackupKey:Z

.field public mForFace:Z

.field public mForFingerprint:Z

.field public mFromAppLock:Z

.field public mFromPrevPassword:Z

.field public mFromSetupWizard:Z

.field public mHeaderText:Landroid/widget/TextView;

.field public mHelpText:Landroid/widget/TextView;

.field public mImm:Landroid/view/inputmethod/InputMethodManager;

.field public mIsAlphaMode:Z

.field public mIsApplyingSetupTheme:Z

.field public mIsApplyingTabletGui:Z

.field public mIsAutoPinConfirmOptionSetManually:Z

.field public mIsChangePwdRequired:Z

.field public mIsFromKnoxTwoStep:Z

.field public mIsPasswordShown:Z

.field public mIsSimplePassword:Z

.field public mIsUnlockRecovery:Z

.field public mKnoxEnforcePassword:Z

.field public mLayout:Lcom/google/android/setupdesign/GlifLayout;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockTypePolicy:Lcom/samsung/android/settings/password/LockTypePolicy;

.field public mMainView:Landroid/widget/LinearLayout;

.field public mMenu:Landroid/view/Menu;

.field public mMinComplexity:I

.field public mMinMetrics:Landroid/app/admin/PasswordMetrics;

.field public mMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

.field public mOldPassword:Lcom/android/internal/widget/LockscreenCredential;

.field public mPasswordEntry:Landroid/widget/ImeAwareEditText;

.field public mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field public mPasswordHistoryHashFactor:[B

.field public mPasswordMaxLength:I

.field public mPasswordMinLength:I

.field public mPasswordShowButton:Landroid/widget/ImageButton;

.field public mPasswordType:I

.field public mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field public mPwdChangeEnforceStatus:I

.field public mPwdChangeTimeout:I

.field public mRequestGatekeeperPassword:Z

.field public mRequestWriteRepairModePassword:Z

.field public mSaveAndFinishWorker:Lcom/android/settings/password/SaveAndFinishWorker;

.field public final mScreenOffReceiver:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$1;

.field public mStatusBarDisableCount:I

.field public mStatusBarManager:Landroid/app/StatusBarManager;

.field public mTextChangedHandler:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

.field public mUCMChangePinMessage:Landroid/widget/TextView;

.field public mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public mUnificationProfileId:I

.field public mUserId:I

.field public mValidationErrors:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinComplexity:I

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    const/high16 v1, 0x20000

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordType:I

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsSimplePassword:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    const/16 v1, 0x100

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEasyPinAlertDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mScreenOffReceiver:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$1;

    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$2;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->MaxLengthFilter:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$2;

    return-void
.end method

.method public static checkRepeatingChars(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v4, v0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v1, v5, :cond_0

    add-int/2addr v4, v2

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    const/4 v1, 0x3

    if-lt v4, v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "has internal loop password : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ChooseLockPassword"

    invoke-static {v0, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static checkSequentialChars(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    const/4 v3, 0x1

    const-string v4, "has Sequential password"

    const-string v5, "ChooseLockPassword"

    if-gt v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x4

    const-string v6, "0123456789"

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "9876543210"

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_1

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v5, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    const/16 v2, 0x16

    if-gt v1, v2, :cond_5

    add-int/lit8 v2, v1, 0x4

    const-string v6, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "zyxwvutsrqponmlkjihgfedcba"

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_4

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {v5, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mTextChangedHandler:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    sget p1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->$r8$clinit:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final convertErrorCodeToMessages()[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/PasswordValidationError;

    iget v3, v2, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    const/16 v4, -0x2710

    const v5, 0x7f141bde

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown error validating password: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChooseLockPassword"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const v2, 0x7f141bdc

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v2, :cond_0

    const v2, 0x7f1415ea

    goto :goto_1

    :cond_0
    const v2, 0x7f14251c

    :goto_1
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v2, :cond_1

    const v2, 0x7f1415f3

    goto :goto_2

    :cond_1
    const v2, 0x7f14251d

    :goto_2
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    const v2, 0x7f1415e8

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    if-eq v2, v4, :cond_4

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v2

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v4

    if-le v2, v4, :cond_3

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v2

    :cond_3
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f141759

    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_5
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    if-eq v2, v4, :cond_7

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v2

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v4

    if-le v2, v4, :cond_6

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v2

    :cond_6
    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f1417ed

    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_6
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    if-eq v2, v4, :cond_a

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v2

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v4

    if-le v2, v4, :cond_9

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v2

    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f141bdd

    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_7
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    if-eq v2, v4, :cond_d

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v2

    goto :goto_6

    :cond_b
    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v4

    if-le v2, v4, :cond_c

    invoke-virtual {v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v2

    :cond_c
    :goto_6
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    new-instance v3, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;I)V

    const-string v4, "Settings.PASSWORD_RECENTLY_USED"

    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    new-instance v3, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;I)V

    const-string v4, "Settings.PIN_RECENTLY_USED"

    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    const v4, 0x7f1415ef

    invoke-static {v3, v2, v4}, Lcom/android/settingslib/utils/StringUtil;->getIcuPluralsString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f12004a

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f12004c

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f12004b

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f120049

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f12004d

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f120048

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_10
    const v2, 0x7f14251a

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_11
    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v3, :cond_f

    const v3, 0x7f14225c

    goto :goto_7

    :cond_f
    const v3, 0x7f142269

    :goto_7
    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    const v4, 0x7f1415f7

    invoke-static {v3, v2, v4}, Lcom/android/settingslib/utils/StringUtil;->getIcuPluralsString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_13
    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v2, v2, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f120037

    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getDefaultPINMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_14
    const v2, 0x7f142516

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    nop

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

.method public final enableStatusBar$1()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getDefaultPINMessage()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/settings/knox/UCMUtils;->isEnforcedCredentialStorageExistAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/settings/knox/UCMUtils;->isSupportChangePin(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/settings/knox/UCMUtils;->mPinMinLength:I

    sget v1, Lcom/samsung/android/settings/knox/UCMUtils;->mPinMaxLength:I

    if-ne v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f142fff

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/knox/UCMUtils;->mPinMaxLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f143000

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f120038

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14226a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1c

    return p0
.end method

.method public final getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getPwdPolicy () "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooseLockPassword"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

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

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error fetching admin uid "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    sget-object p1, Lcom/samsung/android/settings/knox/KnoxUtils;->mDeviceType:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p0, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p0, v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    :cond_2
    :goto_2
    return-object v2
.end method

.method public getRedactionInterstitialIntent(Landroidx/fragment/app/FragmentActivity;)Landroid/content/Intent;
    .locals 0

    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {p1, p0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final handleCancel()V
    .locals 9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockscreen.password_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/high16 v1, 0x20000

    const/4 v3, 0x1

    if-eq v1, v0, :cond_1

    const/high16 v1, 0x30000

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/16 v5, 0x1c

    if-ne v1, v4, :cond_3

    if-eqz v0, :cond_2

    const/16 v0, 0x113e

    goto :goto_2

    :cond_2
    const/16 v0, 0x1140

    :goto_2
    invoke-static {v5, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_4

    :cond_3
    if-eqz v0, :cond_4

    const/16 v0, 0x113f

    goto :goto_3

    :cond_4
    const/16 v0, 0x1141

    :goto_3
    invoke-static {v5, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :goto_4
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsChangePwdRequired:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v4, :cond_6

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    if-lez v1, :cond_6

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    int-to-long v7, v1

    mul-long/2addr v7, v5

    add-long/2addr v7, v3

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/high16 v5, 0x10000000

    invoke-static {v3, v2, v1, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v7, v8, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "ChooseLockPassword"

    const-string v1, "PasswordPolicy is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setPwdChangeRequested(I)Z

    :goto_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_6
    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_8

    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final handleNext$2()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/SaveAndFinishWorker;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    sget-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    iget-boolean v4, v4, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    if-eqz v4, :cond_3

    :cond_2
    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFooterRightButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_4

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const v2, 0x7f14226c

    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_c

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Lcom/android/internal/widget/LockscreenCredential;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_7

    :goto_1
    move v0, v3

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_8

    goto :goto_1

    :cond_8
    new-instance v1, Landroid/app/admin/PasswordMetrics;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    const/4 v4, 0x4

    iput v4, v1, Landroid/app/admin/PasswordMetrics;->length:I

    iput v2, v1, Landroid/app/admin/PasswordMetrics;->seqLength:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinComplexity:I

    invoke-static {v1, v2, v0}, Landroid/app/admin/PasswordMetrics;->validateCredential(Landroid/app/admin/PasswordMetrics;ILcom/android/internal/widget/LockscreenCredential;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->refreshPasswordEntryToNeedToConfirm()V

    goto/16 :goto_8

    :cond_9
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEasyPinAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_a
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f142266

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    iget-object v1, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-boolean v3, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    new-instance v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;I)V

    const v2, 0x7f142268

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;I)V

    const v2, 0x7f142267

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEasyPinAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->hideSoftInput$2()V

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEasyPinAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_8

    :cond_b
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    goto/16 :goto_8

    :cond_c
    sget-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_18

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockscreenCredential;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->enableStatusBar$1()V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->hideSoftInput$2()V

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromAppLock:Z

    const-string v2, "ChooseLockPassword"

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForAppLockBackupKey:Z

    if-eqz v0, :cond_f

    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "applock_mQuality"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Save PIN for AppLock"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_e
    const-string v0, "Save Password for AppLock"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_f
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/SaveAndFinishWorker;

    if-eqz v0, :cond_10

    const-string p0, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/WindowInsetsController;->hide(I)V

    :cond_11
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    new-instance v0, Lcom/android/settings/password/SaveAndFinishWorker;

    invoke-direct {v0}, Lcom/android/settings/password/SaveAndFinishWorker;-><init>()V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveAndFinishWorker$Listener;)V

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestGatekeeperPassword:Z

    iput-boolean v2, v0, Lcom/android/settings/password/SaveAndFinishWorker;->mRequestGatekeeperPassword:Z

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestWriteRepairModePassword:Z

    iput-boolean v2, v0, Lcom/android/settings/password/SaveAndFinishWorker;->mRequestWriteRepairModePassword:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v0}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/SaveAndFinishWorker;

    const-string v4, "save_and_finish_worker"

    invoke-virtual {v0, v1, v2, v4, v3}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    const/16 v4, -0x2710

    if-eq v2, v4, :cond_13

    const-string v2, "unification_profile_credential"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/SaveAndFinishWorker;

    iget v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    iput v4, v2, Lcom/android/settings/password/SaveAndFinishWorker;->mUnificationProfileId:I

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/password/SaveAndFinishWorker;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    goto :goto_5

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_12

    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12
    :goto_4
    throw p0

    :cond_13
    :goto_5
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoPinConfirmOption:Landroid/widget/CheckBox;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_14

    move v2, v3

    goto :goto_6

    :cond_14
    move v2, v1

    :goto_6
    if-eqz v2, :cond_15

    goto :goto_7

    :cond_15
    move v3, v1

    :goto_7
    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setAutoPinConfirm(ZI)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/SaveAndFinishWorker;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/settings/password/SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)V

    goto :goto_8

    :cond_16
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_17
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_18
    :goto_8
    return-void
.end method

.method public final hideSoftInput$2()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const-string p1, "password"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    :goto_0
    return-void
.end method

.method public final onChosenLockSaveFinished(Landroid/content/Intent;Z)V
    .locals 9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsSimplePassword:Z

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    const-string v3, "is_smpw_key"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v0

    const-string v1, "ChooseLockPassword"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const/high16 v5, 0x14000000

    invoke-static {v3, v2, v0, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "PasswordPolicy is NULL!"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setPwdChangeRequested(I)Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->enableStatusBar$1()V

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromPrevPassword:Z

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/samsung/android/settings/password/LockTypePolicy;

    invoke-virtual {v4}, Lcom/samsung/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isFmmUnlockAllowed(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFmmService(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/samsung/android/settings/password/LockTypePolicy;

    iget-boolean v1, v0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsOrganizationOwned:Z

    const-string v3, "secret_key"

    const/4 v4, 0x1

    if-nez v1, :cond_7

    iget-boolean v0, v0, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsManagedProfile:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromPrevPassword:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->resetHint(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reset_credential_from_previous"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "save_previous_credential_description_show_count"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz p2, :cond_5

    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromPrevPassword:Z

    if-nez v5, :cond_5

    const/4 v5, 0x3

    if-ge v0, v5, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    sget-object v7, Lcom/samsung/android/settings/lockscreen/LockUtils;->CONFIG_LOCK_SCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    sget v7, Lcom/samsung/android/settings/lockscreen/PreviousPasswordDescriptionActivity;->$r8$clinit:I

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/samsung/android/settings/lockscreen/PreviousPasswordDescriptionActivity;

    invoke-direct {v7, v5, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "android.intent.extra.USER_ID"

    invoke-virtual {v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    add-int/2addr v0, v4

    invoke-static {v6, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getChooseLockHintSettingsIntent(Landroidx/fragment/app/FragmentActivity;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v5, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromPrevPassword:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getChooseLockHintSettingsIntent(Landroidx/fragment/app/FragmentActivity;I)Landroid/content/Intent;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getChooseLockHintSettingsIntent(Landroidx/fragment/app/FragmentActivity;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_8
    :goto_3
    if-nez p2, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForAppLockBackupKey:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFace:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsFromKnoxTwoStep:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoInnerAuthUser(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromPrevPassword:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getRedactionInterstitialIntent(Landroidx/fragment/app/FragmentActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_9

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :cond_9
    const-string v0, "need_to_launch_ls_notification"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p1, :cond_b

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsFromKnoxTwoStep:Z

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_b
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_c
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_d
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    if-eqz p1, :cond_e

    const v0, 0x7f140164

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_e
    if-nez p2, :cond_f

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsFromKnoxTwoStep:Z

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "trust"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/trust/TrustManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p1, p2, v2}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    :cond_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0a54

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext$2()V

    goto/16 :goto_1

    :cond_0
    const v0, 0x7f0a02cf

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleCancel()V

    goto/16 :goto_1

    :cond_1
    const v0, 0x7f0a05a6

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq p1, v0, :cond_2

    return-void

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.app.telephonyui.action.OPEN_EMERGENCY_DIALER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10800000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "enable_ice_contact_list"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "enable_emergency_medical_info"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

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

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const v0, 0x7f0a0b2d

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->getSelectionEnd()I

    move-result p1

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0809e5

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const v2, 0x7f142506

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0809e6

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0, v2}, Landroid/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const v1, 0x7f142505

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/password/ChooseLockPassword;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoInnerAuthUser(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/os/UserManager;->isPrivateProfile()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/os/UserManager;->isProfile()Z

    :goto_0
    const-string v0, "for_fingerprint"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    const-string v0, "for_face"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFace:Z

    const-string v0, "for_biometrics"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    const-string v0, "lockscreen.password_type"

    const/high16 v1, 0x20000

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordType:I

    const-string v0, "unification_profile_id"

    const/16 v1, -0x2710

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    const-string v0, "min_complexity"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinComplexity:I

    const-string v0, "min_metrics"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/admin/PasswordMetrics;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinMetrics:Landroid/app/admin/PasswordMetrics;

    if-nez v0, :cond_3

    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinMetrics:Landroid/app/admin/PasswordMetrics;

    :cond_3
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mTextChangedHandler:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    new-instance v0, Lcom/samsung/android/settings/password/LockTypePolicy;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-direct {v0, v3, v1, p1}, Lcom/samsung/android/settings/password/LockTypePolicy;-><init>(ILandroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/samsung/android/settings/password/LockTypePolicy;

    const-string v0, "from_applock"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromAppLock:Z

    const-string v0, "fromSetupWizard"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mForFingerprint : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mForFace : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooseLockPassword"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "forAppLockBackupKey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForAppLockBackupKey:Z

    const-string v0, "knoxEnforcePassword"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mKnoxEnforcePassword:Z

    const-string v0, "previous_credential"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromPrevPassword:Z

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.samsung.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsChangePwdRequired:Z

    :cond_5
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->semIsSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_6

    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "mCheckSimplePassword = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "fmm_unlock_recovery"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsUnlockRecovery:Z

    const-string v0, "lockscreen.password_old"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Lcom/android/internal/widget/LockscreenCredential;

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    const/4 v4, 0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingTabletGui:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingSetupTheme(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v4, "statusbar"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/settings/knox/UCMUtils;->isEnforcedCredentialStorageExistAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/settings/knox/UCMUtils;->isSupportChangePin(I)Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lcom/samsung/android/settings/knox/UCMUtils;->mPinMinLength:I

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    sget v0, Lcom/samsung/android/settings/knox/UCMUtils;->mPinMaxLength:I

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    :cond_8
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/samsung/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/samsung/android/settings/password/LockTypePolicy;->isWorkDeviceOrProfile()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v4, 0x2000

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    :cond_9
    invoke-static {}, Lcom/samsung/android/knox/dar/StreamCipher;->getInstance()Lcom/samsung/android/knox/dar/StreamCipher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/dar/StreamCipher;->issueKeyStream()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "onCreate - StreamCipher initialized with handle("

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ChooseLockPassword.SDP"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/samsung/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/samsung/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/settings/knox/UCMUtils;->isEnforcedCredentialStorageExistAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/settings/knox/UCMUtils;->isSupportChangePin(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const-string v0, "is_knox_password_secured"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onCreate - Password secured for user "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->restoreCipherPassword(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Lcom/android/internal/widget/LockscreenCredential;

    :cond_b
    const-string v0, "is_knox_two_step"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsFromKnoxTwoStep:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mScreenOffReceiver:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$1;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p1

    if-nez p1, :cond_c

    const-string v0, "PasswordPolicy is NULL!"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    :goto_3
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoInnerAuthUser(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequestedForInner()I

    move-result v2

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isChangeRequested()I

    move-result v2

    :cond_e
    :goto_4
    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result p1

    iput p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    :cond_f
    return-void

    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Fragment contained in wrong activity"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-boolean p3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingTabletGui:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const p3, 0x7f0d085d

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-boolean p3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    if-eqz p3, :cond_1

    const p3, 0x7f0d09a7

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p3, 0x7f0d085b

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p2, 0x1020002

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/settings/password/LockContentViewInsetsCallback;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-direct {p2, p0, p3, v0}, Lcom/samsung/android/settings/password/LockContentViewInsetsCallback;-><init>(Landroid/view/View;II)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-object p1
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->runFinalization()V

    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/samsung/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/samsung/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/samsung/android/settings/knox/KnoxUtils;->mHasChooseLockResult:Z

    const-string v1, "onDestroy() - Has ChooseLock result? "

    const-string v2, "ChooseLockPassword.SDP"

    invoke-static {v1, v2, v0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_3
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    if-eqz p0, :cond_4

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
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

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext$2()V

    const/4 p0, 0x1

    return p0
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f141548

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string p0, "ChooseLockPassword"

    const-string p1, "If Dex stand alone mode, enable multi window"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final onPause()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/SaveAndFinishWorker;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/password/SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveAndFinishWorker$Listener;)V

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

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "screen_lock_force_destroy"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->hideSoftInput$2()V

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->enableStatusBar$1()V

    :goto_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f141548

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/SaveAndFinishWorker;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/settings/password/SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveAndFinishWorker$Listener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsChangePwdRequired:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f14225a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p0, "ChooseLockPassword"

    const-string v0, "PasswordPolicy is NULL!"

    invoke-static {p0, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordVisibilityEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0809e5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const v2, 0x7f142506

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ui_stage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "password_shown"

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/samsung/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/samsung/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/settings/knox/UCMUtils;->isEnforcedCredentialStorageExistAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/settings/knox/UCMUtils;->isSupportChangePin(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v2, v1

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onSaveInstanceState - Secured password required for user "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    const-string v3, "ChooseLockPassword.SDP"

    invoke-static {v0, v2, v3}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipher(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipher(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    :cond_3
    :goto_1
    const-string v2, "is_knox_password_secured"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v2, v1

    move-object v1, v0

    move v0, v3

    :goto_2
    const-string v3, "current_credential"

    const-string v4, "first_password"

    if-eqz v0, :cond_4

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_5
    :goto_3
    const-string v0, "auto_confirm_option_set_manually"

    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAutoPinConfirmOptionSetManually:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    if-eqz v3, :cond_0

    iget-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lcom/google/android/setupdesign/GlifLayout;

    iput-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    :cond_0
    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class v6, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v3, v6}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v3

    check-cast v3, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f1415de

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda2;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;I)V

    new-instance v8, Lcom/google/android/setupcompat/template/FooterButton;

    const v9, 0x7f15045d

    invoke-direct {v8, v6, v7, v4, v9}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {v3, v8}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    invoke-virtual {v3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getButtonContainer()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06062e

    invoke-virtual {v7, v8, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v6, v3, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    iput-object v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance v7, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda2;

    const/4 v8, 0x1

    invoke-direct {v7, v0, v8}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;I)V

    iput-object v7, v6, Lcom/google/android/setupcompat/template/FooterButton;->onClickListenerWhenDisabled:Landroid/view/View$OnClickListener;

    iput-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    :cond_1
    iget v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordType:I

    const/high16 v6, 0x40000

    const/high16 v7, 0x50000

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v6, v3, :cond_3

    if-eq v7, v3, :cond_3

    const/high16 v6, 0x60000

    if-ne v6, v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v9

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v8

    :goto_1
    iput-boolean v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    iget v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/settings/knox/UCMUtils;->isEnforcedCredentialStorageExistAsUser(I)Z

    move-result v3

    const/16 v10, 0x8

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/settings/knox/UCMUtils;->isSupportChangePin(I)Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Lcom/samsung/android/settings/knox/UCMUtils;->mPinMinLength:I

    iput v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    sget v3, Lcom/samsung/android/settings/knox/UCMUtils;->mPinMaxLength:I

    iput v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    goto :goto_4

    :cond_4
    const/16 v3, 0x100

    iput v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    iget v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinComplexity:I

    if-ne v12, v7, :cond_6

    iget-boolean v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x6

    goto :goto_2

    :cond_5
    move v7, v10

    goto :goto_2

    :cond_6
    const/4 v7, 0x4

    :goto_2
    if-gt v7, v11, :cond_7

    goto :goto_3

    :cond_7
    move v11, v7

    :goto_3
    iput v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinMetrics:Landroid/app/admin/PasswordMetrics;

    iget v7, v7, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    :goto_4
    const v3, 0x7f0a0b27

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImeAwareEditText;

    iput-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    iget-boolean v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    const v7, 0x7f070b71

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const v11, 0x800005

    invoke-virtual {v3, v11}, Landroid/widget/ImeAwareEditText;->setGravity(I)V

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v3}, Landroid/widget/ImeAwareEditText;->getPaddingEnd()I

    move-result v11

    iget-object v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v12}, Landroid/widget/ImeAwareEditText;->getPaddingTop()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iget-object v13, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v13}, Landroid/widget/ImeAwareEditText;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v3, v11, v12, v7, v13}, Landroid/widget/ImeAwareEditText;->setPaddingRelative(IIII)V

    goto :goto_5

    :cond_8
    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const v11, 0x800003

    invoke-virtual {v3, v11}, Landroid/widget/ImeAwareEditText;->setGravity(I)V

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v3}, Landroid/widget/ImeAwareEditText;->getPaddingLeft()I

    move-result v11

    iget-object v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v12}, Landroid/widget/ImeAwareEditText;->getPaddingTop()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iget-object v13, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v13}, Landroid/widget/ImeAwareEditText;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v3, v11, v12, v7, v13}, Landroid/widget/ImeAwareEditText;->setPadding(IIII)V

    :cond_9
    :goto_5
    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v3, v0}, Landroid/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v3, v0}, Landroid/widget/ImeAwareEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v3}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v3, v0}, Landroid/widget/ImeAwareEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const-string v7, "disableToolbar=true;lockScreenPasswordField=true;"

    invoke-virtual {v3, v7}, Landroid/widget/ImeAwareEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    const/4 v7, 0x2

    if-lez v3, :cond_a

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    new-array v11, v7, [Landroid/text/InputFilter;

    iget-object v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->MaxLengthFilter:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$2;

    aput-object v12, v11, v9

    new-instance v12, Landroid/text/InputFilter$LengthFilter;

    iget v13, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-direct {v12, v13}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v12, v11, v8

    invoke-virtual {v3, v11}, Landroid/widget/ImeAwareEditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_a
    new-instance v3, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-direct {v3, v11}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const v3, 0x7f0a015c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoPinConfirmOption:Landroid/widget/CheckBox;

    const v3, 0x7f0a015d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-boolean v9, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAutoPinConfirmOptionSetManually:Z

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoPinConfirmOption:Landroid/widget/CheckBox;

    if-eqz v3, :cond_b

    new-instance v11, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda2;

    const/4 v12, 0x2

    invoke-direct {v11, v0, v12}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;I)V

    invoke-virtual {v3, v11}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoPinConfirmOption:Landroid/widget/CheckBox;

    if-eqz v3, :cond_d

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setAccessibilityLiveRegion(I)V

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoPinConfirmOption:Landroid/widget/CheckBox;

    invoke-virtual {v3, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoPinConfirmOption:Landroid/widget/CheckBox;

    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/samsung/android/settings/password/LockTypePolicy;

    iget-boolean v3, v3, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsSecureFolderId:Z

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoPinConfirmOption:Landroid/widget/CheckBox;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getColorFromAttribute(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/CheckBox;->setTextColor(I)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoPinConfirmOption:Landroid/widget/CheckBox;

    invoke-static {v3, v11}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v11, 0x7f1425af

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f14163c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v3, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoPinConfirmOption:Landroid/widget/CheckBox;

    invoke-virtual {v11, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoPinConfirmOption:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTextDirection(I)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v4}, Landroid/widget/ImeAwareEditText;->getInputType()I

    move-result v4

    iget-object v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    iget-boolean v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v12, :cond_e

    goto :goto_6

    :cond_e
    const/16 v4, 0x12

    :goto_6
    invoke-virtual {v11, v4}, Landroid/widget/ImeAwareEditText;->setInputType(I)V

    iget-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const v11, 0x7f14281d

    invoke-virtual {v0, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/ImeAwareEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_f
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const v11, 0x7f14281f

    invoke-virtual {v0, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/ImeAwareEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v11, "confirm_credentials"

    invoke-virtual {v4, v11, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v2, :cond_10

    const-string v12, "password"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    :cond_10
    iget-object v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/samsung/android/settings/password/LockTypePolicy;

    invoke-virtual {v12}, Lcom/samsung/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v12

    const-string v13, " : "

    const-string v14, "ChooseLockPassword.SDP"

    const-string v15, "is_knox_password_secured"

    if-nez v12, :cond_12

    iget v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v12}, Lcom/samsung/android/settings/knox/UCMUtils;->isEnforcedCredentialStorageExistAsUser(I)Z

    move-result v12

    if-eqz v12, :cond_11

    iget v12, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v12}, Lcom/samsung/android/settings/knox/UCMUtils;->isSupportChangePin(I)Z

    move-result v12

    if-eqz v12, :cond_11

    goto :goto_8

    :cond_11
    move v12, v11

    goto :goto_9

    :cond_12
    :goto_8
    if-nez v2, :cond_11

    invoke-virtual {v4, v15, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "1. onViewCreated - Password secured for user "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_11

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    move v12, v11

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v10

    invoke-static {v5, v10, v11}, Lcom/samsung/android/settings/knox/KnoxUtils;->restoreCipherPassword(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    :goto_9
    const v5, 0x7f0a02cf

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFooterLeftButton:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a0a54

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFooterRightButton:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v10, "fromKnoxKeyguard"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_13

    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsChangePwdRequired:Z

    if-eqz v5, :cond_13

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFooterLeftButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFooterLeftButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMenu:Landroid/view/Menu;

    if-eqz v5, :cond_13

    invoke-interface {v5, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_13
    const v5, 0x7f0a0240

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mBottomBar:Landroid/widget/LinearLayout;

    const v5, 0x7f0a0375

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMainView:Landroid/widget/LinearLayout;

    const v5, 0x7f0a070e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-static {v5, v10}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    if-eqz v5, :cond_14

    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    if-eqz v5, :cond_14

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mBottomBar:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_14
    const v5, 0x7f0a072a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    if-eqz v5, :cond_20

    iget v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    const/16 v6, -0x2710

    if-eq v5, v6, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    iget v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v5

    if-eqz v5, :cond_15

    move v5, v8

    goto :goto_a

    :cond_15
    move v5, v9

    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v10, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    invoke-static {v6, v10}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    iget-object v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/samsung/android/settings/password/LockTypePolicy;

    iget-boolean v10, v6, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsKnoxId:Z

    if-eqz v10, :cond_19

    iget-boolean v6, v6, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsSecureFolderId:Z

    if-eqz v6, :cond_19

    iget-boolean v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-nez v6, :cond_17

    iget-object v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v11

    iget v8, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v11, v8}, Lcom/samsung/android/settings/knox/KnoxUtils;->isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_16

    const v8, 0x7f14226b

    goto :goto_b

    :cond_16
    const v8, 0x7f14226d

    :goto_b
    invoke-virtual {v10, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_17
    iget-object v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    iget v11, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v10, v11}, Lcom/samsung/android/settings/knox/KnoxUtils;->isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z

    move-result v10

    if-eqz v10, :cond_18

    const v10, 0x7f14225e

    goto :goto_c

    :cond_18
    const v10, 0x7f14225f

    :goto_c
    invoke-virtual {v8, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d
    iget-object v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_19
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v6, v7, :cond_1c

    :cond_1a
    iget-boolean v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromAppLock:Z

    if-nez v6, :cond_1c

    if-nez v5, :cond_1c

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/samsung/android/settings/password/LockTypePolicy;

    iget-boolean v5, v5, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsKnoxId:Z

    if-nez v5, :cond_1c

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    iget-boolean v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v7, :cond_1b

    const v7, 0x7f142260

    goto :goto_e

    :cond_1b
    const v7, 0x7f14226e

    :goto_e
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1c
    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mKnoxEnforcePassword:Z

    if-eqz v5, :cond_1d

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1424d2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1d
    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsUnlockRecovery:Z

    if-eqz v5, :cond_1e

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f

    :cond_1e
    const/4 v6, 0x4

    :goto_f
    iget v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v5}, Lcom/samsung/android/settings/knox/UCMUtils;->isEnforcedCredentialStorageExistAsUser(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    iget v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v5}, Lcom/samsung/android/settings/knox/UCMUtils;->isSupportChangePin(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1f
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_20
    const v5, 0x7f0a0b2d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_27

    iget-boolean v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v6, :cond_21

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_21
    if-eqz v2, :cond_22

    const-string v5, "password_shown"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    :cond_22
    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsPasswordShown:Z

    if-eqz v5, :cond_23

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0809e6

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v5, v8}, Landroid/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const v6, 0x7f142505

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_23
    const/4 v8, 0x0

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0809e5

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    const v6, 0x7f142506

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_10
    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    if-eqz v5, :cond_24

    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    if-eqz v5, :cond_24

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060841

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_11

    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getColorFromAttribute(Landroid/content/Context;)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    if-eqz v6, :cond_26

    if-nez v7, :cond_25

    goto :goto_11

    :cond_25
    const/16 v6, 0xa0

    invoke-static {v5, v6}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/view/View;->setForegroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setForegroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_26
    :goto_11
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordShowButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_27
    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    if-nez v5, :cond_28

    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingTabletGui:Z

    if-nez v5, :cond_28

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0a041d

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0a041c

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5, v6}, Lcom/samsung/android/settings/lockscreen/LockUtils;->addHorizontalSpacing(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;)V

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMainView:Landroid/widget/LinearLayout;

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060738

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :cond_28
    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v5, :cond_2a

    iget-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinMetrics:Landroid/app/admin/PasswordMetrics;

    iget v6, v5, Landroid/app/admin/PasswordMetrics;->letters:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_29

    iput v7, v5, Landroid/app/admin/PasswordMetrics;->letters:I

    :cond_29
    iput-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinMetrics:Landroid/app/admin/PasswordMetrics;

    :cond_2a
    const-string v5, "request_gk_pw_handle"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestGatekeeperPassword:Z

    const-string v5, "request_write_repair_mode_pw"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestWriteRepairModePassword:Z

    if-nez v2, :cond_2b

    sget-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    if-eqz v12, :cond_31

    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 v4, 0x3a

    iput v4, v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    const v4, 0x7f142819

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mTitle:Ljava/lang/CharSequence;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    iget-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestGatekeeperPassword:Z

    iput-boolean v4, v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    iget-boolean v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestWriteRepairModePassword:Z

    iput-boolean v4, v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestWriteRepairModePassword:Z

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    iput v4, v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    invoke-virtual {v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    goto/16 :goto_14

    :cond_2b
    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/samsung/android/settings/password/LockTypePolicy;

    invoke-virtual {v4}, Lcom/samsung/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v4

    if-nez v4, :cond_2d

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v4}, Lcom/samsung/android/settings/knox/UCMUtils;->isEnforcedCredentialStorageExistAsUser(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v4}, Lcom/samsung/android/settings/knox/UCMUtils;->isSupportChangePin(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_12

    :cond_2c
    move v4, v9

    goto :goto_13

    :cond_2d
    :goto_12
    invoke-virtual {v2, v15, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "2. onViewCreated - Password secured for user "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    const-string v5, "first_password"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v4, :cond_2e

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/samsung/android/settings/knox/KnoxUtils;->restoreCipherPassword(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPassword:Lcom/android/internal/widget/LockscreenCredential;

    :cond_2e
    const-string v5, "ui_stage"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2f

    invoke-static {v5}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0, v5}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    :cond_2f
    const-string v5, "auto_confirm_option_set_manually"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAutoPinConfirmOptionSetManually:Z

    const-string v5, "current_credential"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v4, :cond_30

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->restoreCipherPassword(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    :cond_30
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v4, "save_and_finish_worker"

    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/password/SaveAndFinishWorker;

    iput-object v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/SaveAndFinishWorker;

    :cond_31
    :goto_14
    instance-of v2, v3, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_38

    check-cast v3, Lcom/android/settings/SettingsActivity;

    iget-boolean v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v2, :cond_32

    const v2, 0x7f142261

    goto :goto_15

    :cond_32
    const v2, 0x7f142270

    :goto_15
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockTypePolicy:Lcom/samsung/android/settings/password/LockTypePolicy;

    iget-boolean v5, v4, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsKnoxId:Z

    if-eqz v5, :cond_36

    iget-boolean v5, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    if-nez v5, :cond_36

    iget-boolean v2, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v2, :cond_34

    iget-boolean v2, v4, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsSecureFolderId:Z

    if-eqz v2, :cond_33

    const v2, 0x7f142739

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    :cond_33
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v2, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v4, 0x7f1424d9

    invoke-virtual {v0, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    :cond_34
    iget-boolean v2, v4, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsSecureFolderId:Z

    if-eqz v2, :cond_35

    const v2, 0x7f14273c

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v4, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v2, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v4, 0x7f1424db

    invoke-virtual {v0, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_36
    :goto_16
    const v4, 0x7f0a02f4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUCMChangePinMessage:Landroid/widget/TextView;

    iget v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/settings/knox/UCMUtils;->isEnforcedCredentialStorageExistAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-boolean v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-nez v1, :cond_37

    const v1, 0x7f142813

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "CHANGE_PIN_AFTER_ENFORCE_KEYGUARD"

    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUCMChangePinMessage:Landroid/widget/TextView;

    const v4, 0x7f142ffd

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUCMChangePinMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_37
    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_38
    return-void
.end method

.method public final refreshPasswordEntryToNeedToConfirm()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFooterRightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMenu:Landroid/view/Menu;

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const-string v3, "disableToolbar=true;disableEnterKey=true;lockScreenPasswordField=true;"

    invoke-virtual {v0, v3}, Landroid/widget/ImeAwareEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->MaxLengthFilter:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$2;

    aput-object v3, v2, v1

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImeAwareEditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v0, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPassword:Lcom/android/internal/widget/LockscreenCredential;

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->requestAccessibilityFocus()Z

    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoPinConfirmOption:Landroid/widget/CheckBox;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method

.method public final setAutoPinConfirmOption(IZ)V
    .locals 3

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isAutoPinConfirmFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoPinConfirmOption:Landroid/widget/CheckBox;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/settings/knox/UCMUtils;->isUCMKeyguardEnabledAsUser(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoInnerAuthUser(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    xor-int/2addr v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-nez p2, :cond_4

    const/4 p2, 0x6

    if-lt p1, p2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoPinConfirmOption:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAutoPinConfirmOptionSetManually:Z

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoPinConfirmOption:Landroid/widget/CheckBox;

    if-lt p1, p2, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoPinConfirmOption:Landroid/widget/CheckBox;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoPinConfirmOption:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final setNextEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060a6b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFooterRightButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public final updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isVzwDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public updateUi()V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/SaveAndFinishWorker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v3}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v3}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v6, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const v7, 0x7f120037

    if-ne v5, v6, :cond_7

    if-lez v4, :cond_5

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v4, v5, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v7, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getDefaultPINMessage()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto/16 :goto_9

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Lcom/android/internal/widget/LockscreenCredential;)Z

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setAutoPinConfirmOption(IZ)V

    if-eqz v5, :cond_4

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v4, 0x7f14225d

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto/16 :goto_9

    :cond_4
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const-string v4, "\n"

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->convertErrorCodeToMessages()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto/16 :goto_9

    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Lcom/android/internal/widget/LockscreenCredential;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->convertErrorCodeToMessages()[Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setAutoPinConfirmOption(IZ)V

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v7, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getDefaultPINMessage()Ljava/lang/String;

    move-result-object v2

    :goto_3
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    goto :goto_9

    :cond_7
    sget-object v6, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v5, v6, :cond_b

    sget-object v6, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v5, v6, :cond_8

    goto :goto_5

    :cond_8
    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-nez v5, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getDefaultPINMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_9
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v6, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_a
    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f14225b

    invoke-virtual {p0, v6, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_b
    :goto_5
    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v7, :cond_c

    iget v5, v5, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    goto :goto_6

    :cond_c
    iget v5, v5, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    :goto_6
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_7
    if-eqz v0, :cond_d

    if-lez v4, :cond_d

    goto :goto_8

    :cond_d
    move v1, v2

    :goto_8
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    :goto_9
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v1, v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_e

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_e
    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromSetupWizard:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsApplyingSetupTheme:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_f
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFooterRightButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(I)V

    :goto_a
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    invoke-virtual {v3}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method

.method public validatePassword(Lcom/android/internal/widget/LockscreenCredential;)Z
    .locals 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinMetrics:Landroid/app/admin/PasswordMetrics;

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMinComplexity:I

    invoke-static {v1, v2, p1}, Landroid/app/admin/PasswordMetrics;->validateCredential(Landroid/app/admin/PasswordMetrics;ILcom/android/internal/widget/LockscreenCredential;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v1}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-lt v4, v5, :cond_1

    const/16 v5, 0x7f

    if-le v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v1, Lcom/android/internal/widget/PasswordValidationError;

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    :cond_2
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p1

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordHistoryHashFactor:[B

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    :goto_2
    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFromPrevPassword:Z

    if-eqz v5, :cond_4

    const/16 v5, -0x26ab

    goto :goto_3

    :cond_4
    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    :goto_3
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHistoryHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordHistoryHashFactor:[B

    :cond_5
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordHistoryHashFactor:[B

    iget v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v1, p1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory([B[BI)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v1, 0xe

    invoke-direct {p1, v1}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    :cond_6
    const-string p1, ""

    move-object v3, p1

    move v1, v2

    :goto_4
    array-length v4, v0

    if-ge v1, v4, :cond_7

    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v1

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    const/4 v1, 0x1

    const/16 v4, -0x2710

    const/16 v5, 0x13

    const/16 v6, 0x12

    const/16 v7, 0x16

    const/16 v8, 0x11

    const/16 v9, 0x10

    const/16 v10, 0xf

    if-eq v0, v4, :cond_15

    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v0

    iget v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUnificationProfileId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v4

    if-eqz v0, :cond_1e

    if-eqz v4, :cond_1e

    invoke-virtual {v0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_8

    invoke-virtual {v4, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_8

    invoke-virtual {v0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v4}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_8

    invoke-virtual {v4, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1e

    :cond_8
    iget-object v11, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v11

    move v12, v2

    :goto_5
    array-length v13, v11

    if-ge v12, v13, :cond_9

    invoke-static {p1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-byte v13, v11, v12

    int-to-char v13, v13

    invoke-virtual {p1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenNumericSequence(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenNumericSequence(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    :cond_a
    iget-object v11, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v12, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v12, v10}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenCharacterSequence(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenCharacterSequence(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_c
    iget-object v10, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v11, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v11, v9}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {v0, v3, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v4, v3, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    :cond_e
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v9, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v9, v8}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenData(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenData(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    :cond_10
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v8, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v8, v7}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasMaxRepeatedCharacters(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasMaxRepeatedCharacters(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    :cond_12
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v7, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v7, v6}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1e

    :cond_14
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v0, v5}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_15
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPwdPolicy(I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v0

    if-nez v0, :cond_16

    const-string p1, "ChooseLockPassword"

    const-string v0, "PasswordPolicy is NULL!"

    invoke-static {p1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0

    :cond_16
    invoke-virtual {v0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_17

    invoke-virtual {v0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {v0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {v0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1e

    :cond_17
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v4

    move v11, v2

    :goto_6
    array-length v12, v4

    if-ge v11, v12, :cond_18

    invoke-static {p1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-byte v12, v4, v11

    int-to-char v12, v12

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_18
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenNumericSequence(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v11, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v11, v10}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenCharacterSequence(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v10, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v10, v9}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    invoke-virtual {v0, v3, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v4, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v4, v8}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenData(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v4, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v4, v7}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasMaxRepeatedCharacters(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v4, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v4, v6}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    invoke-direct {v0, v5}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_7
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    if-eqz p1, :cond_20

    invoke-static {v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v4, 0x14

    invoke-direct {v0, v4}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    invoke-static {v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    new-instance v0, Lcom/android/internal/widget/PasswordValidationError;

    const/16 v4, 0x15

    invoke-direct {v0, v4}, Lcom/android/internal/widget/PasswordValidationError;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne p1, v0, :cond_23

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_23

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    if-nez p1, :cond_22

    invoke-static {v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_21

    invoke-static {v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    :cond_21
    move v2, v1

    :cond_22
    iput-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsSimplePassword:Z

    :cond_23
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mValidationErrors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method
