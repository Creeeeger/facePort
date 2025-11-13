.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 16

    const/4 v0, 0x2

    const-string v1, "A|UninstalledApps"

    const/4 v2, 0x1

    const-string v3, "S|Others"

    const/4 v4, 0x0

    const-string v5, "A|SystemApps"

    const/4 v6, -0x1

    move-object/from16 v7, p1

    check-cast v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-object/from16 v8, p2

    check-cast v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    iget-object v9, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    const-wide/high16 v10, -0x4000000000000000L    # -2.0

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    if-nez v9, :cond_0

    iget-wide v14, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mPercentage:D

    iget v8, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAdjustPercentageOffset:I

    :goto_0
    int-to-double v8, v8

    add-double/2addr v14, v8

    goto :goto_3

    :cond_0
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :goto_1
    move v9, v6

    goto :goto_2

    :sswitch_0
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    move v9, v0

    goto :goto_2

    :sswitch_1
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    move v9, v2

    goto :goto_2

    :sswitch_2
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    move v9, v4

    :goto_2
    packed-switch v9, :pswitch_data_0

    iget-wide v14, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mPercentage:D

    iget v8, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAdjustPercentageOffset:I

    goto :goto_0

    :pswitch_0
    move-wide v14, v12

    goto :goto_3

    :pswitch_1
    move-wide v14, v10

    :goto_3
    iget-object v8, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mKey:Ljava/lang/String;

    if-nez v8, :cond_4

    iget-wide v0, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mPercentage:D

    iget v2, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAdjustPercentageOffset:I

    :goto_4
    int-to-double v2, v2

    add-double v10, v0, v2

    goto :goto_7

    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    :goto_5
    move v0, v6

    goto :goto_6

    :sswitch_3
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_5

    :sswitch_4
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    move v0, v2

    goto :goto_6

    :sswitch_5
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    move v0, v4

    :cond_7
    :goto_6
    packed-switch v0, :pswitch_data_1

    iget-wide v0, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mPercentage:D

    iget v2, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mAdjustPercentageOffset:I

    goto :goto_4

    :pswitch_2
    move-wide v10, v12

    :goto_7
    :pswitch_3
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x50039004 -> :sswitch_2
        -0x251770b4 -> :sswitch_1
        0x5b0de938 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x50039004 -> :sswitch_5
        -0x251770b4 -> :sswitch_4
        0x5b0de938 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
