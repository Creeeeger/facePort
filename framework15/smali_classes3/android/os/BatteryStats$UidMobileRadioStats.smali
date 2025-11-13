.class Landroid/os/BatteryStats$UidMobileRadioStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UidMobileRadioStats"
.end annotation


# instance fields
.field public final blacklist millisecondsPerPacket:D

.field public final blacklist radioActiveCount:I

.field public final blacklist radioActiveMs:J

.field public final blacklist rxPackets:J

.field public final blacklist txPackets:J

.field public final blacklist uid:I


# direct methods
.method private constructor blacklist <init>(IJJJID)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->uid:I

    iput-wide p4, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->txPackets:J

    iput-wide p2, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->rxPackets:J

    iput-wide p6, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveMs:J

    iput p8, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveCount:I

    iput-wide p9, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    return-void
.end method

.method synthetic constructor blacklist <init>(IJJJIDLandroid/os/BatteryStats$UidMobileRadioStats-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroid/os/BatteryStats$UidMobileRadioStats;-><init>(IJJJID)V

    return-void
.end method
