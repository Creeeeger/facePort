.class public final Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget p0, p0, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    if-eqz p2, :cond_1

    sget-object p0, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result p0

    if-nez p0, :cond_1

    iget p0, p2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz p0, :cond_0

    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length p2, p1

    if-ge p0, p2, :cond_0

    aget-object v0, p1, p0

    :cond_0
    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :pswitch_0
    if-eqz p2, :cond_4

    sget-object p0, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result p0

    if-nez p0, :cond_3

    iget p0, p2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz p0, :cond_2

    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length p2, p1

    if-ge p0, p2, :cond_2

    aget-object v0, p1, p0

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    return v1

    :pswitch_1
    sget-object p0, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string/jumbo p0, "sem_wifi"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getNetworkLastUpdatedTimeMap()Ljava/util/Map;

    move-result-object p0

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sub-long/2addr v3, p0

    const-wide p0, 0x39ef8b000L

    cmp-long p0, v3, p0

    if-lez p0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1

    :pswitch_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
