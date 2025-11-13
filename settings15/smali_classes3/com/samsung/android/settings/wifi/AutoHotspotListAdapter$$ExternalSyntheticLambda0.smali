.class public final synthetic Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    check-cast p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-boolean p0, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isNotValidNetwork:Z

    iget-boolean p1, p2, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isNotValidNetwork:Z

    invoke-static {p0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0
.end method
