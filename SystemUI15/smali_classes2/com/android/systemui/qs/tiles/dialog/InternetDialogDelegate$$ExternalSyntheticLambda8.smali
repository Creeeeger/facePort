.class public final synthetic Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/phone/SystemUIDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;Lcom/android/systemui/statusbar/phone/SystemUIDialog;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda8;->f$1:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda8;->f$1:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileDataToggle:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    if-nez v0, :cond_3

    iget-object v2, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "QsHasTurnedOffMobileData"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mMobileDataToggle:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDefaultDataSubId:I

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->getMobileNetworkTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDefaultDataSubId:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isVoiceStateInService(I)Z

    move-result v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v1, :cond_2

    :cond_1
    const v1, 0x7f130c18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f130c19

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f130c17

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda18;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda26;

    invoke-direct {v2, p1, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda26;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;Landroid/content/Context;)V

    const v0, 0x10401b3

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;)V

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;Z)V

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {p1, v0, p0, v1, v4}, Lcom/android/systemui/animation/DialogTransitionAnimator;->showFromDialog(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/android/systemui/animation/DialogCuj;Z)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isMobileDataEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_4

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    iget p1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDefaultDataSubId:I

    invoke-virtual {v1, p0, p1, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->setMobileDataEnabled(Landroid/content/Context;IZ)V

    :cond_4
    :goto_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda8;->f$1:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->getActiveAutoSwitchNonDdsSubId()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDefaultDataSubId:I

    invoke-virtual {p1, v4}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->getMobileNetworkTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const v4, 0x7f130c18

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f1301d1

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f1301d0

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda18;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const v5, 0x7f1301ce

    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda19;

    invoke-direct {v4, p1, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate$$ExternalSyntheticLambda19;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;I)V

    const v1, 0x7f1301cf

    invoke-virtual {v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    iget-object v1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;)V

    iget-object v1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v2, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;Z)V

    iget-object v1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogDelegate;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p0, v3, v2}, Lcom/android/systemui/animation/DialogTransitionAnimator;->showFromDialog(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/android/systemui/animation/DialogCuj;Z)V

    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->isMobileDataEnabled()Z

    move-result p0

    sget-boolean p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    const-string v1, "InternetDialogController"

    if-nez p0, :cond_7

    if-eqz p1, :cond_c

    const-string p0, "Fail to connect carrier network : settings OFF"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    iget-object p0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_8

    if-eqz p1, :cond_c

    const-string p0, "Fail to connect carrier network : device locked"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->activeNetworkIsCellular()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "Fail to connect carrier network : already active"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    iget-object p0, v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->getMergedCarrierEntry()Lcom/android/wifitrackerlib/MergedCarrierEntry;

    move-result-object p0

    if-nez p0, :cond_a

    const-string p0, "Fail to connect carrier network : no merged entry"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/MergedCarrierEntry;->canConnect()Z

    move-result p1

    if-nez p1, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Fail to connect carrier network : merged entry connect state "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    invoke-virtual {p0, v3}, Lcom/android/wifitrackerlib/MergedCarrierEntry;->connect$1(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    const p0, 0x7f131528

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->makeOverlayToast(I)V

    :cond_c
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
