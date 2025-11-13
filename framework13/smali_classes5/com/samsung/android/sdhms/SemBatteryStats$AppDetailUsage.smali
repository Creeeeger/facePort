.class public Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;
.super Ljava/lang/Object;
.source "SemBatteryStats.java"

# interfaces
.implements Ljava/lang/Cloneable;
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

    .line 901
    new-instance v0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$1;

    invoke-direct {v0}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput p1, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->uid:I

    .line 546
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    .line 547
    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    .line 548
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    .line 549
    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    .line 550
    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    .line 551
    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    .line 552
    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    .line 553
    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    .line 554
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    .line 555
    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    .line 556
    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    .line 557
    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    .line 558
    iput v2, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    .line 559
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 882
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->uid:I

    .line 883
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    .line 884
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    .line 885
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    .line 886
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    .line 887
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    .line 888
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    .line 889
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    .line 890
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    .line 891
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    .line 892
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    .line 893
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    .line 894
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    .line 895
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    .line 896
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;

    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 820
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetuid(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->uid:I

    .line 821
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetpower(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    .line 822
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetscreenPower(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    .line 823
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetfgTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    .line 824
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetbgTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    .line 825
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetcpuTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    .line 826
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetwakelockTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    .line 827
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetmobilePackets(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    .line 828
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetwifiPackets(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    .line 829
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetwalarm(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    .line 830
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetgpsTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    .line 831
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetaudioTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    .line 832
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetmobileRadioActiveTime(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    .line 833
    invoke-static {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;->-$$Nest$fgetbluetoothScanCount(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    .line 834
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;)V
    .locals 2
    .param p1, "copy"    # Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getUid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->uid:I

    .line 566
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getPowerUsage()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    .line 567
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getScreenPowerUsage()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    .line 568
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getForegroundTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    .line 569
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getBackgroundTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    .line 570
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    .line 571
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getWakelockTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    .line 572
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getMobileDataUsage()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    .line 573
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getWifiDataUsage()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    .line 574
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getWakeAlarmCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    .line 575
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getGpsTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    .line 576
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getAudioTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    .line 577
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getMobileRadioActiveTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    .line 578
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getBluetoothScanCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    .line 579
    return-void
.end method


# virtual methods
.method public blacklist addAppUsage(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;)V
    .locals 4
    .param p1, "input"    # Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;

    .line 840
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->uid:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 842
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getPowerUsage()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    .line 843
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getScreenPowerUsage()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    .line 844
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getForegroundTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    .line 845
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getBackgroundTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    .line 846
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getCpuTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    .line 847
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getWakelockTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    .line 848
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getMobileDataUsage()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    .line 849
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getWifiDataUsage()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    .line 850
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getWakeAlarmCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    .line 851
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getGpsTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    .line 852
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getAudioTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    .line 853
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getMobileRadioActiveTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    .line 854
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getBluetoothScanCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    .line 855
    return-void
.end method

.method public blacklist calculateDelta(Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;)V
    .locals 8
    .param p1, "prev"    # Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;

    .line 861
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->uid:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 863
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getPowerUsage()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    .line 864
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getScreenPowerUsage()D

    move-result-wide v4

    sub-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    .line 865
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getForegroundTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    .line 866
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getBackgroundTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    .line 867
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getCpuTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    .line 868
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getWakelockTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    .line 869
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getMobileDataUsage()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    .line 870
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getWifiDataUsage()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    .line 871
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getWakeAlarmCount()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    .line 872
    iget-wide v4, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getGpsTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    .line 873
    iget-wide v4, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getAudioTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    .line 874
    iget-wide v4, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getMobileRadioActiveTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    .line 875
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getBluetoothScanCount()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    .line 876
    return-void
.end method

.method public whitelist clone()Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;
    .locals 1

    .line 948
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 949
    :catch_0
    move-exception v0

    .line 951
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 511
    invoke-virtual {p0}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->clone()Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 918
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAudioTime()J
    .locals 2

    .line 686
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    return-wide v0
.end method

.method public whitelist getBackgroundTime()J
    .locals 2

    .line 623
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    return-wide v0
.end method

.method public whitelist getBluetoothScanCount()I
    .locals 1

    .line 704
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    return v0
.end method

.method public whitelist getCpuTime()J
    .locals 2

    .line 632
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    return-wide v0
.end method

.method public whitelist getForegroundTime()J
    .locals 2

    .line 614
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    return-wide v0
.end method

.method public whitelist getGpsTime()J
    .locals 2

    .line 677
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    return-wide v0
.end method

.method public whitelist getMobileDataUsage()J
    .locals 2

    .line 650
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    return-wide v0
.end method

.method public whitelist getMobileRadioActiveTime()J
    .locals 2

    .line 695
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    return-wide v0
.end method

.method public whitelist getPowerUsage()D
    .locals 2

    .line 596
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    return-wide v0
.end method

.method public whitelist getScreenPowerUsage()D
    .locals 2

    .line 605
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    return-wide v0
.end method

.method public whitelist getUid()I
    .locals 1

    .line 587
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->uid:I

    return v0
.end method

.method public whitelist getWakeAlarmCount()I
    .locals 1

    .line 668
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    return v0
.end method

.method public whitelist getWakelockTime()J
    .locals 2

    .line 641
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    return-wide v0
.end method

.method public whitelist getWifiDataUsage()J
    .locals 2

    .line 659
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 926
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->power:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 928
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->screenPower:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 929
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->fgTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 930
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bgTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 931
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->cpuTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 932
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wakelockTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 933
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobilePackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 934
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->wifiPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 935
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->walarm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->gpsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 937
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->audioTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 938
    iget-wide v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->mobileRadioActiveTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 939
    iget v0, p0, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->bluetoothScanCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 940
    return-void
.end method
