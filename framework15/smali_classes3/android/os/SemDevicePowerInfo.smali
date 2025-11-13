.class public Landroid/os/SemDevicePowerInfo;
.super Ljava/lang/Object;
.source "SemDevicePowerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/SemDevicePowerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist actualGpsTime:J

.field public blacklist aodPower:D

.field public blacklist aodTime:J

.field public blacklist batteryPerc:I

.field public blacklist btOnTime:J

.field public blacklist btScanCount:I

.field public blacklist btScanTime:J

.field public blacklist btTotalBytes:J

.field public blacklist cpIdleTime:J

.field public blacklist cpSleepTime:J

.field public blacklist gpsTime:J

.field public blacklist hrrAlwaysTime:J

.field public blacklist idlePower:D

.field public blacklist idleTime:J

.field public blacklist lcRxByte:J

.field public blacklist lcRxTime:J

.field public blacklist lcTxByte:J

.field public blacklist lcTxLevel:D

.field public blacklist lcTxTime:J

.field public blacklist mobileActiveCount:I

.field public blacklist mobileActiveTime:J

.field public blacklist mobileActiveTime5G:J

.field public blacklist mobileTotalBytes:J

.field public blacklist mobileTotalPackets:J

.field public blacklist nrRxByte:J

.field public blacklist nrRxTime:J

.field public blacklist nrTxByte:J

.field public blacklist nrTxLevel:D

.field public blacklist nrTxTime:J

.field public blacklist phoneOnTime:J

.field public blacklist phonePower:D

.field public blacklist powersharePower:J

.field public blacklist powershareTime:J

.field public blacklist psmTime:J

.field public blacklist pwlTime:J

.field public blacklist radioPower:D

.field public blacklist screenAutoBrightnessTime:[J

.field public blacklist screenBrightnessTime:[J

.field public blacklist screenDozeDischarge:I

.field public blacklist screenHighBrightnessTime:J

.field public blacklist screenOffCoulombCounter:I

.field public blacklist screenOffDischarge:I

.field public blacklist screenOffTime:J

.field public blacklist screenOffUptime:J

.field public blacklist screenOnCoulombCounter:I

.field public blacklist screenOnCount:I

.field public blacklist screenOnDischarge:I

.field public blacklist screenOnGpsTime:J

.field public blacklist screenOnTime:J

.field public blacklist screenPower:D

.field public blacklist signalStrengthTime:[J

.field public blacklist spkCallLevel:J

.field public blacklist spkCallTime:J

.field public blacklist spkMediaLevel:J

.field public blacklist spkMediaTime:J

.field public blacklist subAodTime:J

.field public blacklist subHrrAlwaysTime:J

.field public blacklist subScreenAutoBrightnessTime:[J

.field public blacklist subScreenBrightnessTime:[J

.field public blacklist subScreenDozeDischarge:I

.field public blacklist subScreenHighBrightnessTime:J

.field public blacklist subScreenOnDischarge:I

.field public blacklist subScreenOnTime:J

.field public blacklist totalPower:D

.field public blacklist uptime:J

.field public blacklist wifiOnTime:J

.field public blacklist wifiPower:D

.field public blacklist wifiScanCount:I

.field public blacklist wifiScanTime:J

.field public blacklist wifiTotalBytes:J

.field public blacklist wifiTotalPackets:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/SemDevicePowerInfo$1;

    invoke-direct {v0}, Landroid/os/SemDevicePowerInfo$1;-><init>()V

    sput-object v0, Landroid/os/SemDevicePowerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    invoke-virtual {p0}, Landroid/os/SemDevicePowerInfo;->reset()V

    return-void
.end method

.method public constructor blacklist <init>(D)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    invoke-virtual {p0}, Landroid/os/SemDevicePowerInfo;->reset()V

    iput-wide p1, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->aodPower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->phonePower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->idleTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->radioPower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->screenDozeDischarge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenDozeDischarge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->uptime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    const/4 v0, 0x0

    :goto_4
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    return-void
.end method


# virtual methods
.method public blacklist addDelta(Landroid/os/SemDevicePowerInfo;)V
    .locals 10

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->totalPower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->screenPower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodPower:D

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->aodPower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodPower:D

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phonePower:D

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->phonePower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phonePower:D

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->idlePower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idleTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->idleTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idleTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->radioPower:D

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->radioPower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->radioPower:D

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenDozeDischarge:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->screenDozeDischarge:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenDozeDischarge:I

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenDozeDischarge:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->subScreenDozeDischarge:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenDozeDischarge:I

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->uptime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->uptime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->uptime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->aodTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->psmTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    iget v1, p1, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    iget-wide v6, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    long-to-double v6, v6

    mul-double/2addr v0, v6

    iget-wide v6, p1, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    iget-wide v8, p1, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    long-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v0, v6

    iget-wide v6, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    iget-wide v8, p1, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    add-long/2addr v6, v8

    long-to-double v6, v6

    div-double/2addr v0, v6

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    goto :goto_2

    :cond_2
    iput-wide v4, p0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    :goto_2
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    iget-wide v6, p1, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    iget-wide v6, p1, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    iget-wide v6, p1, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    iget-wide v6, p1, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    iget-wide v6, p1, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    add-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    iget-wide v4, p1, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    long-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    iget-wide v4, p1, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    add-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    goto :goto_3

    :cond_3
    iput-wide v4, p0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    :goto_3
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reset()V
    .locals 7

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phonePower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->idleTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->radioPower:D

    const/4 v4, 0x0

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->screenDozeDischarge:I

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->subScreenDozeDischarge:I

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->uptime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x5

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    aput-wide v2, v6, v5

    iget-object v6, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    aput-wide v2, v6, v5

    iget-object v6, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    aput-wide v2, v6, v5

    iget-object v6, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    aput-wide v2, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    const/4 v5, 0x0

    :goto_1
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    aput-wide v2, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    iput v4, p0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    iput-wide v2, p0, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "power = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", screenPower = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", idlePower = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", percent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenOnTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", screenOffTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uptime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", screenOffUptime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", AOD = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", powerSave = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", wakelock time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist update(Landroid/os/SemDevicePowerInfo;)V
    .locals 4

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->totalPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->screenPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->aodPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodPower:D

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->phonePower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phonePower:D

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->idlePower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->idleTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idleTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->radioPower:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->radioPower:D

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->screenDozeDischarge:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenDozeDischarge:I

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->subScreenDozeDischarge:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenDozeDischarge:I

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->uptime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->uptime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->aodTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->psmTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    iget v0, p1, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    iput v0, p0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    iget-wide v0, p1, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    iput-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->totalPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phonePower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idlePower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->idleTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->radioPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenDozeDischarge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenDozeDischarge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->uptime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->aodTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->psmTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    aget-wide v1, v1, v0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x0

    :goto_4
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    aget-wide v1, v1, v0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
