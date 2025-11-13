.class public final Landroid/telephony/ims/MediaThreshold;
.super Ljava/lang/Object;
.source "MediaThreshold.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/MediaThreshold$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/MediaThreshold;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRtpInactivityTimeMillis:[J

.field private final blacklist mRtpJitter:[I

.field private final blacklist mRtpPacketLossRate:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/MediaThreshold$1;

    invoke-direct {v0}, Landroid/telephony/ims/MediaThreshold$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/MediaThreshold;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpPacketLossRate:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpJitter:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpInactivityTimeMillis:[J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/MediaThreshold-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/MediaThreshold;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>([I[I[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold;->mRtpPacketLossRate:[I

    iput-object p2, p0, Landroid/telephony/ims/MediaThreshold;->mRtpJitter:[I

    iput-object p3, p0, Landroid/telephony/ims/MediaThreshold;->mRtpInactivityTimeMillis:[J

    return-void
.end method

.method synthetic constructor blacklist <init>([I[I[JLandroid/telephony/ims/MediaThreshold-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/MediaThreshold;-><init>([I[I[J)V

    return-void
.end method

.method public static blacklist isValidJitterMillis(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x2710

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isValidRtpInactivityTimeMillis(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0xea60

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isValidRtpPacketLossRate(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    check-cast v2, Landroid/telephony/ims/MediaThreshold;

    iget-object v3, p0, Landroid/telephony/ims/MediaThreshold;->mRtpPacketLossRate:[I

    iget-object v4, v2, Landroid/telephony/ims/MediaThreshold;->mRtpPacketLossRate:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/MediaThreshold;->mRtpJitter:[I

    iget-object v4, v2, Landroid/telephony/ims/MediaThreshold;->mRtpJitter:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/MediaThreshold;->mRtpInactivityTimeMillis:[J

    iget-object v4, v2, Landroid/telephony/ims/MediaThreshold;->mRtpInactivityTimeMillis:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

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

.method public whitelist getThresholdsRtpInactivityTimeMillis()[J
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpInactivityTimeMillis:[J

    return-object v0
.end method

.method public whitelist getThresholdsRtpJitterMillis()[I
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpJitter:[I

    return-object v0
.end method

.method public whitelist getThresholdsRtpPacketLossRate()[I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpPacketLossRate:[I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpPacketLossRate:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/MediaThreshold;->mRtpJitter:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ims/MediaThreshold;->mRtpInactivityTimeMillis:[J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaThreshold{mRtpPacketLossRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/MediaThreshold;->mRtpPacketLossRate:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, " "

    if-ge v4, v2, :cond_0

    aget v6, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ", mRtpJitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/MediaThreshold;->mRtpJitter:[I

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget v6, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v1, ", mRtpInactivityTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/MediaThreshold;->mRtpInactivityTimeMillis:[J

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_2

    aget-wide v6, v1, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpPacketLossRate:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpJitter:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold;->mRtpInactivityTimeMillis:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
