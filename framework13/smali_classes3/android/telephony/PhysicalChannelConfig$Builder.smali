.class public final Landroid/telephony/PhysicalChannelConfig$Builder;
.super Ljava/lang/Object;
.source "PhysicalChannelConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhysicalChannelConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBand:I

.field private blacklist mCellBandwidthDownlinkKhz:I

.field private blacklist mCellBandwidthUplinkKhz:I

.field private blacklist mCellConnectionStatus:I

.field private blacklist mContextIds:[I

.field private blacklist mDownlinkChannelNumber:I

.field private blacklist mFrequencyRange:I

.field private blacklist mNetworkType:I

.field private blacklist mPhysicalCellId:I

.field private blacklist mUplinkChannelNumber:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBand(Landroid/telephony/PhysicalChannelConfig$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mBand:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCellBandwidthDownlinkKhz(Landroid/telephony/PhysicalChannelConfig$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mCellBandwidthDownlinkKhz:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCellBandwidthUplinkKhz(Landroid/telephony/PhysicalChannelConfig$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mCellBandwidthUplinkKhz:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCellConnectionStatus(Landroid/telephony/PhysicalChannelConfig$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mCellConnectionStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContextIds(Landroid/telephony/PhysicalChannelConfig$Builder;)[I
    .locals 0

    iget-object p0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mContextIds:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDownlinkChannelNumber(Landroid/telephony/PhysicalChannelConfig$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mDownlinkChannelNumber:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrequencyRange(Landroid/telephony/PhysicalChannelConfig$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mFrequencyRange:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkType(Landroid/telephony/PhysicalChannelConfig$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mNetworkType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhysicalCellId(Landroid/telephony/PhysicalChannelConfig$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mPhysicalCellId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUplinkChannelNumber(Landroid/telephony/PhysicalChannelConfig$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mUplinkChannelNumber:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mNetworkType:I

    .line 543
    iput v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mFrequencyRange:I

    .line 544
    const v1, 0x7fffffff

    iput v1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mDownlinkChannelNumber:I

    .line 545
    iput v1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mUplinkChannelNumber:I

    .line 546
    iput v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mCellBandwidthDownlinkKhz:I

    .line 547
    iput v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mCellBandwidthUplinkKhz:I

    .line 548
    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mCellConnectionStatus:I

    .line 549
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mContextIds:[I

    .line 550
    iput v1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mPhysicalCellId:I

    .line 551
    iput v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mBand:I

    .line 552
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/PhysicalChannelConfig;)V
    .locals 2
    .param p1, "config"    # Landroid/telephony/PhysicalChannelConfig;

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getNetworkType()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mNetworkType:I

    .line 560
    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getFrequencyRange()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mFrequencyRange:I

    .line 561
    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getDownlinkChannelNumber()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mDownlinkChannelNumber:I

    .line 562
    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getUplinkChannelNumber()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mUplinkChannelNumber:I

    .line 563
    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getCellBandwidthDownlinkKhz()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mCellBandwidthDownlinkKhz:I

    .line 564
    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getCellBandwidthUplinkKhz()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mCellBandwidthUplinkKhz:I

    .line 565
    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getConnectionStatus()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mCellConnectionStatus:I

    .line 566
    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getContextIds()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getContextIds()[I

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mContextIds:[I

    .line 567
    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getPhysicalCellId()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mPhysicalCellId:I

    .line 568
    invoke-virtual {p1}, Landroid/telephony/PhysicalChannelConfig;->getBand()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mBand:I

    .line 569
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/PhysicalChannelConfig;
    .locals 2

    .line 572
    new-instance v0, Landroid/telephony/PhysicalChannelConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/PhysicalChannelConfig;-><init>(Landroid/telephony/PhysicalChannelConfig$Builder;Landroid/telephony/PhysicalChannelConfig-IA;)V

    return-object v0
.end method

.method public blacklist setBand(I)Landroid/telephony/PhysicalChannelConfig$Builder;
    .locals 3
    .param p1, "band"    # I

    .line 642
    if-lez p1, :cond_0

    .line 645
    iput p1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mBand:I

    .line 646
    return-object p0

    .line 643
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Band "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCellBandwidthDownlinkKhz(I)Landroid/telephony/PhysicalChannelConfig$Builder;
    .locals 3
    .param p1, "cellBandwidthDownlinkKhz"    # I

    .line 604
    if-ltz p1, :cond_0

    .line 608
    iput p1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mCellBandwidthDownlinkKhz:I

    .line 609
    return-object p0

    .line 605
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cell downlink bandwidth(kHz) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCellBandwidthUplinkKhz(I)Landroid/telephony/PhysicalChannelConfig$Builder;
    .locals 3
    .param p1, "cellBandwidthUplinkKhz"    # I

    .line 613
    if-ltz p1, :cond_0

    .line 617
    iput p1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mCellBandwidthUplinkKhz:I

    .line 618
    return-object p0

    .line 614
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cell uplink bandwidth(kHz) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCellConnectionStatus(I)Landroid/telephony/PhysicalChannelConfig$Builder;
    .locals 0
    .param p1, "connectionStatus"    # I

    .line 622
    iput p1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mCellConnectionStatus:I

    .line 623
    return-object p0
.end method

.method public blacklist setContextIds([I)Landroid/telephony/PhysicalChannelConfig$Builder;
    .locals 0
    .param p1, "contextIds"    # [I

    .line 627
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 628
    :cond_0
    iput-object p1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mContextIds:[I

    .line 629
    return-object p0
.end method

.method public blacklist setDownlinkChannelNumber(I)Landroid/telephony/PhysicalChannelConfig$Builder;
    .locals 0
    .param p1, "downlinkChannelNumber"    # I

    .line 594
    iput p1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mDownlinkChannelNumber:I

    .line 595
    return-object p0
.end method

.method public blacklist setFrequencyRange(I)Landroid/telephony/PhysicalChannelConfig$Builder;
    .locals 3
    .param p1, "frequencyRange"    # I

    .line 584
    invoke-static {p1}, Landroid/telephony/ServiceState;->isFrequencyRangeValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 586
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frequency range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_1
    :goto_0
    iput p1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mFrequencyRange:I

    .line 590
    return-object p0
.end method

.method public blacklist setNetworkType(I)Landroid/telephony/PhysicalChannelConfig$Builder;
    .locals 3
    .param p1, "networkType"    # I

    .line 576
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iput p1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mNetworkType:I

    .line 580
    return-object p0

    .line 577
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setPhysicalCellId(I)Landroid/telephony/PhysicalChannelConfig$Builder;
    .locals 3
    .param p1, "physicalCellId"    # I

    .line 633
    const/16 v0, 0x3ef

    if-gt p1, v0, :cond_0

    .line 637
    iput p1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mPhysicalCellId:I

    .line 638
    return-object p0

    .line 634
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Physical cell ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is over limit."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setUplinkChannelNumber(I)Landroid/telephony/PhysicalChannelConfig$Builder;
    .locals 0
    .param p1, "uplinkChannelNumber"    # I

    .line 599
    iput p1, p0, Landroid/telephony/PhysicalChannelConfig$Builder;->mUplinkChannelNumber:I

    .line 600
    return-object p0
.end method
