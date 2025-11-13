.class public final synthetic Lcom/samsung/android/wifitrackerlib/SemSavedNetworkTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iget-boolean p0, p1, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
