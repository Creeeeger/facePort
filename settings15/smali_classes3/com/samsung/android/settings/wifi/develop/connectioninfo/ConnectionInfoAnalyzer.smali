.class public final Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public channelWidth:I

.field public mGeneration:I

.field public mModulation:Ljava/lang/String;

.field public mbgn:Ljava/lang/String;


# virtual methods
.method public final getNetworkInfofromLinkSpeed(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "N/A"

    const-string v4, "1024-QAM"

    const-string v5, "BPSK"

    const-string v6, "256-QAM"

    const-string v7, "16-QAM"

    const-string v8, "QPSK"

    const-string v9, "64-QAM"

    const-string v10, "802.11ax"

    const/4 v11, 0x6

    if-ne v2, v11, :cond_0

    iget v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v12, :cond_0

    sparse-switch v1, :sswitch_data_0

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_0
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_1
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_2
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_3
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_4
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_5
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_6
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_7
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_8
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_9
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_a
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_b
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_c
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_d
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_e
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_f
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_10
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_11
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_12
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_13
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_14
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_15
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_16
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_17
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_18
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_19
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_0
    const/4 v12, 0x1

    if-ne v2, v11, :cond_1

    iget v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v13, v12, :cond_1

    sparse-switch v1, :sswitch_data_1

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_1a
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_1b
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_1c
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_1d
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_1e
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_1f
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_20
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_21
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_22
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_23
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_24
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_25
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_26
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_27
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_28
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_29
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_2a
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_2b
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_2c
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_2d
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_2e
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_2f
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_30
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_31
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_32
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_1
    const/4 v13, 0x2

    if-ne v2, v11, :cond_2

    iget v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v14, v13, :cond_2

    sparse-switch v1, :sswitch_data_2

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_33
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_34
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_35
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_36
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_37
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_38
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_39
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_3a
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_3b
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_3c
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_3d
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_3e
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_3f
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_40
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_41
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_42
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_43
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_44
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_45
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_46
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_47
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_48
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_49
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_4a
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_4b
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_2
    const/4 v14, 0x3

    if-ne v2, v11, :cond_3

    iget v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v15, v14, :cond_3

    sparse-switch v1, :sswitch_data_3

    goto/16 :goto_4

    :sswitch_4c
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_4d
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_4e
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_4f
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_50
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_51
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_52
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_53
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_54
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_55
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_56
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_57
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_3
    const/4 v4, 0x5

    const-string v10, "802.11ac"

    if-ne v2, v4, :cond_4

    iget v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v15, v14, :cond_4

    sparse-switch v1, :sswitch_data_4

    goto/16 :goto_4

    :sswitch_58
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_59
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_5a
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_5b
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_5c
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_5d
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_5e
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_5f
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_60
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_61
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_4
    const-string v14, "802.11b"

    if-eq v1, v12, :cond_50

    if-eq v1, v13, :cond_4f

    const-string v15, "CCK"

    if-eq v1, v4, :cond_4e

    const-string v13, "802.11g"

    const/4 v4, 0x4

    const-string v12, "802.11n"

    if-eq v1, v11, :cond_4c

    const/4 v11, 0x7

    if-eq v1, v11, :cond_4b

    const/16 v11, 0x12

    if-eq v1, v11, :cond_4a

    const/16 v11, 0x13

    if-eq v1, v11, :cond_49

    const/16 v11, 0x27

    if-eq v1, v11, :cond_47

    const/16 v11, 0x28

    if-eq v1, v11, :cond_46

    const/16 v11, 0x39

    if-eq v1, v11, :cond_44

    const/16 v11, 0x3a

    if-eq v1, v11, :cond_40

    const/16 v11, 0x56

    if-eq v1, v11, :cond_3e

    const/16 v11, 0x57

    if-eq v1, v11, :cond_3d

    const/16 v11, 0x78

    if-eq v1, v11, :cond_3a

    const/16 v11, 0x79

    if-eq v1, v11, :cond_39

    const/16 v11, 0x144

    if-eq v1, v11, :cond_38

    const/16 v11, 0x145

    if-eq v1, v11, :cond_37

    sparse-switch v1, :sswitch_data_5

    packed-switch v1, :pswitch_data_0

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_0
    if-ne v2, v4, :cond_5

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_5
    const/4 v3, 0x1

    :cond_6
    if-ne v2, v4, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_51

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_1
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_2
    if-ne v2, v4, :cond_7

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_7

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_7
    if-ne v2, v4, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_51

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_3
    if-ne v2, v4, :cond_8

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_8
    const/4 v3, 0x1

    :cond_9
    if-ne v2, v4, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_51

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_4
    if-ne v2, v4, :cond_a

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_a

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_a
    if-ne v2, v4, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_51

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_62
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_63
    const/4 v1, 0x5

    if-ne v2, v1, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_51

    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_64
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_65
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_66
    const/4 v1, 0x5

    if-ne v2, v1, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_51

    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_67
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_68
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_69
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_6a
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_6b
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_6c
    const/4 v1, 0x5

    if-ne v2, v1, :cond_b

    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_b
    const/4 v4, 0x2

    :cond_c
    if-ne v2, v1, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v4, :cond_51

    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_6d
    const/4 v1, 0x5

    if-ne v2, v1, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_51

    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_6e
    const/4 v1, 0x5

    if-ne v2, v1, :cond_d

    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_d
    const/4 v4, 0x2

    :cond_e
    if-ne v2, v1, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v4, :cond_51

    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_6f
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_70
    const/4 v1, 0x5

    const/4 v4, 0x2

    if-ne v2, v1, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v4, :cond_51

    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_71
    if-ne v2, v4, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_51

    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_72
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_73
    const/4 v1, 0x5

    if-ne v2, v1, :cond_f

    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_10

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_f
    const/4 v4, 0x2

    :cond_10
    if-ne v2, v1, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v4, :cond_51

    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_74
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_75
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_76
    const/4 v1, 0x5

    if-ne v2, v1, :cond_11

    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_12

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_11
    const/4 v4, 0x2

    :cond_12
    if-ne v2, v1, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v4, :cond_51

    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_77
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_78
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_79
    const/4 v1, 0x5

    if-ne v2, v1, :cond_13

    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_14

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_13
    const/4 v4, 0x2

    :cond_14
    if-ne v2, v1, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v4, :cond_51

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_7a
    if-ne v2, v4, :cond_16

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_15

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_15
    :goto_0
    const/4 v1, 0x5

    goto :goto_1

    :cond_16
    const/4 v3, 0x1

    goto :goto_0

    :goto_1
    if-ne v2, v1, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_51

    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_7b
    const/4 v1, 0x5

    if-ne v2, v1, :cond_17

    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_18

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_17
    const/4 v4, 0x2

    :cond_18
    if-ne v2, v1, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v4, :cond_51

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_7c
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_7d
    if-ne v2, v4, :cond_1a

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_19

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_19
    :goto_2
    const/4 v1, 0x5

    goto :goto_3

    :cond_1a
    const/4 v3, 0x1

    goto :goto_2

    :goto_3
    if-ne v2, v1, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_51

    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_7e
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_7f
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_80
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_81
    if-ne v2, v4, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_51

    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_82
    if-ne v2, v4, :cond_1b

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_1b

    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_1b
    const/4 v1, 0x5

    if-ne v2, v1, :cond_1c

    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1d

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_1c
    const/4 v4, 0x2

    :cond_1d
    if-ne v2, v1, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v4, :cond_51

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_83
    if-ne v2, v4, :cond_1e

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_1e

    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_1e
    const/4 v1, 0x5

    if-ne v2, v1, :cond_1f

    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_20

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_1f
    const/4 v4, 0x2

    :cond_20
    if-ne v2, v1, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v4, :cond_51

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_84
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_85
    if-ne v2, v4, :cond_21

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_22

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_21
    const/4 v3, 0x1

    :cond_22
    if-ne v2, v4, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_51

    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_86
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_87
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_88
    if-ne v2, v4, :cond_23

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_24

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_23
    const/4 v3, 0x1

    :cond_24
    if-ne v2, v4, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_51

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_89
    const/4 v3, 0x1

    if-ne v2, v4, :cond_25

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_25

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_25
    if-ne v2, v4, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_51

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_8a
    if-ne v2, v4, :cond_26

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_26

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_26
    if-ne v2, v4, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_51

    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_8b
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_8c
    if-ne v2, v4, :cond_27

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_27

    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_27
    if-ne v2, v4, :cond_28

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_28

    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_28
    const/4 v1, 0x5

    if-ne v2, v1, :cond_29

    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_29
    const/4 v4, 0x2

    :cond_2a
    if-ne v2, v1, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v4, :cond_51

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_8d
    if-ne v2, v4, :cond_2b

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2c

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_2b
    const/4 v3, 0x1

    :cond_2c
    if-ne v2, v4, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_51

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_8e
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d

    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_2d
    if-ne v2, v4, :cond_2e

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_2e

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_2e
    if-ne v2, v4, :cond_2f

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_2f

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_2f
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_8f
    if-ne v2, v4, :cond_30

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_30

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_30
    if-ne v2, v4, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_51

    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_90
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_91
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_92
    if-ne v2, v4, :cond_31

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_31

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_31
    if-ne v2, v4, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_51

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_93
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_94
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_95
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_96
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_97
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_98
    if-ne v2, v4, :cond_32

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_32

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_32
    if-ne v2, v4, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_51

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_99
    if-ne v2, v4, :cond_33

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_33

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_33
    if-ne v2, v4, :cond_34

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_34

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_34
    const/4 v1, 0x5

    if-ne v2, v1, :cond_35

    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v3, :cond_35

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_35
    if-ne v2, v1, :cond_36

    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v3, :cond_36

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_36
    if-ne v2, v1, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_51

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_9a
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_9b
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_9c
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_37
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_38
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_39
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_3a
    if-ne v2, v4, :cond_3b

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3c

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_3b
    const/4 v3, 0x1

    :cond_3c
    if-ne v2, v4, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_51

    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_3d
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_3e
    if-ne v2, v4, :cond_3f

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_3f

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_3f
    if-ne v2, v4, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_51

    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_40
    if-ne v2, v4, :cond_41

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_41

    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_41
    const/4 v1, 0x5

    if-ne v2, v1, :cond_42

    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_43

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_42
    const/4 v4, 0x2

    :cond_43
    if-ne v2, v1, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v4, :cond_51

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto/16 :goto_4

    :cond_44
    if-ne v2, v4, :cond_45

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_45

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto :goto_4

    :cond_45
    if-ne v2, v4, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_51

    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto :goto_4

    :cond_46
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto :goto_4

    :cond_47
    if-ne v2, v4, :cond_48

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_48

    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto :goto_4

    :cond_48
    if-ne v2, v4, :cond_51

    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_51

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto :goto_4

    :cond_49
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto :goto_4

    :cond_4a
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto :goto_4

    :cond_4b
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto :goto_4

    :cond_4c
    const/4 v1, 0x1

    if-ne v2, v1, :cond_4d

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto :goto_4

    :cond_4d
    if-ne v2, v4, :cond_51

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto :goto_4

    :cond_4e
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto :goto_4

    :cond_4f
    const-string v1, "DQPSK"

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    goto :goto_4

    :cond_50
    const-string v1, "DBPSK"

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    :cond_51
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_19
        0x8 -> :sswitch_19
        0xe -> :sswitch_18
        0x10 -> :sswitch_18
        0x11 -> :sswitch_18
        0x15 -> :sswitch_17
        0x18 -> :sswitch_17
        0x19 -> :sswitch_17
        0x1d -> :sswitch_16
        0x20 -> :sswitch_16
        0x22 -> :sswitch_16
        0x2b -> :sswitch_15
        0x30 -> :sswitch_15
        0x33 -> :sswitch_15
        0x3a -> :sswitch_14
        0x41 -> :sswitch_13
        0x44 -> :sswitch_14
        0x49 -> :sswitch_12
        0x4d -> :sswitch_11
        0x51 -> :sswitch_10
        0x56 -> :sswitch_10
        0x57 -> :sswitch_f
        0x61 -> :sswitch_e
        0x67 -> :sswitch_f
        0x6c -> :sswitch_d
        0x6d -> :sswitch_c
        0x72 -> :sswitch_d
        0x75 -> :sswitch_b
        0x79 -> :sswitch_a
        0x81 -> :sswitch_c
        0x82 -> :sswitch_b
        0x83 -> :sswitch_9
        0x87 -> :sswitch_8
        0x89 -> :sswitch_b
        0x8f -> :sswitch_8
        0x92 -> :sswitch_7
        0x9a -> :sswitch_9
        0xa2 -> :sswitch_6
        0xac -> :sswitch_6
        0xaf -> :sswitch_5
        0xc3 -> :sswitch_4
        0xce -> :sswitch_5
        0xd8 -> :sswitch_3
        0xdb -> :sswitch_2
        0xe5 -> :sswitch_3
        0xf3 -> :sswitch_1
        0x102 -> :sswitch_2
        0x10e -> :sswitch_0
        0x11e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xe -> :sswitch_32
        0x10 -> :sswitch_32
        0x11 -> :sswitch_32
        0x1d -> :sswitch_31
        0x20 -> :sswitch_31
        0x22 -> :sswitch_31
        0x2b -> :sswitch_30
        0x30 -> :sswitch_30
        0x33 -> :sswitch_30
        0x3a -> :sswitch_2f
        0x41 -> :sswitch_2f
        0x44 -> :sswitch_2f
        0x57 -> :sswitch_2e
        0x61 -> :sswitch_2e
        0x67 -> :sswitch_2e
        0x75 -> :sswitch_2d
        0x82 -> :sswitch_2d
        0x83 -> :sswitch_2c
        0x89 -> :sswitch_2d
        0x92 -> :sswitch_2b
        0x9a -> :sswitch_2c
        0xa2 -> :sswitch_2a
        0xac -> :sswitch_2a
        0xaf -> :sswitch_29
        0xc3 -> :sswitch_28
        0xce -> :sswitch_29
        0xd8 -> :sswitch_27
        0xdb -> :sswitch_26
        0xe5 -> :sswitch_27
        0xea -> :sswitch_25
        0xf3 -> :sswitch_24
        0x102 -> :sswitch_26
        0x104 -> :sswitch_25
        0x107 -> :sswitch_23
        0x10e -> :sswitch_22
        0x113 -> :sswitch_25
        0x11e -> :sswitch_22
        0x124 -> :sswitch_21
        0x135 -> :sswitch_23
        0x145 -> :sswitch_20
        0x158 -> :sswitch_20
        0x15f -> :sswitch_1f
        0x186 -> :sswitch_1e
        0x19c -> :sswitch_1f
        0x1b1 -> :sswitch_1d
        0x1b6 -> :sswitch_1c
        0x1ca -> :sswitch_1d
        0x1e7 -> :sswitch_1b
        0x204 -> :sswitch_1c
        0x21d -> :sswitch_1a
        0x23d -> :sswitch_1a
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1e -> :sswitch_4b
        0x22 -> :sswitch_4b
        0x24 -> :sswitch_4b
        0x3d -> :sswitch_4a
        0x44 -> :sswitch_4a
        0x48 -> :sswitch_4a
        0x5b -> :sswitch_49
        0x66 -> :sswitch_49
        0x6c -> :sswitch_49
        0x7a -> :sswitch_48
        0x88 -> :sswitch_48
        0x90 -> :sswitch_48
        0xb7 -> :sswitch_47
        0xcc -> :sswitch_47
        0xd8 -> :sswitch_47
        0xf5 -> :sswitch_46
        0x110 -> :sswitch_46
        0x113 -> :sswitch_45
        0x120 -> :sswitch_46
        0x132 -> :sswitch_44
        0x144 -> :sswitch_45
        0x154 -> :sswitch_43
        0x168 -> :sswitch_43
        0x16f -> :sswitch_42
        0x198 -> :sswitch_41
        0x1b0 -> :sswitch_42
        0x1c5 -> :sswitch_40
        0x1cb -> :sswitch_3f
        0x1e0 -> :sswitch_40
        0x1ea -> :sswitch_3e
        0x1fe -> :sswitch_3d
        0x21c -> :sswitch_3f
        0x220 -> :sswitch_3e
        0x227 -> :sswitch_3c
        0x237 -> :sswitch_3b
        0x240 -> :sswitch_3e
        0x258 -> :sswitch_3b
        0x264 -> :sswitch_3a
        0x288 -> :sswitch_3c
        0x2a8 -> :sswitch_39
        0x2d0 -> :sswitch_39
        0x2df -> :sswitch_38
        0x330 -> :sswitch_37
        0x360 -> :sswitch_38
        0x38b -> :sswitch_36
        0x396 -> :sswitch_35
        0x3c0 -> :sswitch_36
        0x3fc -> :sswitch_34
        0x438 -> :sswitch_35
        0x46e -> :sswitch_33
        0x4b0 -> :sswitch_33
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x3d -> :sswitch_57
        0x44 -> :sswitch_57
        0x48 -> :sswitch_57
        0x7a -> :sswitch_57
        0x88 -> :sswitch_57
        0x90 -> :sswitch_57
        0xb7 -> :sswitch_56
        0xcc -> :sswitch_56
        0xd8 -> :sswitch_56
        0xf5 -> :sswitch_55
        0x110 -> :sswitch_54
        0x111 -> :sswitch_55
        0x120 -> :sswitch_55
        0x16f -> :sswitch_56
        0x198 -> :sswitch_56
        0x1b0 -> :sswitch_56
        0x1ea -> :sswitch_54
        0x220 -> :sswitch_54
        0x227 -> :sswitch_53
        0x240 -> :sswitch_54
        0x264 -> :sswitch_53
        0x288 -> :sswitch_53
        0x2a8 -> :sswitch_52
        0x2d0 -> :sswitch_52
        0x2df -> :sswitch_51
        0x330 -> :sswitch_51
        0x360 -> :sswitch_51
        0x38b -> :sswitch_50
        0x396 -> :sswitch_4f
        0x3c0 -> :sswitch_50
        0x3d4 -> :sswitch_4e
        0x3fc -> :sswitch_4f
        0x438 -> :sswitch_4f
        0x440 -> :sswitch_4e
        0x44e -> :sswitch_53
        0x46e -> :sswitch_4d
        0x480 -> :sswitch_4e
        0x4b1 -> :sswitch_4d
        0x4c9 -> :sswitch_53
        0x511 -> :sswitch_53
        0x551 -> :sswitch_52
        0x5a1 -> :sswitch_52
        0x5be -> :sswitch_4c
        0x661 -> :sswitch_4c
        0x6c1 -> :sswitch_4c
        0x716 -> :sswitch_50
        0x72d -> :sswitch_4f
        0x781 -> :sswitch_50
        0x7f9 -> :sswitch_4f
        0x871 -> :sswitch_4f
        0x8dc -> :sswitch_4d
        0x961 -> :sswitch_4d
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x3a -> :sswitch_61
        0x41 -> :sswitch_61
        0x75 -> :sswitch_61
        0x82 -> :sswitch_61
        0xaf -> :sswitch_60
        0xc3 -> :sswitch_60
        0xea -> :sswitch_5f
        0x104 -> :sswitch_5f
        0x15f -> :sswitch_60
        0x186 -> :sswitch_60
        0x1d4 -> :sswitch_5e
        0x208 -> :sswitch_5e
        0x20e -> :sswitch_5d
        0x249 -> :sswitch_5d
        0x28a -> :sswitch_5c
        0x2be -> :sswitch_5b
        0x30c -> :sswitch_5b
        0x362 -> :sswitch_5a
        0x3a8 -> :sswitch_59
        0x410 -> :sswitch_59
        0x41d -> :sswitch_5d
        0x492 -> :sswitch_5d
        0x514 -> :sswitch_5c
        0x57c -> :sswitch_58
        0x618 -> :sswitch_58
        0x6c5 -> :sswitch_5a
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x9 -> :sswitch_9c
        0xb -> :sswitch_9b
        0xc -> :sswitch_9a
        0xd -> :sswitch_99
        0xe -> :sswitch_98
        0xf -> :sswitch_97
        0x15 -> :sswitch_96
        0x18 -> :sswitch_95
        0x20 -> :sswitch_94
        0x24 -> :sswitch_93
        0x2b -> :sswitch_92
        0x2d -> :sswitch_91
        0x30 -> :sswitch_90
        0x34 -> :sswitch_8f
        0x36 -> :sswitch_8e
        0x3c -> :sswitch_8d
        0x41 -> :sswitch_8c
        0x48 -> :sswitch_8b
        0x4e -> :sswitch_8a
        0x51 -> :sswitch_89
        0x5a -> :sswitch_88
        0x61 -> :sswitch_87
        0x68 -> :sswitch_86
        0x6c -> :sswitch_85
        0x73 -> :sswitch_84
        0x75 -> :sswitch_83
        0x82 -> :sswitch_82
        0x87 -> :sswitch_81
        0x90 -> :sswitch_80
        0x96 -> :sswitch_7f
        0x9c -> :sswitch_7e
        0xa2 -> :sswitch_7d
        0xad -> :sswitch_7c
        0xaf -> :sswitch_7b
        0xb4 -> :sswitch_7a
        0xc3 -> :sswitch_79
        0xc8 -> :sswitch_78
        0xd8 -> :sswitch_77
        0xea -> :sswitch_76
        0xf0 -> :sswitch_75
        0xf3 -> :sswitch_74
        0x104 -> :sswitch_73
        0x107 -> :sswitch_72
        0x10e -> :sswitch_71
        0x124 -> :sswitch_70
        0x12c -> :sswitch_6f
        0x15f -> :sswitch_6e
        0x168 -> :sswitch_6d
        0x186 -> :sswitch_6c
        0x190 -> :sswitch_6b
        0x1b1 -> :sswitch_6a
        0x1d4 -> :sswitch_69
        0x208 -> :sswitch_68
        0x20e -> :sswitch_67
        0x249 -> :sswitch_66
        0x28a -> :sswitch_65
        0x2be -> :sswitch_64
        0x30c -> :sswitch_63
        0x362 -> :sswitch_62
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
