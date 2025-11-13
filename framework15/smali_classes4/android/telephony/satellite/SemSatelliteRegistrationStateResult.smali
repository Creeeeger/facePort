.class public final Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;
.super Ljava/lang/Object;
.source "SemSatelliteRegistrationStateResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$Builder;,
        Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$SatelliteRegState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist DBG:Z = true

.field static final blacklist LOG_TAG:Ljava/lang/String; = "SatelliteRegStateResult"

.field public static final whitelist SATELLITE_REG_STATE_DENIED:I = 0x3

.field public static final whitelist SATELLITE_REG_STATE_HOME:I = 0x1

.field public static final whitelist SATELLITE_REG_STATE_NOT_REGISTERED_OR_SEARCHING:I = 0x0

.field public static final whitelist SATELLITE_REG_STATE_NOT_REGISTERED_SEARCHING:I = 0x2

.field public static final whitelist SATELLITE_REG_STATE_ROAMING:I = 0x5

.field public static final whitelist SATELLITE_REG_STATE_UNKNOWN:I = 0x4


# instance fields
.field private blacklist mArfcn:I

.field private blacklist mBeamId:I

.field private blacklist mBmLat:I

.field private blacklist mBmLong:I

.field private blacklist mCi:I

.field private blacklist mLac:I

.field private blacklist mMode:I

.field private blacklist mRegState:I

.field private blacklist mRejectCause:I

.field private blacklist mSatelliteId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmArfcn(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mArfcn:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBeamId(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBeamId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBmLat(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBmLong(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLong:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCi(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mCi:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLac(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mLac:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMode(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegState(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRegState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRejectCause(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRejectCause:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mMode:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRegState:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mLac:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mCi:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mArfcn:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBeamId:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLong:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLat:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRejectCause:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mSatelliteId:I

    return-void
.end method

.method public constructor blacklist <init>(IIIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mMode:I

    iput p2, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRegState:I

    iput p3, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mLac:I

    iput p4, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mCi:I

    iput p5, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mArfcn:I

    iput p6, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBeamId:I

    iput p7, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLong:I

    iput p8, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLat:I

    iput p9, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRejectCause:I

    iput p10, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mSatelliteId:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRegState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mLac:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mCi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mArfcn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBeamId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLong:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRejectCause:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mSatelliteId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SemSatelliteRegistrationStateResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->copyFrom(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)V

    return-void
.end method

.method private blacklist copy()Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    invoke-direct {v1, v0}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public static blacklist regStateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown reg state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "ROAMING"

    return-object v0

    :pswitch_1
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_2
    const-string v0, "DENIED"

    return-object v0

    :pswitch_3
    const-string v0, "NOT_REG_SEARCHING"

    return-object v0

    :pswitch_4
    const-string v0, "HOME"

    return-object v0

    :pswitch_5
    const-string v0, "NOT_REG_OR_SEARCHING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected blacklist copyFrom(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)V
    .locals 1

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mMode:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mMode:I

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRegState:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRegState:I

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mLac:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mLac:I

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mCi:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mCi:I

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mArfcn:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mArfcn:I

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBeamId:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBeamId:I

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLong:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLong:I

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLat:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLat:I

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRejectCause:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRejectCause:I

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mSatelliteId:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mSatelliteId:I

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

    instance-of v2, p1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    iget v3, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mMode:I

    iget v4, v2, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mMode:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRegState:I

    iget v4, v2, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRegState:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mLac:I

    iget v4, v2, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mLac:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mCi:I

    iget v4, v2, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mCi:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mArfcn:I

    iget v4, v2, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mArfcn:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBeamId:I

    iget v4, v2, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBeamId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLong:I

    iget v4, v2, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLong:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLat:I

    iget v4, v2, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLat:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRejectCause:I

    iget v4, v2, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRejectCause:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mSatelliteId:I

    iget v4, v2, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mSatelliteId:I

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

.method public blacklist getArfcn()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mArfcn:I

    return v0
.end method

.method public blacklist getBeamId()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBeamId:I

    return v0
.end method

.method public blacklist getBmLat()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLat:I

    return v0
.end method

.method public blacklist getBmLong()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLong:I

    return v0
.end method

.method public blacklist getCi()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mCi:I

    return v0
.end method

.method public blacklist getLac()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mLac:I

    return v0
.end method

.method public blacklist getMode()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mMode:I

    return v0
.end method

.method public whitelist getRegState()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRegState:I

    return v0
.end method

.method public blacklist getRejectCause()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRejectCause:I

    return v0
.end method

.method public blacklist getSatelliteId()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mSatelliteId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 10

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRegState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mLac:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mCi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mArfcn:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBeamId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLong:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLat:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRejectCause:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isNetworkRegistered()Z
    .locals 3

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRegState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRegState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public blacklist isNetworkRoaming()Z
    .locals 2

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRegState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isNetworkSearching()Z
    .locals 2

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRegState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SatelliteRegistrationStateResult {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " regState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRegState:I

    invoke-static {v1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->regStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mLac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mCi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " arfcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mArfcn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " beamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBeamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bmLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLong:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bmLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rejectCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRejectCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mCi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mArfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBeamId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLong:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mBmLat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mRejectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;->mSatelliteId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
