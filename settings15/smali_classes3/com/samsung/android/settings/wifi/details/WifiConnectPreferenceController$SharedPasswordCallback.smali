.class public final Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;
.super Lcom/samsung/android/wifi/ISemSharedPasswordCallback$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-direct {p0}, Lcom/samsung/android/wifi/ISemSharedPasswordCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccepted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p2}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->DBG:Z

    const-string v1, "mSharedPasswordCallback onAccept : "

    const-string v2, "WifiConnectPrefController"

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-boolean v4, v4, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingPassword:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , password : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    if-nez p1, :cond_3

    const-string p0, "mSharedPasswordCallback mPasswordView is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public final onAvailable(Z)V
    .locals 1

    const-string p1, "WifiConnectPrefController"

    const-string v0, "ProfileShare available"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharedPasswordPref:Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mIsPasswordShareDisplayed:Z

    return-void
.end method

.method public final onRejected(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSharedPasswordCallback onRejected : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

    invoke-virtual {v1, p1}, Lcom/samsung/android/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiConnectPrefController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda5;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
