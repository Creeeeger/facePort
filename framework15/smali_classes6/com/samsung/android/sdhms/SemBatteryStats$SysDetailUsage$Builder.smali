.class public final Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;
.super Ljava/lang/Object;
.source "SemBatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist drainType:I

.field private blacklist power:D

.field private blacklist usedTime:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdrainType(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;->drainType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpower(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;->power:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetusedTime(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;->usedTime:J

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage;-><init>(Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;)V

    return-object v0
.end method

.method public blacklist drainType(I)Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;->drainType:I

    return-object p0
.end method

.method public blacklist power(D)Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;->power:D

    return-object p0
.end method

.method public blacklist usedTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$SysDetailUsage$Builder;->usedTime:J

    return-object p0
.end method
