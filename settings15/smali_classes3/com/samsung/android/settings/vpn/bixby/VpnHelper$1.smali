.class public final Lcom/samsung/android/settings/vpn/bixby/VpnHelper$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/internal/net/VpnProfile;

    check-cast p2, Lcom/android/internal/net/VpnProfile;

    iget-object p0, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    if-nez p0, :cond_1

    iget-object p0, p2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    if-nez p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method
