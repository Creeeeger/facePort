.class public final Landroid/telephony/satellite/SatelliteSubscriberInfo;
.super Ljava/lang/Object;
.source "SatelliteSubscriberInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;,
        Landroid/telephony/satellite/SatelliteSubscriberInfo$SubscriberIdType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SatelliteSubscriberInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ICCID:I = 0x0

.field public static final blacklist IMSI_MSISDN:I = 0x1


# instance fields
.field private blacklist mCarrierId:I

.field private blacklist mNiddApn:Ljava/lang/String;

.field private blacklist mSubId:I

.field private blacklist mSubscriberId:Ljava/lang/String;

.field private blacklist mSubscriberIdType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteSubscriberInfo$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteSubscriberInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteSubscriberInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SatelliteSubscriberInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteSubscriberInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->-$$Nest$fgetmSubscriberId(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberId:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->-$$Nest$fgetmCarrierId(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mCarrierId:I

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->-$$Nest$fgetmNiddApn(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mNiddApn:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->-$$Nest$fgetmSubId(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubId:I

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->-$$Nest$fgetmSubscriberIdType(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberIdType:I

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mCarrierId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mNiddApn:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberIdType:I

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
    instance-of v1, p1, Landroid/telephony/satellite/SatelliteSubscriberInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/satellite/SatelliteSubscriberInfo;

    iget-object v3, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberId:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mCarrierId:I

    iget v4, v1, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mCarrierId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mNiddApn:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mNiddApn:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubId:I

    iget v4, v1, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberIdType:I

    iget v4, v1, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberIdType:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getCarrierId()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mCarrierId:I

    return v0
.end method

.method public blacklist getNiddApn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mNiddApn:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSubId()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubId:I

    return v0
.end method

.method public blacklist getSubscriberId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSubscriberIdType()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberIdType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberId:Ljava/lang/String;

    iget v1, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mCarrierId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mNiddApn:Ljava/lang/String;

    iget v3, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberIdType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubscriberId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CarrierId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mCarrierId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NiddApn:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mNiddApn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SubId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SubscriberIdType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberIdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mCarrierId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mNiddApn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo;->mSubscriberIdType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
