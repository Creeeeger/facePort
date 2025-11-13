.class public Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;
.super Ljava/lang/Object;
.source "SatelliteSubscriberProvisionStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mProvisionStatus:Z

.field private blacklist mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;->-$$Nest$fgetmSubscriberInfo(Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;)Landroid/telephony/satellite/SatelliteSubscriberInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;->-$$Nest$fgetmProvisionStatus(Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisionStatus:Z

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    const-class v0, Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteSubscriberInfo;

    iput-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisionStatus:Z

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
    instance-of v1, p1, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;

    iget-object v3, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    iget-object v4, v1, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisionStatus:Z

    iget-boolean v4, v1, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisionStatus:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getProvisionStatus()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisionStatus:Z

    return v0
.end method

.method public blacklist getSatelliteSubscriberInfo()Landroid/telephony/satellite/SatelliteSubscriberInfo;
    .locals 1

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    iget-boolean v1, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisionStatus:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SatelliteSubscriberInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ProvisionStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisionStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mSubscriberInfo:Landroid/telephony/satellite/SatelliteSubscriberInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;->mProvisionStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
