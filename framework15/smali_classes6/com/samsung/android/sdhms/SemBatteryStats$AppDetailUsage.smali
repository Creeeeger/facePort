.class public Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;
.super Ljava/lang/Object;
.source "SemBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailUsage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;",
            ">;"
        }
    .end annotation
.end field


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

.field private final blacklist uid:I

.field private blacklist wakelockTime:J

.field private blacklist walarm:I

.field private blacklist wifiPackets:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$1;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->uid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    iput v2, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetuid(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->uid:I

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetpower(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetscreenPower(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetfgTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetbgTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetcpuTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetwakelockTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetmobilePackets(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetwifiPackets(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetwalarm(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetgpsTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetaudioTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetmobileRadioActiveTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetbluetoothScanCount(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getUid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->uid:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getPowerUsage()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getScreenPowerUsage()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getForegroundTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getBackgroundTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getWakelockTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getMobileDataUsage()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getWifiDataUsage()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getWakeAlarmCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getGpsTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getAudioTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getMobileRadioActiveTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getBluetoothScanCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    return-void
.end method


# virtual methods
.method public blacklist addAppUsage(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;)V
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->uid:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getPowerUsage()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getScreenPowerUsage()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getForegroundTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getBackgroundTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getCpuTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getWakelockTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getMobileDataUsage()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getWifiDataUsage()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getWakeAlarmCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getGpsTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getAudioTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getMobileRadioActiveTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getBluetoothScanCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    return-void
.end method

.method public blacklist calculateDelta(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;)V
    .locals 8

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->uid:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getPowerUsage()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getScreenPowerUsage()D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getForegroundTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getBackgroundTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getCpuTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getWakelockTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getMobileDataUsage()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getWifiDataUsage()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getWakeAlarmCount()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    iget-wide v4, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getGpsTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    iget-wide v4, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getAudioTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    iget-wide v4, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getMobileRadioActiveTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getBluetoothScanCount()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAudioTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    return-wide v0
.end method

.method public whitelist getBackgroundTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    return-wide v0
.end method

.method public whitelist getBluetoothScanCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    return v0
.end method

.method public whitelist getCpuTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    return-wide v0
.end method

.method public whitelist getForegroundTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    return-wide v0
.end method

.method public whitelist getGpsTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    return-wide v0
.end method

.method public whitelist getMobileDataUsage()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    return-wide v0
.end method

.method public whitelist getMobileRadioActiveTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    return-wide v0
.end method

.method public whitelist getPowerUsage()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    return-wide v0
.end method

.method public whitelist getScreenPowerUsage()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    return-wide v0
.end method

.method public whitelist getUid()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->uid:I

    return v0
.end method

.method public whitelist getWakeAlarmCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    return v0
.end method

.method public whitelist getWakelockTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    return-wide v0
.end method

.method public whitelist getWifiDataUsage()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
