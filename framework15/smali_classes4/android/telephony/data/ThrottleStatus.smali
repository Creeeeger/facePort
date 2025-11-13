.class public final Landroid/telephony/data/ThrottleStatus;
.super Ljava/lang/Object;
.source "ThrottleStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/ThrottleStatus$Builder;,
        Landroid/telephony/data/ThrottleStatus$RetryType;,
        Landroid/telephony/data/ThrottleStatus$ThrottleType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/ThrottleStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RETRY_TYPE_HANDOVER:I = 0x3

.field public static final whitelist RETRY_TYPE_NEW_CONNECTION:I = 0x2

.field public static final whitelist RETRY_TYPE_NONE:I = 0x1

.field public static final whitelist THROTTLE_TYPE_ELAPSED_TIME:I = 0x2

.field public static final whitelist THROTTLE_TYPE_NONE:I = 0x1


# instance fields
.field private final blacklist mApnType:I

.field private final blacklist mRetryType:I

.field private final blacklist mSlotIndex:I

.field private final blacklist mThrottleExpiryTimeMillis:J

.field private final blacklist mThrottleType:I

.field private final blacklist mTransportType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/data/ThrottleStatus$1;

    invoke-direct {v0}, Landroid/telephony/data/ThrottleStatus$1;-><init>()V

    sput-object v0, Landroid/telephony/data/ThrottleStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIIJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    iput p2, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    iput p3, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    iput p4, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    iput-wide p5, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    iput p7, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIJILandroid/telephony/data/ThrottleStatus-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/telephony/data/ThrottleStatus;-><init>(IIIIJI)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/ThrottleStatus-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/ThrottleStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/telephony/data/ThrottleStatus;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/telephony/data/ThrottleStatus;

    iget v2, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    iget v3, v1, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    iget v3, v1, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    iget v3, v1, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    iget v3, v1, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    iget-wide v4, v1, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    iget v3, v1, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method public whitelist getApnType()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    return v0
.end method

.method public whitelist getRetryType()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    return v0
.end method

.method public whitelist getSlotIndex()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    return v0
.end method

.method public whitelist getThrottleExpiryTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    return-wide v0
.end method

.method public whitelist getThrottleType()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    return v0
.end method

.method public whitelist getTransportType()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThrottleStatus{mSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mApnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThrottleExpiryTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRetryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThrottleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mTransportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mApnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleExpiryTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mRetryType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ThrottleStatus;->mThrottleType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
