.class public final Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mRound:I

.field public mState:I

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUCMViewController;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mState:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;)V

    return-void
.end method


# virtual methods
.method public final getDetailErrorMessage(I)Ljava/lang/String;
    .locals 5

    const-string v0, "getDetailErrorMessage errorCode : "

    const-string v1, "KeyguardUCMPinView"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f130a81

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getCSUri()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getDetailErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgetErrorMessage(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception in getDetailErrorMessage : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgetErrorMessage(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    const-string v4, "StateMachine.setStateAndRefreshUIIfNeeded called : "

    const-string v5, " Error : "

    const-string v6, "KeyguardUCMPinView"

    invoke-static {v1, v2, v4, v5, v6}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v4, v2}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgetErrorMessage(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;

    move-result-object v5

    iput v1, v0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mState:I

    const/4 v7, 0x5

    const/4 v8, -0x1

    const/16 v9, 0x8

    if-eq v1, v8, :cond_12

    const/4 v10, 0x2

    const/4 v11, 0x0

    iget-object v12, v4, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const v13, 0x7f13099b

    const/16 v14, 0x20

    const-string v15, "\n"

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v0, "unknown status nothing to do"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_0
    const-string v1, "setStateAndRefreshUIIfNeeded called : STATE_BLOCKED"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mIsSupportBiometricForUCM:Z

    if-eqz v1, :cond_0

    iget-object v1, v4, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v3

    invoke-virtual {v1, v10, v3}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    :cond_0
    iget-boolean v1, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mPukSupported:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x21

    if-ne v2, v1, :cond_1

    iget v3, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    if-gtz v3, :cond_1

    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f130a7e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    if-ne v2, v1, :cond_2

    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f130a7c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    invoke-static {v4, v2}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgetRemainingCount(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    const v1, 0x7f1309f8

    if-nez v2, :cond_3

    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    invoke-static {v4, v2}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgetRemainingCount(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    if-ne v2, v14, :cond_4

    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    invoke-static {v4, v2}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgetRemainingCount(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f130b2e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, "pinExpireMessage"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, v0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    :goto_1
    iget-object v0, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mMISCInfo:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMMiscTagValue:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMMiscTagValue:Landroid/widget/TextView;

    iget-object v1, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mMISCInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :pswitch_1
    const-string v1, "setStateAndRefreshUIIfNeeded called : STATE_LOCKED"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mChildSafeMsg:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mIsSupportBiometricForUCM:Z

    if-eqz v1, :cond_7

    iget-object v1, v4, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v12}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v2

    invoke-virtual {v1, v10, v2}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    :cond_7
    iget-object v5, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mChildSafeMsg:Ljava/lang/String;

    goto :goto_2

    :cond_8
    if-ne v2, v14, :cond_9

    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f130a9a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    invoke-static {v4, v2}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgetRemainingCount(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_9
    if-nez v2, :cond_a

    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v15}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    invoke-static {v4, v2}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgetRemainingCount(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_a
    :goto_2
    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    iget-object v1, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMMiscTagValue:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iput v11, v0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    goto/16 :goto_4

    :pswitch_2
    const-string v1, "setStateAndRefreshUIIfNeeded called : STATE_UNLOCKED"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_c

    if-nez v2, :cond_b

    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    invoke-static {v4, v1}, Lcom/android/keyguard/KeyguardUCMViewController;->-$$Nest$mgetRemainingCount(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_b
    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_c
    iget-object v1, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMMiscTagValue:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iput v11, v0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    if-nez v2, :cond_11

    if-nez v3, :cond_d

    const-string v0, "failed to get the generatePassword values"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130a81

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_d
    const-string v1, "bytearrayresponse"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "errorresponse"

    invoke-virtual {v3, v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_10

    array-length v3, v1

    if-gtz v3, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {v12, v11}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object v2, v4, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v2, :cond_f

    invoke-virtual {v2, v11}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_f
    iget-object v2, v4, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v1}, Lcom/android/internal/widget/LockscreenCredential;->createSmartcardPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    new-instance v3, Lcom/android/keyguard/KeyguardUCMViewController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v4, v0}, Lcom/android/keyguard/KeyguardUCMViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;I)V

    invoke-static {v2, v1, v0, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, v4, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    goto :goto_4

    :cond_10
    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_11
    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_12
    const-string v1, "setStateAndRefreshUIIfNeeded called : STATE_UNKNOWN"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    iget-object v1, v4, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMMiscTagValue:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iput v7, v0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
