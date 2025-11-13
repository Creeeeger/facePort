.class public final Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;
.super Ljava/lang/Object;
.source "HotspotNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDeviceId:J

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mHotspotBssid:Ljava/lang/String;

.field private final blacklist mHotspotSecurityTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHotspotSsid:Ljava/lang/String;

.field private blacklist mNetworkName:Ljava/lang/String;

.field private blacklist mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

.field private blacklist mNetworkType:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mDeviceId:J

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mHotspotSecurityTypes:Landroid/util/ArraySet;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist addHotspotSecurityType(I)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mHotspotSecurityTypes:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist build()Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    .locals 12

    new-instance v11, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    iget-wide v1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mDeviceId:J

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    iget v4, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mNetworkType:I

    iget-object v5, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mNetworkName:Ljava/lang/String;

    iget-object v6, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mHotspotSsid:Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mHotspotBssid:Ljava/lang/String;

    iget-object v8, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mHotspotSecurityTypes:Landroid/util/ArraySet;

    iget-object v9, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;-><init>(JLandroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Landroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork-IA;)V

    return-object v11
.end method

.method public whitelist setDeviceId(J)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mDeviceId:J

    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setHostNetworkType(I)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;
    .locals 0

    iput p1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mNetworkType:I

    return-object p0
.end method

.method public whitelist setHotspotBssid(Ljava/lang/String;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mHotspotBssid:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setHotspotSsid(Ljava/lang/String;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mHotspotSsid:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setNetworkName(Ljava/lang/String;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mNetworkName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setNetworkProviderInfo(Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    return-object p0
.end method
