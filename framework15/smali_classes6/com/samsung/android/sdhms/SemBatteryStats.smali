.class public Lcom/samsung/android/sdhms/SemBatteryStats;
.super Ljava/lang/Object;
.source "SemBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;,
        Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;,
        Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdhms/SemBatteryStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist appDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist beginTime:J

.field private blacklist endTime:J

.field private blacklist highBrightnessTime:J

.field private blacklist highRefreshRateTime:J

.field private blacklist screenOffDischarge:I

.field private blacklist screenOffTime:J

.field private blacklist screenOnCount:I

.field private blacklist screenOnDischarge:I

.field private blacklist screenOnTime:J

.field private blacklist screenPowerUsage:D

.field private blacklist sysDetailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist totalPowerUsage:D


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdhms/SemBatteryStats$1;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemBatteryStats$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdhms/SemBatteryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->beginTime:J

    iput-wide p3, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->endTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->totalPowerUsage:D

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenPowerUsage:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnTime:J

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOffTime:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnDischarge:I

    iput v2, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOffDischarge:I

    iput v2, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnCount:I

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->highBrightnessTime:J

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->highRefreshRateTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->appDetailList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->sysDetailList:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(JJDDJJIIIJJLjava/util/List;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJDDJJIIIJJ",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p20

    move-object/from16 v16, p21

    invoke-direct/range {v0 .. v16}, Lcom/samsung/android/sdhms/SemBatteryStats;-><init>(JJDDJJIILjava/util/List;Ljava/util/List;)V

    move/from16 v1, p15

    iput v1, v0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnCount:I

    move-wide/from16 v2, p16

    iput-wide v2, v0, Lcom/samsung/android/sdhms/SemBatteryStats;->highBrightnessTime:J

    move-wide/from16 v4, p18

    iput-wide v4, v0, Lcom/samsung/android/sdhms/SemBatteryStats;->highRefreshRateTime:J

    return-void
.end method

.method public constructor blacklist <init>(JJDDJJIILjava/util/List;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJDDJJII",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v1, p1

    iput-wide v1, v0, Lcom/samsung/android/sdhms/SemBatteryStats;->beginTime:J

    move-wide/from16 v3, p3

    iput-wide v3, v0, Lcom/samsung/android/sdhms/SemBatteryStats;->endTime:J

    move-wide/from16 v5, p5

    iput-wide v5, v0, Lcom/samsung/android/sdhms/SemBatteryStats;->totalPowerUsage:D

    move-wide/from16 v7, p7

    iput-wide v7, v0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenPowerUsage:D

    move-wide/from16 v9, p9

    iput-wide v9, v0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnTime:J

    move-wide/from16 v11, p11

    iput-wide v11, v0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOffTime:J

    move/from16 v13, p13

    iput v13, v0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnDischarge:I

    move/from16 v14, p14

    iput v14, v0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOffDischarge:I

    const/4 v15, 0x0

    iput v15, v0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnCount:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/samsung/android/sdhms/SemBatteryStats;->highBrightnessTime:J

    iput-wide v1, v0, Lcom/samsung/android/sdhms/SemBatteryStats;->highRefreshRateTime:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/sdhms/SemBatteryStats;->appDetailList:Ljava/util/List;

    if-eqz p15, :cond_0

    invoke-interface/range {p15 .. p15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;

    iget-object v15, v0, Lcom/samsung/android/sdhms/SemBatteryStats;->appDetailList:Ljava/util/List;

    move-object/from16 v16, v1

    new-instance v1, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;-><init>(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v16

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/sdhms/SemBatteryStats;->sysDetailList:Ljava/util/List;

    if-eqz p16, :cond_1

    invoke-interface/range {p16 .. p16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;

    iget-object v15, v0, Lcom/samsung/android/sdhms/SemBatteryStats;->sysDetailList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;

    invoke-direct {v0, v2}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;-><init>(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->beginTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->endTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->totalPowerUsage:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenPowerUsage:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOffTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnDischarge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOffDischarge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->highBrightnessTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->highRefreshRateTime:J

    sget-object v0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->appDetailList:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->sysDetailList:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->-$$Nest$fgetbeginTime(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->beginTime:J

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->-$$Nest$fgetendTime(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->endTime:J

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->-$$Nest$fgettotalPowerUsage(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->totalPowerUsage:D

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->-$$Nest$fgetscreenPowerUsage(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenPowerUsage:D

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->-$$Nest$fgetscreenOnTime(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnTime:J

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->-$$Nest$fgetscreenOffTime(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOffTime:J

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->-$$Nest$fgetscreenOnDischarge(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnDischarge:I

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->-$$Nest$fgetscreenOffDischarge(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOffDischarge:I

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->-$$Nest$fgetscreenOnCount(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnCount:I

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->-$$Nest$fgethighBrightnessTime(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->highBrightnessTime:J

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->-$$Nest$fgethighRefreshRateTime(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->highRefreshRateTime:J

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->-$$Nest$fgetappDetailList(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->appDetailList:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->-$$Nest$fgetsysDetailList(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->sysDetailList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist calculateDeviceUsageDelta(Lcom/samsung/android/sdhms/SemBatteryStats;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->totalPowerUsage:D

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats;->getTotalPowerUsage()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->totalPowerUsage:D

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenPowerUsage:D

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats;->getScreenPowerUsage()D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenPowerUsage:D

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats;->getScreenOnTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnTime:J

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOffTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats;->getScreenOffTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOffTime:J

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnDischarge:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats;->getScreenOnDischarge()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnDischarge:I

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOffDischarge:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats;->getScreenOffDischarge()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOffDischarge:I

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnCount:I

    iget v4, p1, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnCount:I

    sub-int/2addr v0, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnCount:I

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->highBrightnessTime:J

    iget-wide v4, p1, Lcom/samsung/android/sdhms/SemBatteryStats;->highBrightnessTime:J

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->highBrightnessTime:J

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->highRefreshRateTime:J

    iget-wide v4, p1, Lcom/samsung/android/sdhms/SemBatteryStats;->highRefreshRateTime:J

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->highRefreshRateTime:J

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAppDetailUsages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->appDetailList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getEndTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->endTime:J

    return-wide v0
.end method

.method public whitelist getHighBrightnessTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->highBrightnessTime:J

    return-wide v0
.end method

.method public whitelist getHighRefreshRateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->highRefreshRateTime:J

    return-wide v0
.end method

.method public whitelist getScreenOffDischarge()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOffDischarge:I

    return v0
.end method

.method public whitelist getScreenOffTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOffTime:J

    return-wide v0
.end method

.method public whitelist getScreenOnCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnCount:I

    return v0
.end method

.method public whitelist getScreenOnDischarge()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnDischarge:I

    return v0
.end method

.method public whitelist getScreenOnTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnTime:J

    return-wide v0
.end method

.method public whitelist getScreenPowerUsage()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenPowerUsage:D

    return-wide v0
.end method

.method public whitelist getStartTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->beginTime:J

    return-wide v0
.end method

.method public whitelist getSysDetailUsages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->sysDetailList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTotalPowerUsage()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->totalPowerUsage:D

    return-wide v0
.end method

.method public blacklist shiftTimestamp(J)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->beginTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->beginTime:J

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->endTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->endTime:J

    return-void
.end method

.method public blacklist updateAppUsage(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->appDetailList:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->appDetailList:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->appDetailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->appDetailList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public blacklist updateSysUsage(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->sysDetailList:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->sysDetailList:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->sysDetailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->sysDetailList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->beginTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->totalPowerUsage:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenPowerUsage:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOffTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnDischarge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOffDischarge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->screenOnCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->highBrightnessTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->highRefreshRateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->appDetailList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats;->sysDetailList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
