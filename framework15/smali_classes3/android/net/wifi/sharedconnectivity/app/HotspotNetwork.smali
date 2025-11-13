.class public final Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
.super Ljava/lang/Object;
.source "HotspotNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$Builder;,
        Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$NetworkType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NETWORK_TYPE_CELLULAR:I = 0x1

.field public static final whitelist NETWORK_TYPE_ETHERNET:I = 0x3

.field public static final whitelist NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist NETWORK_TYPE_WIFI:I = 0x2


# instance fields
.field private final blacklist mDeviceId:J

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mHotspotBssid:Ljava/lang/String;

.field private final blacklist mHotspotSecurityTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHotspotSsid:Ljava/lang/String;

.field private final blacklist mNetworkName:Ljava/lang/String;

.field private final blacklist mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

.field private final blacklist mNetworkType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$1;

    invoke-direct {v0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork$1;-><init>()V

    sput-object v0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JLandroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p4, p5, p3}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->validate(JILjava/lang/String;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;)V

    iput-wide p1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mDeviceId:J

    iput-object p3, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    iput p4, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mNetworkType:I

    iput-object p5, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mNetworkName:Ljava/lang/String;

    iput-object p6, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mHotspotSsid:Ljava/lang/String;

    iput-object p7, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mHotspotBssid:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p8}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mHotspotSecurityTypes:Landroid/util/ArraySet;

    iput-object p9, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Landroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;-><init>(JLandroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Landroid/os/Bundle;)V

    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;
    .locals 11

    new-instance v10, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {p0}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v8

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v9

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;-><init>(JLandroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Landroid/os/Bundle;)V

    return-object v10
.end method

.method private static blacklist validate(JILjava/lang/String;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_4

    invoke-static {p4}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal network type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p3}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NetworkName must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NetworkProviderInfo must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DeviceId must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;

    iget-wide v2, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mDeviceId:J

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getDeviceId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getNetworkProviderInfo()Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mNetworkType:I

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getHostNetworkType()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mHotspotSsid:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getHotspotSsid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mHotspotBssid:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getHotspotBssid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mHotspotSecurityTypes:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->getHotspotSecurityTypes()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public whitelist getDeviceId()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mDeviceId:J

    return-wide v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getHostNetworkType()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mNetworkType:I

    return v0
.end method

.method public whitelist getHotspotBssid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mHotspotBssid:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHotspotSecurityTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mHotspotSecurityTypes:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getHotspotSsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mHotspotSsid:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNetworkName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNetworkProviderInfo()Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 8

    iget-wide v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mDeviceId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    iget-object v4, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mNetworkName:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mHotspotSsid:Ljava/lang/String;

    iget-object v6, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mHotspotBssid:Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mHotspotSecurityTypes:Landroid/util/ArraySet;

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HotspotNetwork["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mDeviceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkProviderInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    invoke-virtual {v1}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotspotSsid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mHotspotSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotspotBssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mHotspotBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotspotSecurityTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mHotspotSecurityTypes:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mDeviceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mHotspotSsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mHotspotBssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mHotspotSecurityTypes:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
