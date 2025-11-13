.class final Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
.super Ljava/lang/Object;
.source "CellBroadcastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellBroadcastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmsCbConcatInfo"
.end annotation


# instance fields
.field private final blacklist mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

.field private final blacklist mReceivedTime:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$moverTime(Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;)Z
    .locals 0

    invoke-direct {p0}, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->overTime()Z

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;J)V
    .locals 0
    .param p1, "header"    # Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .param p2, "receivedTime"    # J

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p1, p0, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    .line 448
    iput-wide p2, p0, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mReceivedTime:J

    .line 449
    return-void
.end method

.method private blacklist overTime()Z
    .locals 6

    .line 471
    iget-wide v0, p0, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mReceivedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 458
    instance-of v0, p1, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 459
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;

    .line 463
    .local v0, "other":Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
    iget-object v2, p0, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v2

    iget-object v3, v0, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mReceivedTime:J

    iget-wide v4, v0, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mReceivedTime:J

    const-wide/32 v6, 0x493e0

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 467
    .end local v0    # "other":Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;
    :cond_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 453
    iget-object v0, p0, Landroid/telephony/CellBroadcastService$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method
