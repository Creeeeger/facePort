.class public final Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mPin:Ljava/lang/String;

.field public final mState:Z

.field public final synthetic this$0:Lcom/samsung/android/settings/security/SecIccLockManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/security/SecIccLockManager;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;->this$0:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean p2, p0, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;->mState:Z

    iput-object p3, p0, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;->mPin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    iget-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;->this$0:Lcom/samsung/android/settings/security/SecIccLockManager;

    iget-object p1, p1, Lcom/samsung/android/settings/security/SecIccLockManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-boolean v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;->mState:Z

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;->mPin:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/telephony/TelephonyManager;->setIccLockEnabled(ZLjava/lang/String;)Landroid/telephony/PinResult;

    move-result-object p0

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Landroid/telephony/PinResult;

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;->this$0:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1}, Landroid/telephony/PinResult;->getResult()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result p1

    iget-boolean p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager$SetIccLockEnabled;->mState:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "iccLockChanged: success = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccToState:Z

    const-string v5, "SecIccLockSettings.SecIccLockManager"

    invoke-static {v3, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->isCTCSlot1()Z

    move-result p0

    const v1, 0x7f142c25

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SIM"

    const-string v3, "UIM"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticKTTModel()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f12001d

    invoke-virtual {p0, v3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_2
    iget-object p0, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, p0, v2}, Lcom/android/settings/network/apn/ApnPreference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/content/Context;I)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_4

    const p0, 0x7f142c28

    goto :goto_1

    :cond_4
    const p0, 0x7f142c27

    :goto_1
    invoke-static {p1, p0, p1, v2}, Lcom/android/settings/network/apn/ApnPreference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/content/Context;I)V

    :goto_2
    invoke-virtual {v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->updateMenu()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->resetIccLockData()V

    return-void
.end method
