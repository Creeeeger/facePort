.class public final Lcom/android/settings/wifi/WifiNoInternetDialog$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiNoInternetDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$5;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$5;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mWifiNoInternetDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0a0839

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v4, 0x7f0a0f9a

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$5;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    if-nez v4, :cond_3

    return-void

    :cond_3
    const-string v5, "PROMPT_UNVALIDATED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "LOST_INTERNET"

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$5;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    const-string v6, "PROMPT_PARTIAL_CONNECTIVITY"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$5;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    const-string v6, "PROMPT_LOST_VALIDATION"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    if-eqz v1, :cond_6

    const-string p1, "Switch away"

    goto :goto_3

    :cond_6
    const-string p1, "Get stuck"

    :goto_3
    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$5;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiNoInternetDialog;->access$000(Lcom/android/settings/wifi/WifiNoInternetDialog;)Lcom/android/internal/app/AlertController$AlertParams;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v1, :cond_7

    const-string v1, "1"

    goto :goto_4

    :cond_7
    const-string v1, "0"

    :goto_4
    const-string v3, "network_avoid_bad_wifi"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_d

    :cond_8
    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$5;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    iget-object v2, v1, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->setAvoidUnvalidated(Landroid/net/Network;)V

    goto/16 :goto_d

    :cond_9
    :goto_5
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$5;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    const-string v6, "android.net.action.PROMPT_UNVALIDATED"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v5, "NO_INTERNET"

    goto :goto_6

    :cond_a
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$5;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    iget-object v4, v4, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    const-string v6, "android.net.action.PROMPT_PARTIAL_CONNECTIVITY"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v5, "PARTIAL_CONNECTIVITY"

    :cond_b
    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v2, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f0a03e9

    if-ne p1, v2, :cond_c

    goto :goto_7

    :cond_c
    move v1, v3

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    const-string p1, "Connect"

    goto :goto_8

    :cond_e
    const-string p1, "Ignore"

    :goto_8
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$5;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    iget-object v4, v2, Lcom/android/settings/wifi/WifiNoInternetDialog;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v4, :cond_19

    iget-object v4, v2, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    const-string v6, "sem_wifi"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x0

    if-eqz v2, :cond_11

    if-nez v6, :cond_f

    goto :goto_9

    :cond_f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    iget v9, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    if-ne v9, v10, :cond_10

    goto :goto_a

    :cond_11
    :goto_9
    move-object v8, v7

    :goto_a
    if-nez v8, :cond_12

    goto :goto_b

    :cond_12
    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_13

    goto :goto_b

    :cond_13
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget-object v8, v6, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    move-object v7, v6

    :cond_15
    :goto_b
    if-eqz v7, :cond_16

    iget-boolean v2, v7, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    if-eqz v2, :cond_16

    if-nez v0, :cond_16

    iput-boolean v3, v7, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$5;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiNoInternetDialog;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2, v7}, Lcom/samsung/android/wifi/SemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    :cond_16
    if-eqz v1, :cond_18

    if-eqz v0, :cond_17

    const/4 v2, 0x2

    goto :goto_c

    :cond_17
    const/4 v2, 0x3

    goto :goto_c

    :cond_18
    const/4 v2, 0x4

    :goto_c
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$5;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->sendResultToWCM(IZZ)V

    :cond_19
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " network="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$5;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    iget-object p1, p1, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1a

    const-string p1, " and remember"

    goto :goto_e

    :cond_1a
    const-string p1, ""

    :goto_e
    const-string v0, "WifiNoInternetDialog"

    invoke-static {v1, p1, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$5;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
