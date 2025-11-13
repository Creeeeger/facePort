.class public final Landroid/net/wifi/nl80211/PnoNetwork;
.super Ljava/lang/Object;
.source "PnoNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/nl80211/PnoNetwork;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFrequencies:[I

.field private blacklist mIsHidden:Z

.field private blacklist mSsid:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFrequencies(Landroid/net/wifi/nl80211/PnoNetwork;)[I
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSsid(Landroid/net/wifi/nl80211/PnoNetwork;)[B
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFrequencies(Landroid/net/wifi/nl80211/PnoNetwork;[I)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsHidden(Landroid/net/wifi/nl80211/PnoNetwork;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSsid(Landroid/net/wifi/nl80211/PnoNetwork;[B)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/nl80211/PnoNetwork$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/PnoNetwork$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/PnoNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/net/wifi/nl80211/PnoNetwork;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/nl80211/PnoNetwork;

    iget-object v3, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    iget-object v4, v1, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    iget-object v4, v1, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    iget-boolean v4, v1, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getFrequenciesMhz()[I
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    return-object v0
.end method

.method public whitelist getSsid()[B
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isHidden()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    return v0
.end method

.method public whitelist setFrequenciesMhz([I)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    return-void
.end method

.method public whitelist setSsid([B)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mIsHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mSsid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/net/wifi/nl80211/PnoNetwork;->mFrequencies:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
