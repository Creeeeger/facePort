.class public final Landroid/telephony/data/DataProfile;
.super Ljava/lang/Object;
.source "DataProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/DataProfile$Builder;,
        Landroid/telephony/data/DataProfile$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TYPE_3GPP:I = 0x1

.field public static final whitelist TYPE_3GPP2:I = 0x2

.field public static final whitelist TYPE_COMMON:I


# instance fields
.field private final blacklist mApnSetting:Landroid/telephony/data/ApnSetting;

.field private blacklist mCid:I

.field private blacklist mPreferred:Z

.field private greylist-max-o mProfileId:I

.field private blacklist mSetupTimestamp:J

.field private final blacklist mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

.field private final greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/data/DataProfile$1;

    invoke-direct {v0}, Landroid/telephony/data/DataProfile$1;-><init>()V

    sput-object v0, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    const-class v0, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/ApnSetting;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/ApnSetting;

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    const-class v0, Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/TrafficDescriptor;

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/DataProfile;->mSetupTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mCid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/DataProfile-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/DataProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/data/DataProfile$Builder;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmApnSetting(Landroid/telephony/data/DataProfile$Builder;)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmTrafficDescriptor(Landroid/telephony/data/DataProfile$Builder;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmPreferred(Landroid/telephony/data/DataProfile$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmType(Landroid/telephony/data/DataProfile$Builder;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmType(Landroid/telephony/data/DataProfile$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v0

    if-nez v0, :cond_1

    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    goto :goto_0

    :cond_1
    int-to-long v2, v0

    const-wide/16 v4, 0x2878

    and-long/2addr v2, v4

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const/4 v1, 0x2

    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    goto :goto_0

    :cond_2
    int-to-long v2, v0

    const-wide/32 v4, 0xdd387

    and-long/2addr v2, v4

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const/4 v1, 0x1

    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    goto :goto_0

    :cond_3
    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    :goto_0
    goto :goto_1

    :cond_4
    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    :goto_1
    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmCid(Landroid/telephony/data/DataProfile$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mCid:I

    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmProfileId(Landroid/telephony/data/DataProfile$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/data/DataProfile$Builder;Landroid/telephony/data/DataProfile-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/DataProfile;-><init>(Landroid/telephony/data/DataProfile$Builder;)V

    return-void
.end method

.method private static blacklist networkCapabilityToApnType(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/16 v0, 0x2000

    return v0

    :sswitch_1
    const/16 v0, 0x1000

    return v0

    :sswitch_2
    const/16 v0, 0x4000

    return v0

    :sswitch_3
    const/16 v0, 0x400

    return v0

    :sswitch_4
    const/16 v0, 0x11

    return v0

    :sswitch_5
    const/16 v0, 0x200

    return v0

    :sswitch_6
    const/16 v0, 0x800

    return v0

    :sswitch_7
    const v0, 0x8000

    return v0

    :sswitch_8
    const/16 v0, 0x100

    return v0

    :sswitch_9
    const/16 v0, 0x80

    return v0

    :sswitch_a
    const/16 v0, 0x40

    return v0

    :sswitch_b
    const/16 v0, 0x20

    return v0

    :sswitch_c
    const/16 v0, 0x8

    return v0

    :sswitch_d
    const/4 v0, 0x4

    return v0

    :sswitch_e
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x1 -> :sswitch_d
        0x2 -> :sswitch_c
        0x3 -> :sswitch_b
        0x4 -> :sswitch_a
        0x5 -> :sswitch_9
        0x7 -> :sswitch_8
        0x8 -> :sswitch_7
        0x9 -> :sswitch_6
        0xa -> :sswitch_5
        0xc -> :sswitch_4
        0x17 -> :sswitch_3
        0x1d -> :sswitch_2
        0x1e -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public blacklist canSatisfy(I)Z
    .locals 2

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-static {p1}, Landroid/telephony/data/DataProfile;->networkCapabilityToApnType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist canSatisfy([I)Z
    .locals 5

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result v4

    if-nez v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

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
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/DataProfile;

    iget v3, p0, Landroid/telephony/data/DataProfile;->mType:I

    iget v4, v2, Landroid/telephony/data/DataProfile;->mType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v4, v2, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    iget-object v4, v2, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getApn()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getApnSetting()Landroid/telephony/data/ApnSetting;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method public whitelist getAuthType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBearerBitmask()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCid()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataProfile;->mCid:I

    return v0
.end method

.method public blacklist getLastSetupTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/data/DataProfile;->mSetupTimestamp:J

    return-wide v0
.end method

.method public blacklist getMaxConnections()I
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMaxConns()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaxConnectionsTime()I
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMaxConnsTime()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMtu()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV4()I

    move-result v0

    return v0
.end method

.method public whitelist getMtuV4()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMtuV6()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPassword()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getProfileId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getProtocolType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist getRoamingProtocolType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSupportedApnTypesBitmask()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    return-object v0
.end method

.method public whitelist getType()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    return v0
.end method

.method public whitelist getUserName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getWaitTime()I
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getWaitTime()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v2, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isPersistent()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isPreferred()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    return v0
.end method

.method public blacklist setCid(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/data/DataProfile;->mCid:I

    return-void
.end method

.method public blacklist setLastSetupTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Landroid/telephony/data/DataProfile;->mSetupTimestamp:J

    return-void
.end method

.method public blacklist setPreferred(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    return-void
.end method

.method public blacklist setProfileId(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DataProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSetupTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/data/DataProfile;->mSetupTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    iget v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-wide v0, p0, Landroid/telephony/data/DataProfile;->mSetupTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
