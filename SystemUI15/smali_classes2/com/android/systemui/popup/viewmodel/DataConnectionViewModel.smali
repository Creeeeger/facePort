.class public Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;


# static fields
.field private static final TAG:Ljava/lang/String; = "DataConnectionViewModel"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

.field private mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

.field private mHasMobileDataFeature:Z

.field private mHasVoiceCallingFeature:Z

.field private mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

.field private mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/popup/util/PopupUIToastWrapper;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;Lcom/android/systemui/popup/util/PopupUIUtil;Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    iput-object p3, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iput-object p4, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    iput-object p5, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    iput-object p6, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.systemui.popup.intent.DATA_CONNECTION_ERROR"

    return-object p0
.end method

.method public show(Landroid/content/Intent;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mHasVoiceCallingFeature:Z

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    invoke-virtual {v0}, Lcom/android/systemui/popup/util/PopupUIUtil;->isNoReadySim()Z

    move-result v0

    const-string v3, "DataConnectionViewModel"

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mHasMobileDataFeature:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mHasVoiceCallingFeature:Z

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string/jumbo v4, "type"

    const/4 v5, -0x1

    invoke-virtual {v0, p1, v4, v5}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string v5, "no_signal_retry_enable"

    invoke-virtual {v4, p1, v5, v2}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string v6, "no_signal_retry_intent"

    invoke-virtual {v5, p1, v6}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v5, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string/jumbo v6, "show : "

    const-string v7, ", "

    invoke-static {v6, v0, v7, v4, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    invoke-virtual {v1, v0, v4, p1}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->getDataConnectionDialog(IZLandroid/app/PendingIntent;)Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->show()V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string/jumbo p1, "show() invalid AlertDialog"

    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v0, "Not ready to show DataConnectionErrorDialog()"

    invoke-virtual {p1, v3, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    const p1, 0x7f1304c6

    invoke-virtual {p0, p1}, Lcom/android/systemui/popup/util/PopupUIToastWrapper;->makeToast(I)V

    return-void
.end method
