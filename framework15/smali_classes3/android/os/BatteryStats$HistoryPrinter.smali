.class public Landroid/os/BatteryStats$HistoryPrinter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryPrinter"
.end annotation


# instance fields
.field greylist-max-o lastTime:J

.field blacklist oldAp_temp:I

.field greylist-max-o oldChargeMAh:I

.field blacklist oldCurrent:I

.field greylist-max-o oldHealth:I

.field blacklist oldHighSpeakerVolume:I

.field greylist-max-o oldLevel:I

.field blacklist oldModemRailChargeMah:D

.field blacklist oldOtgOnline:I

.field blacklist oldPa_temp:I

.field greylist-max-o oldPlug:I

.field blacklist oldProtectBatteryMode:I

.field blacklist oldSecCurrentEvent:I

.field blacklist oldSecEvent:I

.field blacklist oldSecOnline:I

.field blacklist oldSecTxShareEvent:I

.field blacklist oldSkin_temp:I

.field greylist-max-o oldState:I

.field greylist-max-o oldState2:I

.field greylist-max-o oldStatus:I

.field blacklist oldSubScreenDoze:I

.field blacklist oldSubScreenOn:I

.field blacklist oldSub_batt_temp:I

.field greylist-max-o oldTemp:I

.field greylist-max-o oldVolt:I

.field blacklist oldWifiRailChargeMah:D

.field blacklist oldWifi_ap:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldProtectBatteryMode:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    return-void
.end method

.method private greylist-max-o printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ("

    const/16 v10, 0x9

    const-string v11, "h"

    const/16 v12, 0x2c

    if-nez p4, :cond_0

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v3, v3, p2

    const/16 v5, 0x13

    invoke-static {v3, v4, v2, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;I)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v3, v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    :goto_1
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x4

    const-string v13, ":"

    if-ne v3, v4, :cond_3

    if-eqz p4, :cond_2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v3, "START\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    goto/16 :goto_33

    :cond_3
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x5

    const/4 v5, 0x7

    const-string v14, " "

    const-string v15, "\n"

    if-eq v3, v4, :cond_70

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v3, v5, :cond_4

    goto/16 :goto_32

    :cond_4
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6

    if-eqz p4, :cond_5

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v3, "SHUTDOWN\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_33

    :cond_6
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x6

    if-ne v3, v4, :cond_8

    if-eqz p4, :cond_7

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v3, "*OVERFLOW*\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_33

    :cond_8
    if-nez p4, :cond_13

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const-string v4, "0"

    const-string v5, "00"

    const/16 v6, 0xa

    if-ge v3, v6, :cond_9

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v6, 0x64

    if-ge v3, v6, :cond_a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_2
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-gez v3, :cond_b

    goto :goto_3

    :cond_b
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v6, 0x10

    if-ge v3, v6, :cond_c

    const-string v3, "0000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v6, 0x100

    if-ge v3, v6, :cond_d

    const-string v3, "000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_d
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v6, 0x1000

    if-ge v3, v6, :cond_e

    const-string v3, "00000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_e
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_f

    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_f
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x100000

    if-ge v3, v6, :cond_10

    const-string v3, "000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_10
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x1000000

    if-ge v3, v6, :cond_11

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_11
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x10000000

    if-ge v3, v5, :cond_12

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    :goto_3
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_13
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v3, v4, :cond_14

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    const-string v3, ",Bl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_14
    :goto_4
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    const-string v5, "c"

    const-string v6, "?"

    const-string/jumbo v7, "unknown"

    if-eq v3, v4, :cond_1b

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    if-eqz p4, :cond_15

    const-string v3, ",Bs="

    goto :goto_5

    :cond_15
    const-string v3, " status="

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    packed-switch v3, :pswitch_data_0

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_0
    if-eqz p4, :cond_16

    const-string v3, "f"

    goto :goto_6

    :cond_16
    const-string v3, "full"

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_1
    if-eqz p4, :cond_17

    const-string/jumbo v3, "n"

    goto :goto_7

    :cond_17
    const-string/jumbo v3, "not-charging"

    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_2
    if-eqz p4, :cond_18

    const-string v3, "d"

    goto :goto_8

    :cond_18
    const-string v3, "discharging"

    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_3
    if-eqz p4, :cond_19

    move-object v3, v5

    goto :goto_9

    :cond_19
    const-string v3, "charging"

    :goto_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_4
    if-eqz p4, :cond_1a

    move-object v3, v6

    goto :goto_a

    :cond_1a
    move-object v3, v7

    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :cond_1b
    :goto_b
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq v3, v4, :cond_26

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    if-eqz p4, :cond_1c

    const-string v3, ",Bh="

    goto :goto_c

    :cond_1c
    const-string v3, " health="

    :goto_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    packed-switch v3, :pswitch_data_1

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_16

    :pswitch_5
    if-eqz p4, :cond_1d

    const-string/jumbo v3, "u"

    goto :goto_d

    :cond_1d
    const-string/jumbo v3, "under-voltage"

    :goto_d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_6
    if-eqz p4, :cond_1e

    const-string/jumbo v3, "l"

    goto :goto_e

    :cond_1e
    const-string/jumbo v3, "over-limit"

    :goto_e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_7
    if-eqz p4, :cond_1f

    goto :goto_f

    :cond_1f
    const-string v5, "cold"

    :goto_f
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_8
    if-eqz p4, :cond_20

    const-string v3, "f"

    goto :goto_10

    :cond_20
    const-string v3, "failure"

    :goto_10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_9
    if-eqz p4, :cond_21

    const-string/jumbo v3, "v"

    goto :goto_11

    :cond_21
    const-string/jumbo v3, "over-voltage"

    :goto_11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_a
    if-eqz p4, :cond_22

    const-string v3, "d"

    goto :goto_12

    :cond_22
    const-string v3, "dead"

    :goto_12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_b
    if-eqz p4, :cond_23

    move-object v3, v11

    goto :goto_13

    :cond_23
    const-string/jumbo v3, "overheat"

    :goto_13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_c
    if-eqz p4, :cond_24

    const-string v3, "g"

    goto :goto_14

    :cond_24
    const-string v3, "good"

    :goto_14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_d
    if-eqz p4, :cond_25

    goto :goto_15

    :cond_25
    move-object v6, v7

    :goto_15
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :cond_26
    :goto_16
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq v3, v4, :cond_2c

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    if-eqz p4, :cond_27

    const-string v3, ",Bp="

    goto :goto_17

    :cond_27
    const-string v3, " plug="

    :goto_17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    packed-switch v3, :pswitch_data_2

    :pswitch_e
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1c

    :pswitch_f
    if-eqz p4, :cond_28

    const-string/jumbo v3, "w"

    goto :goto_18

    :cond_28
    const-string/jumbo v3, "wireless"

    :goto_18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :pswitch_10
    if-eqz p4, :cond_29

    const-string/jumbo v3, "u"

    goto :goto_19

    :cond_29
    const-string/jumbo v3, "usb"

    :goto_19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :pswitch_11
    if-eqz p4, :cond_2a

    const-string v3, "a"

    goto :goto_1a

    :cond_2a
    const-string v3, "ac"

    :goto_1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :pswitch_12
    if-eqz p4, :cond_2b

    const-string/jumbo v3, "n"

    goto :goto_1b

    :cond_2b
    const-string/jumbo v3, "none"

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :cond_2c
    :goto_1c
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iget-short v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-eq v3, v4, :cond_2e

    iget-short v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    if-eqz p4, :cond_2d

    const-string v3, ",Bt="

    goto :goto_1d

    :cond_2d
    const-string v3, " temp="

    :goto_1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2e
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iget-short v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    if-eq v3, v4, :cond_30

    iget-short v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    if-eqz p4, :cond_2f

    const-string v3, ",Bv="

    goto :goto_1e

    :cond_2f
    const-string v3, " volt="

    :goto_1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_30
    const/4 v3, 0x1

    if-nez p4, :cond_3d

    const/4 v4, 0x0

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    const/16 v7, -0x80

    if-eq v5, v7, :cond_31

    move v5, v3

    goto :goto_1f

    :cond_31
    const/4 v5, 0x0

    :goto_1f
    iget-byte v8, v1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    if-eq v8, v7, :cond_32

    move v8, v3

    goto :goto_20

    :cond_32
    const/4 v8, 0x0

    :goto_20
    iget-byte v6, v1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    if-eq v6, v7, :cond_33

    move v6, v3

    goto :goto_21

    :cond_33
    const/4 v6, 0x0

    :goto_21
    iget-byte v12, v1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    if-eq v12, v7, :cond_34

    move/from16 v16, v3

    goto :goto_22

    :cond_34
    const/16 v16, 0x0

    :goto_22
    move/from16 v7, v16

    iget v12, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    iget-short v10, v1, Landroid/os/BatteryStats$HistoryItem;->current:S

    if-eq v12, v10, :cond_35

    iget-short v10, v1, Landroid/os/BatteryStats$HistoryItem;->current:S

    iput v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    const/4 v4, 0x1

    :cond_35
    iget v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    iget-byte v12, v1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    if-eq v10, v12, :cond_36

    iget-byte v10, v1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    iput v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    const/4 v4, 0x1

    :cond_36
    iget v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    iget-byte v12, v1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    if-eq v10, v12, :cond_37

    iget-byte v10, v1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    iput v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    const/4 v4, 0x1

    :cond_37
    iget v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    iget-byte v12, v1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    if-eq v10, v12, :cond_38

    iget-byte v10, v1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    iput v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    const/4 v4, 0x1

    :cond_38
    iget v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    iget-byte v12, v1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    if-eq v10, v12, :cond_39

    iget-byte v10, v1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    iput v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    const/4 v4, 0x1

    :cond_39
    if-eqz v4, :cond_3d

    const-string v10, " current="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_3a

    const-string v10, " ap_temp="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3a
    if-eqz v8, :cond_3b

    const-string v10, " pa_temp="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3b
    if-eqz v6, :cond_3c

    const-string v10, " skin_temp="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3c
    if-eqz v7, :cond_3d

    const-string v10, " sub_batt_temp="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3d
    const-string v4, " +"

    const-string v5, " -"

    if-nez p4, :cond_40

    const/4 v6, 0x0

    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    iget-byte v8, v1, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    if-eq v7, v8, :cond_3e

    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    iput v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    const/4 v6, 0x1

    :cond_3e
    if-eqz v6, :cond_40

    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    if-ne v7, v3, :cond_3f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_3f
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_23
    const-string/jumbo v7, "wifi_ap"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    if-nez p4, :cond_43

    const/4 v6, 0x0

    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    iget-byte v8, v1, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    if-eq v7, v8, :cond_41

    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    iput v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    const/4 v6, 0x1

    :cond_41
    if-eqz v6, :cond_43

    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    if-ne v7, v3, :cond_42

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_42
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_24
    const-string/jumbo v7, "otg"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    if-nez p4, :cond_46

    const/4 v6, 0x0

    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    iget-byte v8, v1, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    if-eq v7, v8, :cond_44

    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    iput v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    const/4 v6, 0x1

    :cond_44
    if-eqz v6, :cond_46

    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    if-ne v7, v3, :cond_45

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_45
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_25
    const-string v7, "high_speaker_volume"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    if-nez p4, :cond_49

    const/4 v6, 0x0

    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    iget-byte v8, v1, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    if-eq v7, v8, :cond_47

    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    iput v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    const/4 v6, 0x1

    :cond_47
    if-eqz v6, :cond_49

    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    if-ne v7, v3, :cond_48

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_48
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_26
    const-string/jumbo v7, "sub_screen"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_49
    if-nez p4, :cond_4c

    const/4 v6, 0x0

    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    iget-byte v8, v1, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    if-eq v7, v8, :cond_4a

    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    iput v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    const/4 v6, 0x1

    :cond_4a
    if-eqz v6, :cond_4c

    iget v7, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    if-ne v7, v3, :cond_4b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_4b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    const-string/jumbo v3, "sub_screen_doze"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    if-nez p4, :cond_51

    const/4 v3, 0x0

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    if-eq v4, v5, :cond_4d

    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    const/4 v3, 0x1

    :cond_4d
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    if-eq v4, v5, :cond_4e

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    const/4 v3, 0x1

    :cond_4e
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    if-eq v4, v5, :cond_4f

    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    const/4 v3, 0x1

    :cond_4f
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    if-eq v4, v5, :cond_50

    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    const/4 v3, 0x1

    :cond_50
    if-eqz v3, :cond_51

    const-string v4, " txshare_event="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "0x%x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " online="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " current_event="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " misc_event="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    if-nez p4, :cond_52

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldProtectBatteryMode:I

    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->protectBatteryMode:I

    if-eq v3, v4, :cond_52

    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->protectBatteryMode:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldProtectBatteryMode:I

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldProtectBatteryMode:I

    if-ltz v3, :cond_52

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldProtectBatteryMode:I

    invoke-static {}, Landroid/os/BatteryStats;->-$$Nest$sfgetPROTECT_BATTERY_MODE_TYPES()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_52

    const-string v3, " pbm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/BatteryStats;->-$$Nest$sfgetPROTECT_BATTERY_MODE_TYPES()[Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldProtectBatteryMode:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_52
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    div-int/lit16 v10, v3, 0x3e8

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eq v3, v10, :cond_54

    iput v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eqz p4, :cond_53

    const-string v3, ",Bcc="

    goto :goto_28

    :cond_53
    const-string v3, " charge="

    :goto_28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_54
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_56

    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    iput-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    if-eqz p4, :cond_55

    const-string v3, ",Mrc="

    goto :goto_29

    :cond_55
    const-string v3, " modemRailChargemAh="

    :goto_29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_56
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_58

    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    iput-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    if-eqz p4, :cond_57

    const-string v3, ",Wrc="

    goto :goto_2a

    :cond_57
    const-string v3, " wifiRailChargemAh="

    :goto_2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_58
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    sget-object v7, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v8, p4, 0x1

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    sget-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v8, p4, 0x1

    const/4 v6, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    const-string v4, ":\""

    const-string v5, "\""

    if-eqz v3, :cond_5b

    if-eqz p4, :cond_5a

    const-string v3, ",wr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_59

    invoke-static {}, Landroid/os/BatteryStats;->-$$Nest$sfgetsUidToString()Landroid/os/BatteryStats$IntToString;

    move-result-object v3

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v6, v6, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-interface {v3, v6}, Landroid/os/BatteryStats$IntToString;->applyAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const-string v6, "\"\""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    :cond_59
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2b

    :cond_5a
    const-string v3, " wake_reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5b
    :goto_2b
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_64

    if-eqz p4, :cond_5c

    const-string v14, ","

    :cond_5c
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v6, 0x8000

    and-int/2addr v3, v6

    if-eqz v3, :cond_5d

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_5d
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_5e

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    :goto_2c
    if-eqz p4, :cond_5f

    sget-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    goto :goto_2d

    :cond_5f
    sget-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    :goto_2d
    nop

    iget v6, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v7, -0xc001

    and-int/2addr v6, v7

    if-ltz v6, :cond_60

    array-length v7, v3

    if-ge v6, v7, :cond_60

    aget-object v7, v3, v6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    :cond_60
    if-eqz p4, :cond_61

    const-string v7, "Ev"

    goto :goto_2e

    :cond_61
    const-string v7, "event"

    :goto_2e
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2f
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_63

    iget-object v7, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v7, v7, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_62

    sget-object v7, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    aget-object v7, v7, v6

    iget-object v8, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v8, v8, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-interface {v7, v8}, Landroid/os/BatteryStats$IntToString;->applyAsString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const-string v7, "\"\""

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    :cond_62
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v4, v4, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_30

    :cond_63
    sget-object v7, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    aget-object v7, v7, v6

    iget-object v8, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v8, v8, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-interface {v7, v8}, Landroid/os/BatteryStats$IntToString;->applyAsString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v4, v4, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_64
    :goto_30
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-eqz v3, :cond_65

    if-eqz p5, :cond_65

    if-nez p4, :cond_65

    const-string v3, "\n                 Stats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    const-string v4, "\n                    "

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerStats;->formatForBatteryHistory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_65
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    if-eqz v3, :cond_66

    if-eqz p5, :cond_66

    if-nez p4, :cond_66

    const-string v3, " procstate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    invoke-virtual {v3}, Landroid/os/BatteryStats$ProcessStateChange;->formatForBatteryHistory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_66
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v3, :cond_6f

    if-nez p4, :cond_6b

    const-string v3, "                 Details: cpu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "u+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v3, :cond_69

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v3, :cond_67

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    :cond_67
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v3, :cond_68

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    :cond_68
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_69
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "                          /proc/stat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " usr, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sys, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " io, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " irq, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sirq, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " idle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    add-int/2addr v3, v4

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    add-int/2addr v3, v4

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    add-int/2addr v3, v4

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    add-int/2addr v3, v4

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    add-int/2addr v4, v3

    if-lez v4, :cond_6a

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%.1f%%"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " of "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    mul-int/lit8 v7, v4, 0xa

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6a
    const-string v5, ", SubsystemPowerState "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_31

    :cond_6b
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",0,Dcpu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v3, :cond_6d

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v3, :cond_6c

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    :cond_6c
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v3, :cond_6d

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    :cond_6d
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",0,Dpst="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-eqz v3, :cond_6e

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6e
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6f
    :goto_31
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_74

    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v4, -0x80001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_33

    :cond_70
    :goto_32
    if-eqz p4, :cond_71

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_71
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v3, v5, :cond_72

    const-string v3, "RESET:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    :cond_72
    const-string v3, "TIME:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_73

    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_73
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss-SSS"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v4, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_74
    :goto_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private greylist-max-o printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V
    .locals 1

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private greylist-max-o printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V
    .locals 1

    invoke-static {p1, p2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "u+"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public greylist-max-o printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V
    .locals 7

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-wide v5, 0x20900000006L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public greylist-max-o printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method greylist-max-o reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldProtectBatteryMode:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    return-void
.end method
