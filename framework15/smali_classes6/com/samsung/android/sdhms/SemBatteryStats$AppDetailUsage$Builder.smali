.class public final Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
.super Ljava/lang/Object;
.source "SemBatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist audioTime:J

.field private blacklist bgTime:J

.field private blacklist bluetoothScanCount:I

.field private blacklist cpuTime:J

.field private blacklist fgTime:J

.field private blacklist gpsTime:J

.field private blacklist mobilePackets:J

.field private blacklist mobileRadioActiveTime:J

.field private blacklist power:D

.field private blacklist screenPower:D

.field private blacklist uid:I

.field private blacklist wakelockTime:J

.field private blacklist walarm:I

.field private blacklist wifiPackets:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetaudioTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->audioTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetbgTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->bgTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetbluetoothScanCount(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->bluetoothScanCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetcpuTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->cpuTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfgTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->fgTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetgpsTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->gpsTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmobilePackets(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->mobilePackets:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmobileRadioActiveTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->mobileRadioActiveTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpower(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->power:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetscreenPower(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->screenPower:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetuid(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->uid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwakelockTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->wakelockTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwalarm(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->walarm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwifiPackets(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->wifiPackets:J

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist audioTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->audioTime:J

    return-object p0
.end method

.method public blacklist bgTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->bgTime:J

    return-object p0
.end method

.method public blacklist bluetoothScanCount(I)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->bluetoothScanCount:I

    return-object p0
.end method

.method public blacklist build()Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;-><init>(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)V

    return-object v0
.end method

.method public blacklist cpuTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->cpuTime:J

    return-object p0
.end method

.method public blacklist fgTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->fgTime:J

    return-object p0
.end method

.method public blacklist gpsTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->gpsTime:J

    return-object p0
.end method

.method public blacklist mobilePackets(J)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->mobilePackets:J

    return-object p0
.end method

.method public blacklist mobileRadioActiveTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->mobileRadioActiveTime:J

    return-object p0
.end method

.method public blacklist power(D)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->power:D

    return-object p0
.end method

.method public blacklist screenPower(D)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->screenPower:D

    return-object p0
.end method

.method public blacklist uid(I)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->uid:I

    return-object p0
.end method

.method public blacklist wakelockTime(J)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->wakelockTime:J

    return-object p0
.end method

.method public blacklist walarm(I)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->walarm:I

    return-object p0
.end method

.method public blacklist wifiPackets(J)Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->wifiPackets:J

    return-object p0
.end method
