.class public final Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mNewPin:Ljava/lang/String;

.field public final mOldPin:Ljava/lang/String;

.field public final synthetic this$0:Lcom/samsung/android/settings/security/SecIccLockManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/security/SecIccLockManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;->this$0:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;->mOldPin:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;->mNewPin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    iget-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;->this$0:Lcom/samsung/android/settings/security/SecIccLockManager;

    iget-object p1, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;->mOldPin:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/telephony/TelephonyManager;->changeIccLockPin(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/PinResult;

    move-result-object p0

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Landroid/telephony/PinResult;

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;->this$0:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager$ChangeIccLockPin;->this$0:Lcom/samsung/android/settings/security/SecIccLockManager;

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

    const-string v3, "SecIccLockSettings.SecIccLockManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->isCTCSlot1()Z

    move-result v0

    const v2, 0x7f142c0e

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SIM"

    const-string v3, "UIM"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f12001d

    invoke-virtual {v0, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, p1, v1}, Lcom/android/settings/network/apn/ApnPreference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/content/Context;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->isCTCSlot1()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    const v0, 0x7f141f54

    invoke-static {p1, v0, p1, v1}, Lcom/android/settings/network/apn/ApnPreference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/content/Context;I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    const v0, 0x7f142c12

    invoke-static {p1, v0, p1, v1}, Lcom/android/settings/network/apn/ApnPreference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/content/Context;I)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->updateMenu()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->resetIccLockData()V

    return-void
.end method
