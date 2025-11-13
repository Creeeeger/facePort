.class public final Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
.super Ljava/lang/Object;
.source "SemBatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


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
.method static bridge synthetic blacklist -$$Nest$fgetappDetailList(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->appDetailList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetbeginTime(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->beginTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetendTime(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->endTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgethighBrightnessTime(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->highBrightnessTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgethighRefreshRateTime(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->highRefreshRateTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetscreenOffDischarge(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOffDischarge:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetscreenOffTime(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOffTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetscreenOnCount(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOnCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetscreenOnDischarge(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOnDischarge:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetscreenOnTime(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOnTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetscreenPowerUsage(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenPowerUsage:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsysDetailList(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->sysDetailList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettotalPowerUsage(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->totalPowerUsage:D

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist appDetailList(Ljava/util/List;)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;",
            ">;)",
            "Lcom/samsung/android/sdhms/SemBatteryStats$Builder;"
        }
    .end annotation

    .line 322
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;>;"
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->appDetailList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->appDetailList:Ljava/util/List;

    .line 325
    :cond_0
    if-nez p1, :cond_1

    .line 326
    return-object p0

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->appDetailList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 330
    return-object p0
.end method

.method public blacklist beginTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .locals 0
    .param p1, "value"    # J

    .line 267
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->beginTime:J

    .line 268
    return-object p0
.end method

.method public blacklist build()Lcom/samsung/android/sdhms/SemBatteryStats;
    .locals 1

    .line 349
    new-instance v0, Lcom/samsung/android/sdhms/SemBatteryStats;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdhms/SemBatteryStats;-><init>(Lcom/samsung/android/sdhms/SemBatteryStats$Builder;)V

    return-object v0
.end method

.method public blacklist endTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .locals 0
    .param p1, "value"    # J

    .line 272
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->endTime:J

    .line 273
    return-object p0
.end method

.method public blacklist highBrightnessTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .locals 0
    .param p1, "value"    # J

    .line 312
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->highBrightnessTime:J

    .line 313
    return-object p0
.end method

.method public blacklist highRefreshRateTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .locals 0
    .param p1, "value"    # J

    .line 317
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->highRefreshRateTime:J

    .line 318
    return-object p0
.end method

.method public blacklist screenOffDischarge(I)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .locals 0
    .param p1, "value"    # I

    .line 302
    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOffDischarge:I

    .line 303
    return-object p0
.end method

.method public blacklist screenOffTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .locals 0
    .param p1, "value"    # J

    .line 292
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOffTime:J

    .line 293
    return-object p0
.end method

.method public blacklist screenOnCount(I)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .locals 0
    .param p1, "value"    # I

    .line 307
    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOnCount:I

    .line 308
    return-object p0
.end method

.method public blacklist screenOnDischarge(I)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .locals 0
    .param p1, "value"    # I

    .line 297
    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOnDischarge:I

    .line 298
    return-object p0
.end method

.method public blacklist screenOnTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .locals 0
    .param p1, "value"    # J

    .line 287
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenOnTime:J

    .line 288
    return-object p0
.end method

.method public blacklist screenPowerUsage(D)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .locals 0
    .param p1, "value"    # D

    .line 282
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->screenPowerUsage:D

    .line 283
    return-object p0
.end method

.method public blacklist sysDetailList(Ljava/util/List;)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;",
            ">;)",
            "Lcom/samsung/android/sdhms/SemBatteryStats$Builder;"
        }
    .end annotation

    .line 334
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;>;"
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->sysDetailList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->sysDetailList:Ljava/util/List;

    .line 337
    :cond_0
    if-nez p1, :cond_1

    .line 338
    return-object p0

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->sysDetailList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 342
    return-object p0
.end method

.method public blacklist totalPowerUsage(D)Lcom/samsung/android/sdhms/SemBatteryStats$Builder;
    .locals 0
    .param p1, "value"    # D

    .line 277
    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$Builder;->totalPowerUsage:D

    .line 278
    return-object p0
.end method
