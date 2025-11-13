.class public final Landroid/telephony/ims/MediaThreshold$Builder;
.super Ljava/lang/Object;
.source "MediaThreshold.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/MediaThreshold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mRtpInactivityTimeMillis:[J

.field private blacklist mRtpJitter:[I

.field private blacklist mRtpPacketLossRate:[I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/ims/MediaThreshold;
    .locals 5

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    :goto_0
    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    goto :goto_1

    :cond_1
    new-array v0, v1, [I

    :goto_1
    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    nop

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    goto :goto_2

    :cond_2
    new-array v0, v1, [J

    :goto_2
    iput-object v0, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    new-instance v0, Landroid/telephony/ims/MediaThreshold;

    iget-object v1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    iget-object v2, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    iget-object v3, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/ims/MediaThreshold;-><init>([I[I[JLandroid/telephony/ims/MediaThreshold-IA;)V

    return-object v0
.end method

.method public blacklist setThresholdsRtpInactivityTimeMillis([J)Landroid/telephony/ims/MediaThreshold$Builder;
    .locals 7

    array-length v0, p1

    if-lez v0, :cond_3

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/telephony/ims/MediaThreshold;->isValidRtpInactivityTimeMillis(J)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    new-array v1, v1, [J

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-int/lit8 v6, v2, 0x1

    aput-wide v4, v1, v2

    move v2, v6

    goto :goto_1

    :cond_2
    iput-object v1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    goto :goto_2

    :cond_3
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpInactivityTimeMillis:[J

    :goto_2
    return-object p0
.end method

.method public blacklist setThresholdsRtpJitterMillis([I)Landroid/telephony/ims/MediaThreshold$Builder;
    .locals 6

    array-length v0, p1

    if-lez v0, :cond_3

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/ims/MediaThreshold;->isValidJitterMillis(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    aput v4, v1, v2

    move v2, v5

    goto :goto_1

    :cond_2
    iput-object v1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    goto :goto_2

    :cond_3
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpJitter:[I

    :goto_2
    return-object p0
.end method

.method public blacklist setThresholdsRtpPacketLossRate([I)Landroid/telephony/ims/MediaThreshold$Builder;
    .locals 6

    array-length v0, p1

    if-lez v0, :cond_3

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/ims/MediaThreshold;->isValidRtpPacketLossRate(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    aput v4, v1, v2

    move v2, v5

    goto :goto_1

    :cond_2
    iput-object v1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    goto :goto_2

    :cond_3
    iput-object p1, p0, Landroid/telephony/ims/MediaThreshold$Builder;->mRtpPacketLossRate:[I

    :goto_2
    return-object p0
.end method
