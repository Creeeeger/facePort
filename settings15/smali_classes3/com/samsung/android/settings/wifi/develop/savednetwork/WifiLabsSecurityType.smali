.class public final Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mType:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;

    invoke-direct {p1, v4}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;-><init>(I)V

    goto/16 :goto_3

    :cond_0
    sget-object v5, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v5

    if-nez v5, :cond_2

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v5, :cond_1

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_1

    aget-object v5, v6, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;-><init>(I)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v5

    if-nez v5, :cond_3

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;

    invoke-direct {p1, v3}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;-><init>(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_4

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;

    invoke-direct {p1, v2}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;-><init>(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v5

    if-eq v5, v1, :cond_9

    if-ne v5, v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_6

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;-><init>(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result p1

    if-eq p1, v3, :cond_8

    if-ne p1, v2, :cond_7

    goto :goto_1

    :cond_7
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;

    invoke-direct {p1, v4}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;-><init>(I)V

    goto :goto_3

    :cond_8
    :goto_1
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;

    invoke-direct {p1, v1}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;-><init>(I)V

    goto :goto_3

    :cond_9
    :goto_2
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;-><init>(I)V

    :goto_3
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType;->mType:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;

    return-void
.end method
