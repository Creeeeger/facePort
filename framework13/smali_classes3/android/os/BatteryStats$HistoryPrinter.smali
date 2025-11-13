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

    .line 7248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7249
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 7250
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    .line 7251
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 7252
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 7253
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 7254
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 7255
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 7256
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 7258
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    .line 7259
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    .line 7260
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    .line 7261
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    .line 7262
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    .line 7263
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    .line 7264
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    .line 7265
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    .line 7266
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    .line 7267
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    .line 7268
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    .line 7269
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    .line 7270
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    .line 7271
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    .line 7273
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 7274
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    .line 7275
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    .line 7276
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    return-void
.end method

.method private greylist-max-o printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;
    .locals 18
    .param p1, "rec"    # Landroid/os/BatteryStats$HistoryItem;
    .param p2, "baseTime"    # J
    .param p4, "checkin"    # Z
    .param p5, "verbose"    # Z

    .line 7323
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7324
    .local v2, "item":Ljava/lang/StringBuilder;
    const-string v9, " ("

    const/16 v10, 0x9

    const-string/jumbo v11, "h"

    const/16 v12, 0x2c

    if-nez p4, :cond_0

    .line 7325
    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7326
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v3, v3, p2

    const/16 v5, 0x13

    invoke-static {v3, v4, v2, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;I)V

    .line 7328
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7329
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7330
    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7332
    :cond_0
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7333
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7334
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 7335
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v3, v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7337
    :cond_1
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7339
    :goto_0
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    .line 7341
    :goto_1
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x4

    const-string v13, ":"

    if-ne v3, v4, :cond_3

    .line 7342
    if-eqz p4, :cond_2

    .line 7343
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7345
    :cond_2
    const-string v3, "START\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7346
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    goto/16 :goto_33

    .line 7347
    :cond_3
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x5

    const/4 v5, 0x7

    const-string v14, " "

    const-string v15, "\n"

    if-eq v3, v4, :cond_6b

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v3, v5, :cond_4

    goto/16 :goto_32

    .line 7366
    :cond_4
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6

    .line 7367
    if-eqz p4, :cond_5

    .line 7368
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7370
    :cond_5
    const-string v3, "SHUTDOWN\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_33

    .line 7371
    :cond_6
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x6

    if-ne v3, v4, :cond_8

    .line 7372
    if-eqz p4, :cond_7

    .line 7373
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7375
    :cond_7
    const-string v3, "*OVERFLOW*\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_33

    .line 7377
    :cond_8
    if-nez p4, :cond_13

    .line 7378
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const-string v4, "0"

    const-string v5, "00"

    const/16 v6, 0xa

    if-ge v3, v6, :cond_9

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 7379
    :cond_9
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v6, 0x64

    if-ge v3, v6, :cond_a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7380
    :cond_a
    :goto_2
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7381
    if-eqz p5, :cond_14

    .line 7382
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7383
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-gez v3, :cond_b

    goto :goto_3

    .line 7384
    :cond_b
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v6, 0x10

    if-ge v3, v6, :cond_c

    const-string v3, "0000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 7385
    :cond_c
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v6, 0x100

    if-ge v3, v6, :cond_d

    const-string v3, "000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 7386
    :cond_d
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v6, 0x1000

    if-ge v3, v6, :cond_e

    const-string v3, "00000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 7387
    :cond_e
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_f

    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 7388
    :cond_f
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x100000

    if-ge v3, v6, :cond_10

    const-string v3, "000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 7389
    :cond_10
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x1000000

    if-ge v3, v6, :cond_11

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 7390
    :cond_11
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x10000000

    if-ge v3, v5, :cond_12

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7391
    :cond_12
    :goto_3
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 7394
    :cond_13
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v3, v4, :cond_14

    .line 7395
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 7396
    const-string v3, ",Bl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7399
    :cond_14
    :goto_4
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    const-string/jumbo v5, "n"

    const-string v6, "d"

    const-string v7, "c"

    const-string v8, "?"

    const-string/jumbo v16, "unknown"

    if-eq v3, v4, :cond_1b

    .line 7400
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 7401
    if-eqz p4, :cond_15

    const-string v3, ",Bs="

    goto :goto_5

    :cond_15
    const-string v3, " status="

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7402
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    packed-switch v3, :pswitch_data_0

    .line 7419
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 7416
    :pswitch_0
    if-eqz p4, :cond_16

    const-string v3, "f"

    goto :goto_6

    :cond_16
    const-string v3, "full"

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7417
    goto :goto_b

    .line 7413
    :pswitch_1
    if-eqz p4, :cond_17

    move-object v3, v5

    goto :goto_7

    :cond_17
    const-string/jumbo v3, "not-charging"

    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7414
    goto :goto_b

    .line 7410
    :pswitch_2
    if-eqz p4, :cond_18

    move-object v3, v6

    goto :goto_8

    :cond_18
    const-string v3, "discharging"

    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7411
    goto :goto_b

    .line 7407
    :pswitch_3
    if-eqz p4, :cond_19

    move-object v3, v7

    goto :goto_9

    :cond_19
    const-string v3, "charging"

    :goto_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7408
    goto :goto_b

    .line 7404
    :pswitch_4
    if-eqz p4, :cond_1a

    move-object v3, v8

    goto :goto_a

    :cond_1a
    move-object/from16 v3, v16

    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7423
    :cond_1b
    :goto_b
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq v3, v4, :cond_26

    .line 7424
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 7425
    if-eqz p4, :cond_1c

    const-string v3, ",Bh="

    goto :goto_c

    :cond_1c
    const-string v3, " health="

    :goto_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7426
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    packed-switch v3, :pswitch_data_1

    .line 7457
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_16

    .line 7453
    :pswitch_5
    if-eqz p4, :cond_1d

    const-string/jumbo v3, "u"

    goto :goto_d

    :cond_1d
    const-string/jumbo v3, "under-voltage"

    :goto_d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7454
    goto :goto_16

    .line 7450
    :pswitch_6
    if-eqz p4, :cond_1e

    const-string/jumbo v3, "l"

    goto :goto_e

    :cond_1e
    const-string/jumbo v3, "over-limit"

    :goto_e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7451
    goto :goto_16

    .line 7446
    :pswitch_7
    if-eqz p4, :cond_1f

    goto :goto_f

    :cond_1f
    const-string v7, "cold"

    :goto_f
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7447
    goto :goto_16

    .line 7443
    :pswitch_8
    if-eqz p4, :cond_20

    const-string v3, "f"

    goto :goto_10

    :cond_20
    const-string v3, "failure"

    :goto_10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7444
    goto :goto_16

    .line 7440
    :pswitch_9
    if-eqz p4, :cond_21

    const-string/jumbo v3, "v"

    goto :goto_11

    :cond_21
    const-string/jumbo v3, "over-voltage"

    :goto_11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7441
    goto :goto_16

    .line 7437
    :pswitch_a
    if-eqz p4, :cond_22

    goto :goto_12

    :cond_22
    const-string v6, "dead"

    :goto_12
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7438
    goto :goto_16

    .line 7434
    :pswitch_b
    if-eqz p4, :cond_23

    move-object v3, v11

    goto :goto_13

    :cond_23
    const-string/jumbo v3, "overheat"

    :goto_13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7435
    goto :goto_16

    .line 7431
    :pswitch_c
    if-eqz p4, :cond_24

    const-string v3, "g"

    goto :goto_14

    :cond_24
    const-string/jumbo v3, "good"

    :goto_14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7432
    goto :goto_16

    .line 7428
    :pswitch_d
    if-eqz p4, :cond_25

    goto :goto_15

    :cond_25
    move-object/from16 v8, v16

    :goto_15
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7461
    :cond_26
    :goto_16
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq v3, v4, :cond_2c

    .line 7462
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 7463
    if-eqz p4, :cond_27

    const-string v3, ",Bp="

    goto :goto_17

    :cond_27
    const-string v3, " plug="

    :goto_17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7464
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    packed-switch v3, :pswitch_data_2

    .line 7478
    :pswitch_e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 7475
    :pswitch_f
    if-eqz p4, :cond_28

    const-string/jumbo v3, "w"

    goto :goto_18

    :cond_28
    const-string/jumbo v3, "wireless"

    :goto_18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7476
    goto :goto_1c

    .line 7472
    :pswitch_10
    if-eqz p4, :cond_29

    const-string/jumbo v3, "u"

    goto :goto_19

    :cond_29
    const-string/jumbo v3, "usb"

    :goto_19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7473
    goto :goto_1c

    .line 7469
    :pswitch_11
    if-eqz p4, :cond_2a

    const-string v3, "a"

    goto :goto_1a

    :cond_2a
    const-string v3, "ac"

    :goto_1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7470
    goto :goto_1c

    .line 7466
    :pswitch_12
    if-eqz p4, :cond_2b

    goto :goto_1b

    :cond_2b
    const-string/jumbo v5, "none"

    :goto_1b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7482
    :cond_2c
    :goto_1c
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iget-short v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-eq v3, v4, :cond_2e

    .line 7483
    iget-short v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 7484
    if-eqz p4, :cond_2d

    const-string v3, ",Bt="

    goto :goto_1d

    :cond_2d
    const-string v3, " temp="

    :goto_1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7485
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7487
    :cond_2e
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iget-char v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-eq v3, v4, :cond_30

    .line 7488
    iget-char v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 7489
    if-eqz p4, :cond_2f

    const-string v3, ",Bv="

    goto :goto_1e

    :cond_2f
    const-string v3, " volt="

    :goto_1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7490
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7493
    :cond_30
    const/16 v16, 0x0

    const/4 v8, 0x1

    if-nez p4, :cond_3d

    .line 7494
    const/4 v3, 0x0

    .line 7495
    .local v3, "mChanged":Z
    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    const/16 v5, -0x80

    if-eq v4, v5, :cond_31

    move v4, v8

    goto :goto_1f

    :cond_31
    move/from16 v4, v16

    .line 7496
    .local v4, "isApTempValid":Z
    :goto_1f
    iget-byte v6, v1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    if-eq v6, v5, :cond_32

    move v6, v8

    goto :goto_20

    :cond_32
    move/from16 v6, v16

    .line 7497
    .local v6, "isPaTempValid":Z
    :goto_20
    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    if-eq v7, v5, :cond_33

    move v7, v8

    goto :goto_21

    :cond_33
    move/from16 v7, v16

    .line 7498
    .local v7, "isSkinTempValid":Z
    :goto_21
    iget-byte v12, v1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    if-eq v12, v5, :cond_34

    move v5, v8

    goto :goto_22

    :cond_34
    move/from16 v5, v16

    .line 7499
    .local v5, "isSubBattTempValid":Z
    :goto_22
    iget v12, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    iget-short v10, v1, Landroid/os/BatteryStats$HistoryItem;->current:S

    if-eq v12, v10, :cond_35

    .line 7500
    iget-short v10, v1, Landroid/os/BatteryStats$HistoryItem;->current:S

    iput v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    .line 7501
    const/4 v3, 0x1

    .line 7503
    :cond_35
    iget v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    iget-byte v12, v1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    if-eq v10, v12, :cond_36

    .line 7504
    iget-byte v10, v1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    iput v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    .line 7505
    const/4 v3, 0x1

    .line 7507
    :cond_36
    iget v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    iget-byte v12, v1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    if-eq v10, v12, :cond_37

    .line 7508
    iget-byte v10, v1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    iput v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    .line 7509
    const/4 v3, 0x1

    .line 7511
    :cond_37
    iget v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    iget-byte v12, v1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    if-eq v10, v12, :cond_38

    .line 7512
    iget-byte v10, v1, Landroid/os/BatteryStats$HistoryItem;->skin_temp:B

    iput v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    .line 7513
    const/4 v3, 0x1

    .line 7515
    :cond_38
    iget v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    iget-byte v12, v1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    if-eq v10, v12, :cond_39

    .line 7516
    iget-byte v10, v1, Landroid/os/BatteryStats$HistoryItem;->sub_batt_temp:B

    iput v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    .line 7517
    const/4 v3, 0x1

    .line 7519
    :cond_39
    if-eqz v3, :cond_3d

    .line 7520
    const-string v10, " current="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7521
    iget v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7522
    if-eqz v4, :cond_3a

    .line 7523
    const-string v10, " ap_temp="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7524
    iget v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7526
    :cond_3a
    if-eqz v6, :cond_3b

    .line 7527
    const-string v10, " pa_temp="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7528
    iget v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7530
    :cond_3b
    if-eqz v7, :cond_3c

    .line 7531
    const-string v10, " skin_temp="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7532
    iget v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7534
    :cond_3c
    if-eqz v5, :cond_3d

    .line 7535
    const-string v10, " sub_batt_temp="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7536
    iget v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7540
    .end local v3    # "mChanged":Z
    .end local v4    # "isApTempValid":Z
    .end local v5    # "isSubBattTempValid":Z
    .end local v6    # "isPaTempValid":Z
    .end local v7    # "isSkinTempValid":Z
    :cond_3d
    const-string v3, " +"

    const-string v4, " -"

    if-nez p4, :cond_40

    .line 7541
    const/4 v5, 0x0

    .line 7542
    .local v5, "mChanged":Z
    iget v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    if-eq v6, v7, :cond_3e

    .line 7543
    iget-byte v6, v1, Landroid/os/BatteryStats$HistoryItem;->wifi_ap:B

    iput v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    .line 7544
    const/4 v5, 0x1

    .line 7546
    :cond_3e
    if-eqz v5, :cond_40

    .line 7547
    iget v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    if-ne v6, v8, :cond_3f

    .line 7548
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 7551
    :cond_3f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7553
    :goto_23
    const-string/jumbo v6, "wifi_ap"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7556
    .end local v5    # "mChanged":Z
    :cond_40
    if-nez p4, :cond_43

    .line 7557
    const/4 v5, 0x0

    .line 7558
    .restart local v5    # "mChanged":Z
    iget v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    if-eq v6, v7, :cond_41

    .line 7559
    iget-byte v6, v1, Landroid/os/BatteryStats$HistoryItem;->otgOnline:B

    iput v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    .line 7560
    const/4 v5, 0x1

    .line 7562
    :cond_41
    if-eqz v5, :cond_43

    .line 7563
    iget v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    if-ne v6, v8, :cond_42

    .line 7564
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 7567
    :cond_42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7569
    :goto_24
    const-string/jumbo v6, "otg"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7572
    .end local v5    # "mChanged":Z
    :cond_43
    if-nez p4, :cond_46

    .line 7573
    const/4 v5, 0x0

    .line 7574
    .restart local v5    # "mChanged":Z
    iget v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    if-eq v6, v7, :cond_44

    .line 7575
    iget-byte v6, v1, Landroid/os/BatteryStats$HistoryItem;->highSpeakerVolume:B

    iput v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    .line 7576
    const/4 v5, 0x1

    .line 7578
    :cond_44
    if-eqz v5, :cond_46

    .line 7579
    iget v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    if-ne v6, v8, :cond_45

    .line 7580
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 7583
    :cond_45
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7585
    :goto_25
    const-string/jumbo v6, "high_speaker_volume"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7588
    .end local v5    # "mChanged":Z
    :cond_46
    if-nez p4, :cond_49

    .line 7589
    const/4 v5, 0x0

    .line 7590
    .restart local v5    # "mChanged":Z
    iget v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    if-eq v6, v7, :cond_47

    .line 7591
    iget-byte v6, v1, Landroid/os/BatteryStats$HistoryItem;->subScreenOn:B

    iput v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    .line 7592
    const/4 v5, 0x1

    .line 7594
    :cond_47
    if-eqz v5, :cond_49

    .line 7595
    iget v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    if-ne v6, v8, :cond_48

    .line 7596
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 7599
    :cond_48
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7601
    :goto_26
    const-string/jumbo v6, "sub_screen"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7604
    .end local v5    # "mChanged":Z
    :cond_49
    if-nez p4, :cond_4c

    .line 7605
    const/4 v5, 0x0

    .line 7606
    .restart local v5    # "mChanged":Z
    iget v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    iget-byte v7, v1, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    if-eq v6, v7, :cond_4a

    .line 7607
    iget-byte v6, v1, Landroid/os/BatteryStats$HistoryItem;->subScreenDoze:B

    iput v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    .line 7608
    const/4 v5, 0x1

    .line 7610
    :cond_4a
    if-eqz v5, :cond_4c

    .line 7611
    iget v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    if-ne v6, v8, :cond_4b

    .line 7612
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 7615
    :cond_4b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7617
    :goto_27
    const-string/jumbo v3, "sub_screen_doze"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7620
    .end local v5    # "mChanged":Z
    :cond_4c
    if-nez p4, :cond_51

    .line 7621
    const/4 v3, 0x0

    .line 7622
    .restart local v3    # "mChanged":Z
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    if-eq v4, v5, :cond_4d

    .line 7623
    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecTxShareEvent:I

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    .line 7624
    const/4 v3, 0x1

    .line 7626
    :cond_4d
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    if-eq v4, v5, :cond_4e

    .line 7627
    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    .line 7628
    const/4 v3, 0x1

    .line 7630
    :cond_4e
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    if-eq v4, v5, :cond_4f

    .line 7631
    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    .line 7632
    const/4 v3, 0x1

    .line 7634
    :cond_4f
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    if-eq v4, v5, :cond_50

    .line 7635
    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    .line 7636
    const/4 v3, 0x1

    .line 7639
    :cond_50
    if-eqz v3, :cond_51

    .line 7640
    const-string v4, " txshare_event="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7641
    new-array v4, v8, [Ljava/lang/Object;

    iget v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v16

    const-string v5, "0x%x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7642
    const-string v4, " online="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7643
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7644
    const-string v4, " current_event="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7645
    new-array v4, v8, [Ljava/lang/Object;

    iget v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v16

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7646
    const-string v4, " misc_event="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7647
    new-array v4, v8, [Ljava/lang/Object;

    iget v6, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v16

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7651
    .end local v3    # "mChanged":Z
    :cond_51
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    div-int/lit16 v10, v3, 0x3e8

    .line 7652
    .local v10, "chargeMAh":I
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eq v3, v10, :cond_53

    .line 7653
    iput v10, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 7654
    if-eqz p4, :cond_52

    const-string v3, ",Bcc="

    goto :goto_28

    :cond_52
    const-string v3, " charge="

    :goto_28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7655
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7657
    :cond_53
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_55

    .line 7658
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    iput-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    .line 7659
    if-eqz p4, :cond_54

    const-string v3, ",Mrc="

    goto :goto_29

    :cond_54
    const-string v3, " modemRailChargemAh="

    :goto_29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7660
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7662
    :cond_55
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    iget-wide v5, v1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_57

    .line 7663
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    iput-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    .line 7664
    if-eqz p4, :cond_56

    const-string v3, ",Wrc="

    goto :goto_2a

    :cond_56
    const-string v3, " wifiRailChargemAh="

    :goto_2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7665
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7667
    :cond_57
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    sget-object v7, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v12, p4, 0x1

    move-object v3, v2

    move/from16 v17, v10

    move v10, v8

    .end local v10    # "chargeMAh":I
    .local v17, "chargeMAh":I
    move v8, v12

    invoke-static/range {v3 .. v8}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    .line 7669
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/4 v6, 0x0

    sget-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v8, p4, 0x1

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    .line 7671
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_59

    .line 7672
    if-eqz p4, :cond_58

    .line 7673
    const-string v3, ",wr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7674
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 7676
    :cond_58
    const-string v3, " wake_reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7677
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7678
    const-string v3, ":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7679
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7680
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7683
    :cond_59
    :goto_2b
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_61

    .line 7684
    if-eqz p4, :cond_5a

    const-string v14, ","

    :cond_5a
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7685
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_5b

    .line 7686
    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 7687
    :cond_5b
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_5c

    .line 7688
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7690
    :cond_5c
    :goto_2c
    if-eqz p4, :cond_5d

    sget-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    goto :goto_2d

    .line 7691
    :cond_5d
    sget-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    :goto_2d
    nop

    .line 7692
    .local v3, "eventNames":[Ljava/lang/String;
    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v5, -0xc001

    and-int/2addr v4, v5

    .line 7694
    .local v4, "idx":I
    if-ltz v4, :cond_5e

    array-length v5, v3

    if-ge v4, v5, :cond_5e

    .line 7695
    aget-object v5, v3, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 7697
    :cond_5e
    if-eqz p4, :cond_5f

    const-string v5, "Ev"

    goto :goto_2e

    :cond_5f
    const-string v5, "event"

    :goto_2e
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7698
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7700
    :goto_2f
    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7701
    if-eqz p4, :cond_60

    .line 7702
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v5, v5, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 7704
    :cond_60
    sget-object v5, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    aget-object v5, v5, v4

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v6, v6, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 7705
    invoke-interface {v5, v6}, Landroid/os/BatteryStats$IntToString;->applyAsString(I)Ljava/lang/String;

    move-result-object v5

    .line 7704
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7706
    const-string v5, ":\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7707
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7708
    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7711
    .end local v3    # "eventNames":[Ljava/lang/String;
    .end local v4    # "idx":I
    :cond_61
    :goto_30
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7712
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v3, :cond_6a

    .line 7713
    if-nez p4, :cond_66

    .line 7714
    const-string v3, "                 Details: cpu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7715
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7716
    const-string/jumbo v3, "u+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7717
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7718
    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7719
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v3, :cond_64

    .line 7720
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7721
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    .line 7723
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v3, :cond_62

    .line 7724
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7725
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    .line 7728
    :cond_62
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v3, :cond_63

    .line 7729
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7730
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    .line 7733
    :cond_63
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7735
    :cond_64
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7736
    const-string v3, "                          /proc/stat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7737
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7738
    const-string v3, " usr, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7739
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7740
    const-string v3, " sys, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7741
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7742
    const-string v3, " io, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7743
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7744
    const-string v3, " irq, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7745
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7746
    const-string v3, " sirq, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7747
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7748
    const-string v3, " idle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7749
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

    .line 7752
    .local v3, "totalRun":I
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    add-int/2addr v4, v3

    .line 7753
    .local v4, "total":I
    if-lez v4, :cond_65

    .line 7754
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7755
    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    .line 7756
    .local v5, "perc":F
    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v16

    const-string v7, "%.1f%%"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7757
    const-string v6, " of "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7758
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7759
    .local v6, "sb":Ljava/lang/StringBuilder;
    mul-int/lit8 v7, v4, 0xa

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 7760
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 7761
    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7764
    .end local v5    # "perc":F
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_65
    const-string v5, ", SubsystemPowerState "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7765
    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7766
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7767
    .end local v3    # "totalRun":I
    .end local v4    # "total":I
    goto/16 :goto_31

    .line 7768
    :cond_66
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7769
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",0,Dcpu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7770
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7771
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7772
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7773
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v3, :cond_68

    .line 7774
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    .line 7776
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v3, :cond_67

    .line 7777
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    .line 7780
    :cond_67
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v3, :cond_68

    .line 7781
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    .line 7785
    :cond_68
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7786
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7787
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",0,Dpst="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7788
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7789
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7790
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7791
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7792
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7793
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7794
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7795
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7796
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7797
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7798
    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7799
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7801
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-eqz v3, :cond_69

    .line 7802
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7804
    :cond_69
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7807
    :cond_6a
    :goto_31
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 7808
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    .line 7810
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_6f

    .line 7811
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const v4, -0x80001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_33

    .line 7349
    .end local v17    # "chargeMAh":I
    :cond_6b
    :goto_32
    if-eqz p4, :cond_6c

    .line 7350
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7352
    :cond_6c
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v3, v5, :cond_6d

    .line 7353
    const-string v3, "RESET:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7354
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    .line 7356
    :cond_6d
    const-string v3, "TIME:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7357
    if-eqz p4, :cond_6e

    .line 7358
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7359
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 7361
    :cond_6e
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7362
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-string/jumbo v5, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v5, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    .line 7363
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7362
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7364
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7815
    :cond_6f
    :goto_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

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
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "uid"    # I
    .param p3, "utime"    # I
    .param p4, "stime"    # I

    .line 7829
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7830
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7831
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7832
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7833
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7834
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7835
    return-void
.end method

.method private greylist-max-o printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "uid"    # I
    .param p3, "utime"    # I
    .param p4, "stime"    # I

    .line 7819
    invoke-static {p1, p2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 7820
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7821
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7822
    const-string/jumbo v0, "u+"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7823
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7824
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7825
    return-void
.end method


# virtual methods
.method public greylist-max-o printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "rec"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "baseTime"    # J
    .param p5, "verbose"    # Z

    .line 7315
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;

    move-result-object v0

    .line 7316
    .local v0, "item":Ljava/lang/String;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 7317
    .local v4, "line":Ljava/lang/String;
    const-wide v5, 0x20900000006L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7316
    .end local v4    # "line":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7319
    :cond_0
    return-void
.end method

.method public greylist-max-o printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "rec"    # Landroid/os/BatteryStats$HistoryItem;
    .param p3, "baseTime"    # J
    .param p5, "checkin"    # Z
    .param p6, "verbose"    # Z

    .line 7309
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7310
    return-void
.end method

.method greylist-max-o reset()V
    .locals 2

    .line 7279
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 7280
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 7281
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 7282
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 7283
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 7284
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 7285
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 7287
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    .line 7288
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    .line 7289
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    .line 7290
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSub_batt_temp:I

    .line 7291
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSkin_temp:I

    .line 7292
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifi_ap:I

    .line 7293
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldOtgOnline:I

    .line 7294
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHighSpeakerVolume:I

    .line 7295
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenOn:I

    .line 7296
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSubScreenDoze:I

    .line 7297
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecTxShareEvent:I

    .line 7298
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    .line 7299
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    .line 7300
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    .line 7302
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    .line 7303
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldModemRailChargeMah:D

    .line 7304
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldWifiRailChargeMah:D

    .line 7305
    return-void
.end method
