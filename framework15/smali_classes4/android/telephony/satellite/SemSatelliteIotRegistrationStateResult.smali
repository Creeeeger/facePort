.class public final Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;
.super Ljava/lang/Object;
.source "SemSatelliteIotRegistrationStateResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist DBG:Z = true

.field static final blacklist LOG_TAG:Ljava/lang/String; = "SatelliteIotRegState"

.field public static final blacklist SATELLITE_IOT_NOT_REGISTERED:I = 0x0

.field public static final blacklist SATELLITE_IOT_REGISTERED:I = 0x1

.field public static final blacklist SATELLITE_REGISTERED_TYPE_AM:I = 0x1

.field public static final blacklist SATELLITE_REGISTERED_TYPE_NONE:I = 0x0

.field public static final blacklist SATELLITE_REGISTERED_TYPE_TM:I = 0x2


# instance fields
.field private blacklist mRegType:I

.field private blacklist mState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRegType(Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    iput p2, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->copyFrom(Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;)V

    return-void
.end method

.method private blacklist copy()Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v1, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;

    invoke-direct {v1, v0}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public static blacklist regTypeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown iot reg type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "IOT_REG_TYPE_TM"

    return-object v0

    :pswitch_1
    const-string v0, "IOT_REG_TYPE_AM"

    return-object v0

    :pswitch_2
    const-string v0, "IOT_REG_TYPE_NONE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist stateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown iot reg state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "IOT_REGISTERED"

    return-object v0

    :pswitch_1
    const-string v0, "IOT_NOT_REGISTERED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected blacklist copyFrom(Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;)V
    .locals 1

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    return-void
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

    instance-of v2, p1, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;

    iget v3, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    iget v4, v2, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    iget v4, v2, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getRegType()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    return v0
.end method

.method public blacklist getState()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    const-string v1, "SatelliteIotRegistrationStateResult {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    invoke-static {v1}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " regType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    invoke-static {v1}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->regTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
