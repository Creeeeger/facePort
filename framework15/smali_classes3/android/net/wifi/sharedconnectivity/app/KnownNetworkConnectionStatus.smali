.class public final Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;
.super Ljava/lang/Object;
.source "KnownNetworkConnectionStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$Builder;,
        Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$ConnectionStatus;
    }
.end annotation


# static fields
.field public static final whitelist CONNECTION_STATUS_SAVED:I = 0x1

.field public static final whitelist CONNECTION_STATUS_SAVE_FAILED:I = 0x2

.field public static final whitelist CONNECTION_STATUS_UNKNOWN:I

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mKnownNetwork:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

.field private final blacklist mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$1;

    invoke-direct {v0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus$1;-><init>()V

    sput-object v0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/net/wifi/sharedconnectivity/app/KnownNetwork;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->validate(I)V

    iput p1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mStatus:I

    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mKnownNetwork:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    iput-object p3, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/net/wifi/sharedconnectivity/app/KnownNetwork;Landroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;-><init>(ILandroid/net/wifi/sharedconnectivity/app/KnownNetwork;Landroid/os/Bundle;)V

    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;
    .locals 4

    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {p0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;-><init>(ILandroid/net/wifi/sharedconnectivity/app/KnownNetwork;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private static blacklist validate(I)V
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal connection status"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    iget v2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mStatus:I

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->getStatus()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mKnownNetwork:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->getKnownNetwork()Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

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

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getKnownNetwork()Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mKnownNetwork:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    return-object v0
.end method

.method public whitelist getStatus()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mStatus:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mKnownNetwork:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KnownNetworkConnectionStatus["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "known network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mKnownNetwork:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    invoke-virtual {v1}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mExtras:Landroid/os/Bundle;

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

    iget v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mKnownNetwork:Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
