.class public Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;
.super Ljava/lang/Object;
.source "SatelliteSubscriberInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/SatelliteSubscriberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCarrierId:I

.field private blacklist mNiddApn:Ljava/lang/String;

.field private blacklist mSubId:I

.field private blacklist mSubscriberId:Ljava/lang/String;

.field private blacklist mSubscriberIdType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNiddApn(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mNiddApn:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubId(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriberId(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mSubscriberId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriberIdType(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mSubscriberIdType:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/satellite/SatelliteSubscriberInfo;
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteSubscriberInfo;-><init>(Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;)V

    return-object v0
.end method

.method public blacklist setCarrierId(I)Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mCarrierId:I

    return-object p0
.end method

.method public blacklist setNiddApn(Ljava/lang/String;)Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mNiddApn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSubId(I)Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mSubId:I

    return-object p0
.end method

.method public blacklist setSubscriberId(Ljava/lang/String;)Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mSubscriberId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSubscriberIdType(I)Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SatelliteSubscriberInfo$Builder;->mSubscriberIdType:I

    return-object p0
.end method
