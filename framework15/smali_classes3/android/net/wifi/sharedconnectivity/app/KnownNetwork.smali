.class public final Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
.super Ljava/lang/Object;
.source "KnownNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$Builder;,
        Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$NetworkSource;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NETWORK_SOURCE_CLOUD_SELF:I = 0x2

.field public static final whitelist NETWORK_SOURCE_NEARBY_SELF:I = 0x1

.field public static final whitelist NETWORK_SOURCE_UNKNOWN:I


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

.field private final blacklist mNetworkSource:I

.field private final blacklist mSecurityTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSsid:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$1;

    invoke-direct {v0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork$1;-><init>()V

    sput-object v0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Landroid/util/ArraySet;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3, p4}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->validate(ILjava/lang/String;Ljava/util/Set;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;)V

    iput p1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkSource:I

    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSsid:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSecurityTypes:Landroid/util/ArraySet;

    iput-object p4, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    iput-object p5, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Landroid/util/ArraySet;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;Landroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/KnownNetwork-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;-><init>(ILjava/lang/String;Landroid/util/ArraySet;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
    .locals 10

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v8

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v9, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    invoke-static {p0}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    move-result-object v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    move-object v0, v9

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;-><init>(ILjava/lang/String;Landroid/util/ArraySet;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;Landroid/os/Bundle;)V

    return-object v9

    :cond_0
    new-instance v9, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, v9

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;-><init>(ILjava/lang/String;Landroid/util/ArraySet;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;Landroid/os/Bundle;)V

    return-object v9
.end method

.method private static blacklist validate(ILjava/lang/String;Ljava/util/Set;Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal network source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-ne p0, v0, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Device info must be provided when network source is NETWORK_SOURCE_NEARBY_SELF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SecurityTypes must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SSID must be set"

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
    .locals 4

    instance-of v0, p1, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    iget v2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkSource:I

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->getNetworkSource()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSsid:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSecurityTypes:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->getSecurityTypes()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->getNetworkProviderInfo()Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

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

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getNetworkProviderInfo()Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    return-object v0
.end method

.method public whitelist getNetworkSource()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkSource:I

    return v0
.end method

.method public whitelist getSecurityTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSecurityTypes:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getSsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkSource:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSsid:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSecurityTypes:Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KnownNetwork["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "NetworkSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", securityTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSecurityTypes:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkProviderInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    invoke-virtual {v1}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mExtras:Landroid/os/Bundle;

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
    .locals 1

    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mSecurityTypes:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mNetworkProviderInfo:Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/sharedconnectivity/app/NetworkProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
