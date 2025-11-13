.class Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;
.super Ljava/lang/Object;
.source "SemContextLocationCoreAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FusedBatchOption"
.end annotation


# instance fields
.field final blacklist distance_thrs:F

.field final blacklist flags:I

.field final blacklist max_power:D

.field final blacklist period:J

.field final blacklist user_info:I


# direct methods
.method constructor blacklist <init>(JIIDF)V
    .locals 0
    .param p1, "period"    # J
    .param p3, "user_info"    # I
    .param p4, "flags"    # I
    .param p5, "max_power"    # D
    .param p7, "distance_thrs"    # F

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput-wide p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->period:J

    .line 588
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->user_info:I

    .line 589
    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->flags:I

    .line 590
    iput-wide p5, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->max_power:D

    .line 591
    iput p7, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->distance_thrs:F

    .line 592
    return-void
.end method


# virtual methods
.method blacklist isValid()Z
    .locals 7

    .line 595
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->period:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-string v2, "SemContextLocationCoreAttribute"

    if-gez v0, :cond_0

    .line 596
    const-string v0, "FusedBatchOption.period is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return v1

    .line 599
    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->user_info:I

    if-gez v0, :cond_1

    .line 600
    const-string v0, "FusedBatchOption.user_info is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return v1

    .line 603
    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->flags:I

    if-gez v0, :cond_2

    .line 604
    const-string v0, "FusedBatchOption.flags is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return v1

    .line 607
    :cond_2
    iget-wide v3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->max_power:D

    const-wide/16 v5, 0x0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_3

    .line 608
    const-string v0, "FusedBatchOption.max_power is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return v1

    .line 611
    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->distance_thrs:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    .line 612
    const-string v0, "FusedBatchOption.distance_thrs is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return v1

    .line 615
    :cond_4
    const/4 v0, 0x1

    return v0
.end method
