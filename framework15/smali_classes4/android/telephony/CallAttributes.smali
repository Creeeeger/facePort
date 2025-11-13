.class public final Landroid/telephony/CallAttributes;
.super Ljava/lang/Object;
.source "CallAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CallAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCallQuality:Landroid/telephony/CallQuality;

.field private blacklist mNetworkType:I

.field private blacklist mPreciseCallState:Landroid/telephony/PreciseCallState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CallAttributes$1;

    invoke-direct {v0}, Landroid/telephony/CallAttributes$1;-><init>()V

    sput-object v0, Landroid/telephony/CallAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/telephony/PreciseCallState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/PreciseCallState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PreciseCallState;

    iput-object v0, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    const-class v0, Landroid/telephony/CallQuality;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/CallQuality;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CallQuality;

    iput-object v0, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CallAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CallAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    iput p2, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    iput-object p3, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

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

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Landroid/telephony/CallAttributes;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/telephony/CallAttributes;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/CallAttributes;

    iget-object v3, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    iget-object v4, v2, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    iget v4, v2, Landroid/telephony/CallAttributes;->mNetworkType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    iget-object v4, v2, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method public whitelist getCallQuality()Landroid/telephony/CallQuality;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    return-object v0
.end method

.method public whitelist getNetworkType()I
    .locals 1

    iget v0, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    return v0
.end method

.method public whitelist getPreciseCallState()Landroid/telephony/PreciseCallState;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    iget v1, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreciseCallState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCallQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/CallAttributes;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/telephony/CallAttributes;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/CallAttributes;->mCallQuality:Landroid/telephony/CallQuality;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
