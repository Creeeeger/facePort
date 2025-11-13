.class public final synthetic Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x9

    const/4 v3, -0x1

    iget v4, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    check-cast p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;

    packed-switch v4, :pswitch_data_0

    sget v4, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v5, v4, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eqz v5, :cond_2

    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-ne v5, v3, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/wifi/SemWifiManager;->hasConfiguredNetworkLocations(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget v5, v4, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    if-lez v5, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mCurrentConnectedNetworkId:I

    if-eq p0, v3, :cond_2

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p0, v4, :cond_2

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    if-eq p0, v3, :cond_2

    :cond_1
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    if-ge p0, v2, :cond_2

    move v0, v1

    :cond_2
    return v0

    :pswitch_0
    sget v4, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v5, v4, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eqz v5, :cond_4

    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-ne v5, v3, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v4}, Lcom/samsung/android/wifi/SemWifiManager;->hasConfiguredNetworkLocations(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$CombinedWifiConfiguration;->mSemWifiConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    if-ge p0, v2, :cond_3

    if-ne p0, v3, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
