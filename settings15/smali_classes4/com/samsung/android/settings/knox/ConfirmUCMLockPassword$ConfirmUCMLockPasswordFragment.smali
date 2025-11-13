.class public Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmUCMLockPasswordFragment"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAgentTitle:Ljava/lang/String;

.field public mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field public final mBlockImm:Z

.field public mCsName:Ljava/lang/String;

.field public mCsNameUri:Ljava/lang/String;

.field public mDetailsTextView:Landroid/widget/TextView;

.field public mErrorTextView:Landroid/widget/TextView;

.field public mFromSettings:Z

.field public mHeaderTextView:Landroid/widget/TextView;

.field public mImm:Landroid/view/inputmethod/InputMethodManager;

.field public mIsKnoxTheme:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mNumWrongConfirmAttempts:I

.field public mPasswordEntry:Landroid/widget/TextView;

.field public mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field public mPendingLockCheck:Landroid/os/AsyncTask;

.field public mPukSupported:Z

.field public final mStateMachine:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

.field public mStorageType:Ljava/lang/String;

.field public final mTester:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;

.field public mUserId:I

.field public mVendorID:Ljava/lang/String;

.field public mVendorIDView:Landroid/widget/TextView;

.field public progDlg:Landroid/app/ProgressDialog;


# direct methods
.method public static -$$Nest$mshowMISCInfo(Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Z)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showMISCInfo called : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/knox/UCMUtils;->miscInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmUCMLockPasswordFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mIsKnoxTheme:Z

    if-eqz v0, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    sget-object v1, Lcom/samsung/android/settings/knox/UCMUtils;->miscInfo:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/samsung/android/settings/knox/UCMUtils;->miscInfo:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    const-string p1, "\n"

    invoke-static {v1, p1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/knox/UCMUtils;->miscInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorIDView:Landroid/widget/TextView;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;-><init>(Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;-><init>(Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mTester:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPukSupported:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsNameUri:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsName:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mFromSettings:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mIsKnoxTheme:Z

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final authenticationSucceeded()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget v1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->onPasswordChecked$1(ILandroid/content/Intent;Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final getLastTryDefaultErrorMessage(I)I
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    const p0, 0x7f142282

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized user type:"

    invoke-static {p1, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p0, 0x7f142281

    return p0

    :cond_2
    const p0, 0x7f142280

    return p0
.end method

.method public final getLastTryOverrideErrorMessageId(I)Ljava/lang/String;
    .locals 0

    const-string p0, "UNDEFINED"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1e

    return p0
.end method

.method public final getRemainingCount(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f1412d3

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f1412d4

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final handleNext$4()V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->DBG:Z

    const-string v1, "ConfirmUCMLockPasswordFragment"

    if-eqz v0, :cond_0

    const-string v2, "handleNext"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v4

    if-eqz v0, :cond_3

    const-string/jumbo v0, "next mCurState : "

    invoke-static {v4, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    const v0, 0x10002

    const/4 v1, 0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPin:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPuk:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPin:Ljava/lang/String;

    aput-object v3, v2, v1

    move v3, v0

    goto :goto_1

    :cond_4
    iput v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    const v0, 0x10006

    iput v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    goto :goto_0

    :pswitch_1
    iput-object v2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPin:Ljava/lang/String;

    const v0, 0x10003

    iput v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_0

    :pswitch_2
    iput-object v2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPuk:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x63

    goto :goto_1

    :pswitch_3
    new-array v0, v1, [Ljava/lang/String;

    aput-object v2, v0, v3

    move-object v2, v0

    :goto_1
    new-instance v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->this$0:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsNameUri:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v3}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;-><init>(Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->resetState$1()V

    return-void

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0a54

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->handleNext$4()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02cf

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->build()Lcom/android/settings/password/ChooseLockSettingsHelper;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mCurrentPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "failed to get UCM service"

    const-string v3, "com.samsung.ucs.ucsservice"

    const-string v4, ""

    const-string v5, "ConfirmUCMLockPasswordFragment"

    const/4 v6, 0x0

    if-eqz v1, :cond_8

    const-string v7, "android.intent.extra.USER_ID"

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    if-ne v7, v8, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    :cond_0
    const-string v7, "lockscreen.ucscredentialstoragename"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    iput-boolean v6, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mFromSettings:Z

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsName:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v7

    if-nez v7, :cond_2

    sget-boolean v7, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->DBG:Z

    if-eqz v7, :cond_3

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :try_start_0
    iget v8, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    invoke-interface {v7, v8}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v7, v0

    :goto_0
    if-eqz v7, :cond_3

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "none"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    move-object v0, v7

    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsName:Ljava/lang/String;

    :goto_2
    sget-boolean v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->DBG:Z

    if-eqz v0, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mCsName:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsName:Ljava/lang/String;

    invoke-static {v7, v8, v5}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v7, "lockscreen.ucscredentialstoragenameuri"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsNameUri:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsName:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-static {v1, v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsNameUri:Ljava/lang/String;

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "mCsNameUri:"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsNameUri:Ljava/lang/String;

    invoke-static {v1, v7, v5}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    sget-object v1, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mCurrentPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-nez v1, :cond_8

    if-eqz v0, :cond_8

    const-string v0, "mCurrentPassword is null, check again:"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sput-boolean v6, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mAuthenticating:Z

    if-eqz p1, :cond_9

    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mNumWrongConfirmAttempts:I

    const-string v0, "AuthViewState"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mAuthenticating:Z

    const-string v0, "CurrentPassword"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    sput-object p1, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mCurrentPassword:Lcom/android/internal/widget/LockscreenCredential;

    :cond_9
    const-string p1, "agentTitle : "

    const-string/jumbo v0, "storageType : "

    const-string/jumbo v1, "vendorID : "

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v3

    if-nez v3, :cond_a

    sget-boolean p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->DBG:Z

    if-eqz p0, :cond_15

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_a
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsNameUri:Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_b

    goto/16 :goto_b

    :cond_b
    const-string/jumbo v3, "vendorId"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_c
    sget-boolean v3, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->DBG:Z

    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_1
    move-exception p0

    goto/16 :goto_a

    :cond_d
    :goto_4
    sget-boolean v1, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->DBG:Z

    if-eqz v1, :cond_e

    const-string v1, "NO vendorID info"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    const-string/jumbo v1, "storageType"

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStorageType:Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_6

    :cond_f
    sget-boolean v1, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->DBG:Z

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStorageType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_10
    :goto_6
    sget-boolean v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->DBG:Z

    if-eqz v0, :cond_11

    const-string v0, "NO storageType info"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_7
    const-string/jumbo v0, "title"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mAgentTitle:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_8

    :cond_12
    sget-boolean v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->DBG:Z

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mAgentTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_13
    :goto_8
    sget-boolean p1, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->DBG:Z

    if-eqz p1, :cond_14

    const-string p1, "NO agentTitle info"

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_9
    const-string p1, "isPUKSupported"

    invoke-virtual {v2, p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPukSupported:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :goto_a
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    :goto_b
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    new-instance p3, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->progDlg:Landroid/app/ProgressDialog;

    const p3, 0x7f14300e

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->progDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->progDlg:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object p3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->progDlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object p3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->progDlg:Landroid/app/ProgressDialog;

    invoke-virtual {p3, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-boolean p3, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->DBG:Z

    const-string v2, "ConfirmUCMLockPasswordFragment"

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreateView : check1: :"

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    invoke-static {p3, v3, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    invoke-virtual {p3, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;

    invoke-static {p3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0d086c

    goto :goto_0

    :cond_1
    const v3, 0x7f0d0867

    :goto_0
    invoke-virtual {p1, v3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-object v3, v3, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1, p2, v4}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->switchViewIfNeeded(Landroid/view/LayoutInflater;Landroid/view/View;Landroidx/fragment/app/FragmentActivity;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mIsKnoxTheme:Z

    const p2, 0x7f0a02a9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v3, 0x8

    if-eqz p2, :cond_3

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const p2, 0x7f0a0b27

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v4, 0x2000000

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    new-instance p2, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v4, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {p2, v4}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object p2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const p2, 0x7f0a070e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    const p2, 0x7f0a04ec

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    const p2, 0x7f0a10a8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorIDView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v4, "input_method"

    invoke-virtual {p2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    :try_start_0
    invoke-static {p3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, 0x7f0a0240

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v3, "NullPointerException "

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_c

    const-string p3, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string p3, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p3

    iget-object v2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mAgentTitle:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mAgentTitle:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iget-boolean v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-eqz v2, :cond_6

    const v2, 0x7f14300a

    goto :goto_3

    :cond_6
    const v2, 0x7f1415d4

    :goto_3
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object p3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    invoke-virtual {p3}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result p3

    const/high16 v3, 0x10000

    if-eq p3, v3, :cond_8

    const v3, 0x10001

    if-ne p3, v3, :cond_7

    goto :goto_5

    :cond_7
    const-string p3, ""

    goto :goto_7

    :cond_8
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch p3, :pswitch_data_0

    const p3, 0x7f143009

    goto :goto_6

    :pswitch_0
    const p3, 0x7f142df4

    goto :goto_6

    :pswitch_1
    const p3, 0x7f143002

    goto :goto_6

    :pswitch_2
    const p3, 0x7f143005

    goto :goto_6

    :pswitch_3
    const p3, 0x7f143008

    goto :goto_6

    :pswitch_4
    const p3, 0x7f140a53

    :goto_6
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    iget p3, p3, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mAtmRemain:I

    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->getRemainingCount(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_9
    :goto_7
    iget-object v3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    if-nez v2, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_8
    iget-boolean p3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mIsKnoxTheme:Z

    if-eqz p3, :cond_d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f060b84

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iget-object v2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorIDView:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    :cond_d
    iget-object p3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    if-eqz p3, :cond_e

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_e

    iget-object p3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorIDView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mVendorID:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_9
    iget-object p3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getInputType()I

    iget-object p3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v2, 0x12

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v3, Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v2, 0x10c000e

    invoke-static {p3, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xdc

    invoke-direct/range {v3 .. v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    new-instance p3, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10c000f

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-direct {p3, v2, v3}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iget-object p3, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_f

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    :cond_f
    if-eqz p2, :cond_10

    const-string p3, "confirm_credentials"

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    goto :goto_a

    :cond_10
    move p3, v0

    :goto_a
    iget-boolean v2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mFromSettings:Z

    if-nez v2, :cond_11

    if-eqz p3, :cond_11

    sget-boolean p3, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mAuthenticating:Z

    if-nez p3, :cond_11

    sget-object p3, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mCurrentPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-nez p3, :cond_11

    sput-boolean v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mAuthenticating:Z

    const-string/jumbo p3, "request_gk_pw_handle"

    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    new-instance p3, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p3, v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v1, 0x64

    iput v1, p3, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    const v1, 0x7f142819

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v0, p3, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    iput-boolean p2, p3, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    iget p2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    iput p2, p3, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    invoke-virtual {p3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    :cond_11
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_12

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->onCreateView(Landroid/view/View;)V

    :cond_12
    return-object p1

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->handleNext$4()V

    const/4 p0, 0x1

    return p0
.end method

.method public final onPasswordChecked$1(ILandroid/content/Intent;Z)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPasswordChecked, matched: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", effectiveUserId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConfirmUCMLockPasswordFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-static {p1, p3, v1, v2, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->reportSuccessfulAttempt(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;IZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->checkForPendingIntent(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onPause()V

    sget-boolean v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mAuthenticating:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onResume()V

    sget-boolean v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->DBG:Z

    const-string v1, "ConfirmUCMLockPasswordFragment"

    if-eqz v0, :cond_0

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->resetState$1()V

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "get settings config for the vendor : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsNameUri:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mCsNameUri:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;-><init>(Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Ljava/lang/String;I)V

    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mTester:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget p0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-boolean p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mAuthenticating:Z

    const-string v0, "AuthViewState"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->mCurrentPassword:Lcom/android/internal/widget/LockscreenCredential;

    const-string v0, "CurrentPassword"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final onShowDefault()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-eqz p0, :cond_0

    const p0, 0x7f14300a

    goto :goto_0

    :cond_0
    const p0, 0x7f1415d4

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final onShowError()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final resetState$1()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mBlockImm:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mStateMachine:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;

    iget v0, v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    const v1, 0x10006

    if-eq v0, v1, :cond_2

    sget-boolean v0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "ConfirmUCMLockPasswordFragment"

    const-string/jumbo v1, "resetState set the passwordentry as null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->showSoftInput$2()V

    :cond_3
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    return-void
.end method

.method public final showSoftInput$2()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->mTester:Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$1;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
