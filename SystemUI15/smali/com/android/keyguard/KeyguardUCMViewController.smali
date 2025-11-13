.class public final Lcom/android/keyguard/KeyguardUCMViewController;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final syncObj:Ljava/lang/Object;


# instance fields
.field public mAgentID:Ljava/lang/String;

.field public mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

.field public mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;

.field public mChildSafeMsg:Ljava/lang/String;

.field public mError:I

.field public mGetStatusThread:Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;

.field public mIsSupportBiometricForUCM:Z

.field public mMISCInfo:Ljava/lang/String;

.field public mPinMaxLength:I

.field public mPinMinLength:I

.field public mPinText:Ljava/lang/String;

.field public mPukMaxLength:I

.field public mPukMinLength:I

.field public mPukSupported:Z

.field public mPukText:Ljava/lang/String;

.field public mRemainingAttempts:I

.field public final mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

.field public mStatus:I

.field public final mUCMAgent:Landroid/widget/TextView;

.field public final mUCMMiscTagValue:Landroid/widget/TextView;

.field public mUnlockOngoing:Z

.field public mUnlockProgressDialog:Landroid/app/ProgressDialog;

.field public final mVendorName:Ljava/lang/String;


# direct methods
.method public static -$$Nest$mgeneratePassword(Lcom/android/keyguard/KeyguardUCMViewController;I)Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "generatePassword called"

    const-string v1, "KeyguardUCMPinView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x83

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    const-string p0, "Do not need to get password"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getCSUri()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->generateKeyguardPassword(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p0, "mUcmBinder == null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2
.end method

.method public static -$$Nest$mgetErrorMessage(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "0x%08X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const v4, 0x7f130a7f

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    const/high16 v5, 0x8000000

    if-ge v5, p1, :cond_0

    const/high16 v5, 0x8010000

    if-le v5, p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f130a80

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :sswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    :sswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f130a74

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    :sswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f130a76

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_2
        0x1fff -> :sswitch_2
        0x1000100 -> :sswitch_1
        0x1000200 -> :sswitch_1
        0x1000300 -> :sswitch_1
        0x1000400 -> :sswitch_1
        0x2000201 -> :sswitch_1
        0x8000000 -> :sswitch_0
        0x9000000 -> :sswitch_2
        0xc000100 -> :sswitch_2
        0xc000200 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x2000101
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2000301
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2000401
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2000501
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x3000000
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static -$$Nest$mgetRemainingCount(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f110015

    invoke-virtual {p0, v1, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static -$$Nest$mstartProgress(Lcom/android/keyguard/KeyguardUCMViewController;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardUCMView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    return-void
.end method

.method public static -$$Nest$mstopProgress(Lcom/android/keyguard/KeyguardUCMViewController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardUCMView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    return-void
.end method

.method public static -$$Nest$mverifyPIN(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;)[I
    .locals 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ""

    const-string v1, "errorCode : "

    const-string v2, "remainCnt : "

    const-string/jumbo v3, "state : "

    const-string/jumbo v4, "verifyPIN called"

    const-string v5, "KeyguardUCMPinView"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v6, 0x0

    const/4 v7, -0x1

    aput v7, v4, v6

    const/4 v8, 0x1

    aput v7, v4, v8

    const/4 v9, 0x2

    aput v7, v4, v9

    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v10

    if-nez v10, :cond_0

    const-string p0, "failed to get UCM service"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getCSUri()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v10, v6, v11, p1, v12}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPin(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v10, "lockscreen_message"

    invoke-virtual {p1, v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mChildSafeMsg:Ljava/lang/String;

    const-string/jumbo v10, "state"

    invoke-virtual {p1, v10, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    const-string v10, "remainCnt"

    invoke-virtual {p1, v10, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    const-string v10, "miscInfo"

    invoke-virtual {p1, v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mMISCInfo:Ljava/lang/String;

    const-string v0, "errorresponse"

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    const/16 v1, 0x83

    if-ne v0, v1, :cond_1

    const-string v0, "PIN verification succeed"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-string v0, "PIN verification failed"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    aput v0, v4, v6

    iget p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    aput p0, v4, v8

    aput p1, v4, v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    return-object v4
.end method

.method public static -$$Nest$mverifyPUK(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "errorCode : "

    const-string v1, "remainCnt : "

    const-string/jumbo v2, "state : "

    const-string/jumbo v3, "verifyPUK called"

    const-string v4, "KeyguardUCMPinView"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput v6, v3, v5

    const/4 v7, 0x1

    aput v6, v3, v7

    const/4 v8, 0x2

    aput v6, v3, v8

    const/4 v9, 0x0

    if-nez p1, :cond_1

    :cond_0
    move-object v10, v9

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    :goto_0
    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3

    move-object v9, v11

    :cond_3
    :goto_1
    if-eqz v10, :cond_8

    if-nez v9, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v9

    if-nez v9, :cond_5

    const-string p0, "failed to get UCM service"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput v6, v3, v5

    goto/16 :goto_5

    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getCSUri()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, p1, p2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "state"

    invoke-virtual {p1, p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    const-string p2, "remainCnt"

    invoke-virtual {p1, p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    const-string p2, "errorresponse"

    invoke-virtual {p1, p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    const/16 v0, 0x83

    if-eq p2, v0, :cond_7

    const/16 v0, 0x84

    if-eq p2, v0, :cond_6

    const-string p2, "PUK verification failed : BLOCKED"

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_6
    const-string p2, "PUK verification succeed : LOCKED"

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const-string p2, "PUK verification succeed : UNLOCKED"

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    aput p2, v3, v5

    iget p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    aput p0, v3, v7

    aput p1, v3, v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_3
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    :cond_8
    :goto_4
    aput v6, v3, v5

    :goto_5
    return-object v3
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardUCMViewController;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardUCMView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V
    .locals 18

    move-object/from16 v3, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v4, p12

    move-object/from16 v5, p13

    move-object/from16 v3, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-direct/range {v1 .. v17}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V

    const/4 v1, 0x0

    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    iput-object v1, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mAgentID:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mPukSupported:Z

    iput-boolean v0, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mIsSupportBiometricForUCM:Z

    iput-object v1, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mMISCInfo:Ljava/lang/String;

    iput v0, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    iput v0, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mPinMinLength:I

    iput v0, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mPinMaxLength:I

    iput v0, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mPukMinLength:I

    iput v0, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mPukMaxLength:I

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    iput v0, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mError:I

    new-instance v3, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    invoke-direct {v3, v2, v0}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;I)V

    iput-object v3, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    iput-object v1, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mChildSafeMsg:Ljava/lang/String;

    iput-boolean v0, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockOngoing:Z

    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "KeyguardUCMPinView"

    const-string v3, "failed to get UCM service"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v4, v2, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v4, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    invoke-interface {v3, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v0

    :cond_1
    :goto_1
    iput-object v1, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mVendorName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getVendorID()V

    iget-object v0, v2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardUCMView;

    const v1, 0x7f0a0dc5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMMiscTagValue:Landroid/widget/TextView;

    iget-object v0, v2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardUCMView;

    const v1, 0x7f0a0dc4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMAgent:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/android/keyguard/KeyguardUCMViewController;->mAgentID:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 3

    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "KeyguardUCMPinView"

    const-string v2, "failed to get UCM service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getCSUri()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mVendorName:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getCSUri returns : "

    const-string v1, "KeyguardUCMPinView"

    invoke-static {v0, p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getPasswordTextByString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, p0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/keyguard/SecPasswordTextView;

    iget-object p0, p0, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSecurityViewId()I
    .locals 0

    const p0, 0x7f0a05cd

    return p0
.end method

.method public final getUnlockProgressDialog(Z)Landroid/app/Dialog;
    .locals 2

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "getUnlockProgressDialog called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f130a7a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f130a82

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/view/Window;

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public final getVendorID()V
    .locals 5

    const-string v0, "mAgentID : "

    const-string v1, "KeyguardUCMPinView"

    const-string v2, "getVendorID() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "failed to get UCM service"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getCSUri()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "failed to get agentInfo"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string v3, "id"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mAgentID:Ljava/lang/String;

    const-string v3, "isPUKSupported"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukSupported:Z

    const-string v3, "isSupportBiometricForUCM"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mIsSupportBiometricForUCM:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mAgentID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mPukSupported : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukSupported:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final onPasswordChecked(IIZZ)V
    .locals 2

    const-string v0, "onPasswordChecked "

    const-string v1, " / "

    invoke-static {v0, p2, v1, p3, v1}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "KeyguardUCMPinView"

    invoke-static {p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-interface {p2, p1, p4, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IIZ)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {p2, p3, p1, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f130a7b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onPause()V

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "onPause called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockOngoing:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewDetached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public final resetState()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->resetState()V

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "resetState called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getVendorID()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mAgentID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMAgent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMAgent:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMAgent:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const-string v0, "KeyguardUCMPinView"

    const-string v1, "getStatusAndShowingDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/KeyguardUCMViewController;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;

    const-string p0, ""

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-nez p0, :cond_0

    const-string p0, "KeyguardUCMPinView"

    const-string p1, "setMessageSecurityMessageDisplay mMessageAreaController is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setVisibility(I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public final verifyPasswordAndUnlock()V
    .locals 9

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPasswordAndUnlock override called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getPasswordTextByString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "StateMachine.getState called"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v2, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    const-string/jumbo p0, "unknown status nothings to do"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mIsSupportBiometricForUCM:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v5}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "StateMachine.verifyPUKAndUpdateUI called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mState:I

    const/16 v5, 0x85

    if-eq v1, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    iget v1, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    const v5, 0x7f130a7d

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    if-eq v1, v4, :cond_7

    const/4 v7, 0x3

    if-eq v1, v2, :cond_6

    if-eq v1, v7, :cond_3

    move v5, v3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "confirmPin called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v6, Lcom/android/keyguard/KeyguardUCMViewController;->mPinText:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUCMViewController;->getPasswordTextByString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "KeyguardUCMPinView"

    const-string/jumbo v0, "verifyPUKAndUnlock called"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v6, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardUCMView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    iput-boolean v0, v6, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockOngoing:Z

    const/4 p0, 0x0

    invoke-virtual {v6, p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    iget-object p0, v6, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;

    if-nez p0, :cond_4

    new-instance p0, Lcom/android/keyguard/KeyguardUCMViewController$2;

    iget-object v0, v6, Lcom/android/keyguard/KeyguardUCMViewController;->mPukText:Ljava/lang/String;

    iget-object v1, v6, Lcom/android/keyguard/KeyguardUCMViewController;->mPinText:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v1}, Lcom/android/keyguard/KeyguardUCMViewController$2;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, v6, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_4
    const p0, 0x7f130a82

    :goto_0
    move v5, v3

    move v3, p0

    goto :goto_1

    :cond_5
    iput v2, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    const v3, 0x7f130a77

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUCMViewController;->getPasswordTextByString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/keyguard/KeyguardUCMViewController;->mPinText:Ljava/lang/String;

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    const p0, 0x7f130a75

    goto :goto_0

    :cond_7
    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUCMViewController;->getPasswordTextByString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/keyguard/KeyguardUCMViewController;->mPukText:Ljava/lang/String;

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->mRound:I

    move v8, v5

    move v5, v3

    move v3, v8

    :goto_1
    iget-object p0, v6, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardUCMView;

    invoke-virtual {p0, v4, v4}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    if-eqz v3, :cond_9

    if-eqz v5, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v6}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_1
    const-string/jumbo v2, "verifyPINAndUnlock called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardUCMView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockOngoing:Z

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUCMViewController;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    if-nez v0, :cond_9

    new-instance v0, Lcom/android/keyguard/KeyguardUCMViewController$1;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardUCMViewController$1;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_9
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
