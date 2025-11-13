.class public final synthetic Lcom/samsung/android/settings/wifi/develop/homewifi/SsidListAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;

    check-cast p2, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;->ssid:Ljava/lang/String;

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p2, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    iget p1, p1, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/BssidInfo;->rssi:I

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;->ssid:Ljava/lang/String;

    iget-object p1, p2, Lcom/samsung/android/settings/wifi/develop/homewifi/ExtendedBssidInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method
