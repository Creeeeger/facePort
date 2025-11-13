.class public final Lcom/android/settings/IccLockSettings$ChangeIccLockPin;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mNewPin:Ljava/lang/String;

.field public final mOldPin:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/IccLockSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPin;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPin;->mOldPin:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPin;->mNewPin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/Void;

    iget-object p1, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPin;->this$0:Lcom/android/settings/IccLockSettings;

    iget-object v0, p1, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p1, Lcom/android/settings/IccLockSettings;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p1, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPin;->this$0:Lcom/android/settings/IccLockSettings;

    iget-object p1, p1, Lcom/android/settings/IccLockSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPin;->mOldPin:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPin;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/telephony/TelephonyManager;->changeIccLockPin(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/PinResult;

    move-result-object p0

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Landroid/telephony/PinResult;

    iget-object p0, p0, Lcom/android/settings/IccLockSettings$ChangeIccLockPin;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-virtual {p1}, Landroid/telephony/PinResult;->getResult()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "iccPinChanged: success = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IccLockSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/IccLockSettings;->createCustomTextToast(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f142c12

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    return-void
.end method
