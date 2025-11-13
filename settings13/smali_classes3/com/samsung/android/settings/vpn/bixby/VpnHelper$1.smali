.class Lcom/samsung/android/settings/vpn/bixby/VpnHelper$1;
.super Ljava/lang/Object;
.source "VpnHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->loadVpnProfiles()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/net/VpnProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/net/VpnProfile;Lcom/android/internal/net/VpnProfile;)I
    .locals 0

    .line 139
    iget-object p0, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    if-nez p0, :cond_1

    .line 140
    iget-object p0, p2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    .line 141
    :cond_1
    iget-object p1, p2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 144
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 136
    check-cast p1, Lcom/android/internal/net/VpnProfile;

    check-cast p2, Lcom/android/internal/net/VpnProfile;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper$1;->compare(Lcom/android/internal/net/VpnProfile;Lcom/android/internal/net/VpnProfile;)I

    move-result p0

    return p0
.end method
