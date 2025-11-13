.class Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;
.super Landroid/net/wifi/hotspot2/ProvisioningCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/wifi/AccessPoint;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0}, Landroid/net/wifi/hotspot2/ProvisioningCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProvisioningComplete()V
    .locals 8

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvisioningComplete:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuFailure:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settingslib/wifi/AccessPoint;->mOsuStatus:Ljava/lang/String;

    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3}, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->getMatchingPasspointConfigsForOsuProviders(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez v3, :cond_0

    const-string v0, "SettingsLib.AccessPoint"

    const-string v1, "Missing PasspointConfiguration for newly provisioned network!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->getAllMatchingWifiConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v3, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v4, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v5, v5, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6, v3, v1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Ljava/util/Collection;Ljava/util/Collection;)V

    iget-object v1, v4, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onProvisioningFailure(I)V
    .locals 2

    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mOsuStatus:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const v1, 0x7f130d77

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const v1, 0x7f130d7b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mOsuFailure:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const v1, 0x7f130d78

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mOsuFailure:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mOsuStatus:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvisioningComplete:Z

    new-instance p1, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onProvisioningStatus(I)V
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    move-object p1, v0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object p1, p1, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const v1, 0x7f130d77

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object p1, p1, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    const v1, 0x7f130d79

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settingslib/wifi/AccessPoint;->mOsuStatus:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    iput-object p1, v2, Lcom/android/settingslib/wifi/AccessPoint;->mOsuStatus:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/settingslib/wifi/AccessPoint;->mOsuFailure:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, v2, Lcom/android/settingslib/wifi/AccessPoint;->mOsuProvisioningComplete:Z

    if-eqz v1, :cond_0

    new-instance p1, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
