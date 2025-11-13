.class public Landroid/os/SemUidPowerInfo;
.super Ljava/lang/Object;
.source "SemUidPowerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/SemUidPowerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist actualGpsTime:J

.field public blacklist audioTime:J

.field public blacklist bgTime:J

.field public blacklist btData:J

.field public blacklist btScan:I

.field public blacklist cameraRunTime:J

.field public blacklist cpuTime:J

.field public final blacklist displayTopActivityTime:[J

.field public blacklist fgTime:J

.field public blacklist gpsTime:J

.field public blacklist killCount:J

.field public blacklist mobileActive:J

.field public blacklist mobileData:J

.field public blacklist mobilePackets:J

.field public blacklist networkWakeup:J

.field public blacklist power:D

.field public blacklist screenPower:D

.field public blacklist screenTime:J

.field public blacklist shouldHide:Z

.field public blacklist smearedPower:D

.field public blacklist spkLevel:J

.field public blacklist spkTime:J

.field public blacklist syncTime:J

.field public blacklist uid:I

.field public blacklist wakelockTime:J

.field public blacklist wakeupAlarm:I

.field public blacklist wifiData:J

.field public blacklist wifiPackets:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/SemUidPowerInfo$1;

    invoke-direct {v0}, Landroid/os/SemUidPowerInfo$1;-><init>()V

    sput-object v0, Landroid/os/SemUidPowerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/SemUidPowerInfo;->uid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->screenPower:D

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->smearedPower:D

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->power:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/SemUidPowerInfo;->shouldHide:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->cpuTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->wakelockTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->mobileActive:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->mobileData:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->mobilePackets:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->wifiPackets:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->wifiData:J

    iput v0, p0, Landroid/os/SemUidPowerInfo;->wakeupAlarm:I

    iput v0, p0, Landroid/os/SemUidPowerInfo;->btScan:I

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->btData:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->gpsTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->actualGpsTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->cameraRunTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->killCount:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->screenTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->fgTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->bgTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->spkTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->spkLevel:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->audioTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->networkWakeup:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->syncTime:J

    invoke-direct {p0}, Landroid/os/SemUidPowerInfo;->getNumDisplays()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/SemUidPowerInfo;->displayTopActivityTime:[J

    iget-object v0, p0, Landroid/os/SemUidPowerInfo;->displayTopActivityTime:[J

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemUidPowerInfo;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->screenPower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->smearedPower:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->power:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/SemUidPowerInfo;->shouldHide:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->cpuTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->wakelockTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->mobileActive:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->mobileData:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->mobilePackets:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->wifiPackets:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->wifiData:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemUidPowerInfo;->wakeupAlarm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemUidPowerInfo;->btScan:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->btData:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->gpsTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->actualGpsTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->cameraRunTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->killCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->screenTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->fgTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->bgTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->spkTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->spkLevel:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->audioTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->networkWakeup:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->syncTime:J

    invoke-direct {p0}, Landroid/os/SemUidPowerInfo;->getNumDisplays()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/SemUidPowerInfo;->displayTopActivityTime:[J

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/os/SemUidPowerInfo;->displayTopActivityTime:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/SemUidPowerInfo;->displayTopActivityTime:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist getNumDisplays()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist addDelta(Landroid/os/SemUidPowerInfo;)V
    .locals 6

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->screenPower:D

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->screenPower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->screenPower:D

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->smearedPower:D

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->smearedPower:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->smearedPower:D

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->power:D

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->power:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->power:D

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->cpuTime:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->cpuTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->cpuTime:J

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->wakelockTime:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->wakelockTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->wakelockTime:J

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->mobileActive:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->mobileActive:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->mobileActive:J

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->mobileData:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->mobileData:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->mobileData:J

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->mobilePackets:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->mobilePackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->mobilePackets:J

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->wifiPackets:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->wifiPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->wifiPackets:J

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->wifiData:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->wifiData:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->wifiData:J

    iget v0, p0, Landroid/os/SemUidPowerInfo;->wakeupAlarm:I

    iget v1, p1, Landroid/os/SemUidPowerInfo;->wakeupAlarm:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemUidPowerInfo;->wakeupAlarm:I

    iget v0, p0, Landroid/os/SemUidPowerInfo;->btScan:I

    iget v1, p1, Landroid/os/SemUidPowerInfo;->btScan:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/os/SemUidPowerInfo;->btScan:I

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->btData:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->btData:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->btData:J

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->gpsTime:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->gpsTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->gpsTime:J

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->actualGpsTime:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->actualGpsTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->actualGpsTime:J

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->cameraRunTime:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->cameraRunTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->cameraRunTime:J

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->killCount:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->killCount:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->killCount:J

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->screenTime:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->screenTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->screenTime:J

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->fgTime:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->fgTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->fgTime:J

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->bgTime:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->bgTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->bgTime:J

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->spkTime:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->spkTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->spkTime:J

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->spkLevel:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->spkLevel:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->spkLevel:J

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->audioTime:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->audioTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->audioTime:J

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->networkWakeup:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->networkWakeup:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->networkWakeup:J

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->syncTime:J

    iget-wide v2, p1, Landroid/os/SemUidPowerInfo;->syncTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->syncTime:J

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/os/SemUidPowerInfo;->displayTopActivityTime:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/SemUidPowerInfo;->displayTopActivityTime:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Landroid/os/SemUidPowerInfo;->displayTopActivityTime:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reset()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->screenPower:D

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->smearedPower:D

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->power:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/SemUidPowerInfo;->shouldHide:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->cpuTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->wakelockTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->mobileActive:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->mobileData:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->mobilePackets:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->wifiPackets:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->wifiData:J

    iput v0, p0, Landroid/os/SemUidPowerInfo;->wakeupAlarm:I

    iput v0, p0, Landroid/os/SemUidPowerInfo;->btScan:I

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->btData:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->gpsTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->actualGpsTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->cameraRunTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->killCount:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->screenTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->fgTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->bgTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->spkTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->spkLevel:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->audioTime:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->networkWakeup:J

    iput-wide v1, p0, Landroid/os/SemUidPowerInfo;->syncTime:J

    iget-object v0, p0, Landroid/os/SemUidPowerInfo;->displayTopActivityTime:[J

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 9

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->power:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->cpuTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->wakelockTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->mobileActive:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->mobilePackets:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->wifiPackets:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v0, p0, Landroid/os/SemUidPowerInfo;->wakeupAlarm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "power %f cpu %d wake %d mActive %d mPkt %d wPkt %d walarm %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist update(Landroid/os/SemUidPowerInfo;)V
    .locals 4

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->screenPower:D

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->screenPower:D

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->smearedPower:D

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->smearedPower:D

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->power:D

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->power:D

    iget-boolean v0, p1, Landroid/os/SemUidPowerInfo;->shouldHide:Z

    iput-boolean v0, p0, Landroid/os/SemUidPowerInfo;->shouldHide:Z

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->cpuTime:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->cpuTime:J

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->wakelockTime:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->wakelockTime:J

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->mobileActive:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->mobileActive:J

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->mobileData:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->mobileData:J

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->mobilePackets:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->mobilePackets:J

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->wifiPackets:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->wifiPackets:J

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->wifiData:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->wifiData:J

    iget v0, p1, Landroid/os/SemUidPowerInfo;->wakeupAlarm:I

    iput v0, p0, Landroid/os/SemUidPowerInfo;->wakeupAlarm:I

    iget v0, p1, Landroid/os/SemUidPowerInfo;->btScan:I

    iput v0, p0, Landroid/os/SemUidPowerInfo;->btScan:I

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->btData:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->btData:J

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->gpsTime:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->gpsTime:J

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->actualGpsTime:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->actualGpsTime:J

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->cameraRunTime:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->cameraRunTime:J

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->killCount:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->killCount:J

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->screenTime:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->screenTime:J

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->fgTime:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->fgTime:J

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->bgTime:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->bgTime:J

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->spkTime:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->spkTime:J

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->spkLevel:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->spkLevel:J

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->audioTime:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->audioTime:J

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->networkWakeup:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->networkWakeup:J

    iget-wide v0, p1, Landroid/os/SemUidPowerInfo;->syncTime:J

    iput-wide v0, p0, Landroid/os/SemUidPowerInfo;->syncTime:J

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/os/SemUidPowerInfo;->displayTopActivityTime:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/SemUidPowerInfo;->displayTopActivityTime:[J

    iget-object v2, p1, Landroid/os/SemUidPowerInfo;->displayTopActivityTime:[J

    aget-wide v2, v2, v0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Landroid/os/SemUidPowerInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->screenPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->smearedPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->power:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-boolean v0, p0, Landroid/os/SemUidPowerInfo;->shouldHide:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->cpuTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->wakelockTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->mobileActive:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->mobileData:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->mobilePackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->wifiPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->wifiData:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/SemUidPowerInfo;->wakeupAlarm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/SemUidPowerInfo;->btScan:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->btData:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->gpsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->actualGpsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->cameraRunTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->killCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->screenTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->fgTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->bgTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->spkTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->spkLevel:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->audioTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->networkWakeup:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemUidPowerInfo;->syncTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/os/SemUidPowerInfo;->displayTopActivityTime:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/SemUidPowerInfo;->displayTopActivityTime:[J

    aget-wide v1, v1, v0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
