.class public Landroid/hardware/scontext/SContextPedometer;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextPedometer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextPedometer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;

.field private blacklist mMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 778
    new-instance v0, Landroid/hardware/scontext/SContextPedometer$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPedometer$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextPedometer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 164
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    .line 167
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 172
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 173
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextPedometer;->readFromParcel(Landroid/os/Parcel;)V

    .line 174
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 769
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    .line 770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    .line 771
    return-void
.end method


# virtual methods
.method public blacklist getArraySize()I
    .locals 3

    .line 729
    const/4 v0, 0x0

    .line 730
    .local v0, "res":I
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 731
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "LoggingCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 733
    :cond_1
    return v0
.end method

.method public blacklist getCalorie()D
    .locals 2

    .line 219
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeCalorie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCalorieDiff()D
    .locals 2

    .line 337
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CalorieDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCalorieDiffArray()[D
    .locals 3

    .line 591
    const/4 v0, 0x0

    .line 592
    .local v0, "res":[D
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 593
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "CalorieDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 595
    :cond_1
    return-object v0
.end method

.method public blacklist getCumulativeCalorie()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 469
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeCalorie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCumulativeDistance()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 456
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeDistance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCumulativeRunDownStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 567
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCumulativeRunStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 539
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunFlatStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCumulativeRunUpStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 553
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCumulativeTotalStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 483
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeTotalStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCumulativeWalkDownStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 525
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCumulativeWalkStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 497
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkFlatStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCumulativeWalkUpStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 511
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDistance()D
    .locals 2

    .line 230
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeDistance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDistanceDiff()D
    .locals 2

    .line 346
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "DistanceDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDistanceDiffArray()[D
    .locals 3

    .line 605
    const/4 v0, 0x0

    .line 606
    .local v0, "res":[D
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 607
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "DistanceDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 609
    :cond_1
    return-object v0
.end method

.method public blacklist getMode()I
    .locals 1

    .line 183
    iget v0, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    return v0
.end method

.method public blacklist getRunDownStepCount()J
    .locals 2

    .line 311
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getRunDownStepCountDiff()J
    .locals 2

    .line 416
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "RunDownStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getRunDownStepCountDiffArray()[J
    .locals 3

    .line 703
    const/4 v0, 0x0

    .line 704
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 705
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "RunDownStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 707
    :cond_1
    return-object v0
.end method

.method public blacklist getRunStepCount()J
    .locals 2

    .line 288
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunFlatStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getRunStepCountDiff()J
    .locals 2

    .line 396
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "RunStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getRunStepCountDiffArray()[J
    .locals 3

    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 677
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "RunStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 679
    :cond_1
    return-object v0
.end method

.method public blacklist getRunUpStepCount()J
    .locals 2

    .line 299
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeRunUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getRunUpStepCountDiff()J
    .locals 2

    .line 406
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "RunUpStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getRunUpStepCountDiffArray()[J
    .locals 3

    .line 689
    const/4 v0, 0x0

    .line 690
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 691
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "RunUpStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 693
    :cond_1
    return-object v0
.end method

.method public blacklist getSpeed()D
    .locals 2

    .line 208
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "Speed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getSpeedArray()[D
    .locals 3

    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, "res":[D
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 579
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "SpeedArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    .line 581
    :cond_1
    return-object v0
.end method

.method public blacklist getStepStatus()I
    .locals 2

    .line 199
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "StepStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getTimeStampArray()[J
    .locals 3

    .line 716
    const/4 v0, 0x0

    .line 717
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 718
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "TimeStampArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 720
    :cond_1
    return-object v0
.end method

.method public blacklist getTotalStepCount()J
    .locals 2

    .line 241
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeTotalStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getTotalStepCountDiff()J
    .locals 2

    .line 356
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "TotalStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getTotalStepCountDiffArray()[J
    .locals 3

    .line 619
    const/4 v0, 0x0

    .line 620
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 621
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "TotalStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 623
    :cond_1
    return-object v0
.end method

.method public blacklist getUpDownStepCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 328
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "UpDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getUpDownStepCountDiff()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 434
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "UpDownStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getWalkDownStepCount()J
    .locals 2

    .line 276
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkDownStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getWalkDownStepCountDiff()J
    .locals 2

    .line 386
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkDownStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getWalkDownStepCountDiffArray()[J
    .locals 3

    .line 661
    const/4 v0, 0x0

    .line 662
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 663
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "WalkDownStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 665
    :cond_1
    return-object v0
.end method

.method public blacklist getWalkStepCount()J
    .locals 2

    .line 253
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkFlatStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getWalkStepCountDiff()J
    .locals 2

    .line 366
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getWalkStepCountDiffArray()[J
    .locals 3

    .line 633
    const/4 v0, 0x0

    .line 634
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 635
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "WalkStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 637
    :cond_1
    return-object v0
.end method

.method public blacklist getWalkUpStepCount()J
    .locals 2

    .line 264
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "CumulativeWalkUpStepCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getWalkUpStepCountDiff()J
    .locals 2

    .line 376
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkUpStepCountDiff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getWalkUpStepCountDiffArray()[J
    .locals 3

    .line 647
    const/4 v0, 0x0

    .line 648
    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 649
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v2, "WalkUpStepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 651
    :cond_1
    return-object v0
.end method

.method public blacklist getWalkingFrequency()D
    .locals 2

    .line 443
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    const-string v1, "WalkingFrequency"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/os/Bundle;

    .line 743
    iput-object p1, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    .line 744
    const-string v0, "Mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    .line 745
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 758
    iget-object v0, p0, Landroid/hardware/scontext/SContextPedometer;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 759
    iget v0, p0, Landroid/hardware/scontext/SContextPedometer;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    return-void
.end method
