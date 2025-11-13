.class public Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;
.super Ljava/lang/Object;
.source "ConnectionInfoAnalyzer.java"


# instance fields
.field private channelWidth:I

.field mCodingrate:Ljava/lang/String;

.field private mGeneration:I

.field mModulation:Ljava/lang/String;

.field mTxPower:Ljava/lang/String;

.field mbgn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "N/A"

    .line 17
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    .line 23
    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mGeneration:I

    return-void
.end method


# virtual methods
.method public getGeneration(I)I
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mGeneration:I

    goto :goto_0

    .line 32
    :cond_0
    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mGeneration:I

    goto :goto_0

    .line 35
    :cond_1
    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mGeneration:I

    goto :goto_0

    .line 38
    :cond_2
    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mGeneration:I

    .line 44
    :goto_0
    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mGeneration:I

    return p0
.end method

.method public getNetworkInfofromLinkSpeed(II)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "2/3"

    const-string v4, "1024-QAM"

    const-string v5, "BPSK"

    const-string v6, "256-QAM"

    const-string v7, "5/6"

    const-string v8, "16-QAM"

    const-string v9, "QPSK"

    const-string v10, "1/2"

    const-string v11, "64-QAM"

    const-string v12, "802.11ax"

    const-string v13, "3/4"

    const-string v14, "N/A"

    const/4 v15, 0x6

    if-ne v2, v15, :cond_0

    .line 49
    iget v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v15, :cond_0

    sparse-switch v1, :sswitch_data_0

    .line 287
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 288
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 289
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 290
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 281
    :sswitch_0
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 282
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 283
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 284
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 274
    :sswitch_1
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 275
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 276
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 277
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 268
    :sswitch_2
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 269
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 270
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 271
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 261
    :sswitch_3
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 262
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 263
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 264
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 254
    :sswitch_4
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 255
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 256
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 257
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 248
    :sswitch_5
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 249
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 250
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 251
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 241
    :sswitch_6
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 242
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 243
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 244
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 234
    :sswitch_7
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 235
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 236
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 237
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 213
    :sswitch_8
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 214
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 215
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 216
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 228
    :sswitch_9
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 229
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 230
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 231
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 206
    :sswitch_a
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 207
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 208
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 209
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 221
    :sswitch_b
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 222
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 223
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 224
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 200
    :sswitch_c
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 201
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 202
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 203
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 193
    :sswitch_d
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 194
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 195
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 196
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 179
    :sswitch_e
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 180
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 181
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 182
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 165
    :sswitch_f
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 166
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 167
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 168
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 157
    :sswitch_10
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 158
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 159
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 160
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 150
    :sswitch_11
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 151
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 152
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 153
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 144
    :sswitch_12
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 145
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 146
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 147
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 131
    :sswitch_13
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 132
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 133
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 134
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 117
    :sswitch_14
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 118
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 119
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 120
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 102
    :sswitch_15
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 103
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 104
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 105
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 86
    :sswitch_16
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 87
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 88
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 89
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 77
    :sswitch_17
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 78
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 79
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 80
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 62
    :sswitch_18
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 63
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 64
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 65
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 53
    :sswitch_19
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 54
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 55
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 56
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    const/4 v15, 0x6

    move-object/from16 v16, v5

    const/4 v5, 0x1

    if-ne v2, v15, :cond_1

    .line 293
    iget v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v15, v5, :cond_1

    sparse-switch v1, :sswitch_data_1

    .line 520
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 521
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 522
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 523
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 514
    :sswitch_1a
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 515
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 516
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 517
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 507
    :sswitch_1b
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 508
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 509
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 510
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 501
    :sswitch_1c
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 502
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 503
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 504
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 494
    :sswitch_1d
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 495
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 496
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 497
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 487
    :sswitch_1e
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 488
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 489
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 490
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 481
    :sswitch_1f
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 482
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 483
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 484
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 474
    :sswitch_20
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 475
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 476
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 477
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 467
    :sswitch_21
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 468
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 469
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 470
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 446
    :sswitch_22
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 447
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 448
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 449
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 461
    :sswitch_23
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 462
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 463
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 464
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 439
    :sswitch_24
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 440
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 441
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 442
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 454
    :sswitch_25
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 455
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 456
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 457
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 433
    :sswitch_26
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 434
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 435
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 436
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 426
    :sswitch_27
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 427
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 428
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 429
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 412
    :sswitch_28
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 413
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 414
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 415
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 398
    :sswitch_29
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 399
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 400
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 401
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 390
    :sswitch_2a
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 391
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 392
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 393
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 383
    :sswitch_2b
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 384
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 385
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 386
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 377
    :sswitch_2c
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 378
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 379
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 380
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 363
    :sswitch_2d
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 364
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 365
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 366
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 347
    :sswitch_2e
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 348
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 349
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 350
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 331
    :sswitch_2f
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 332
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 333
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 334
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 322
    :sswitch_30
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 323
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 324
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 325
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_31
    move-object/from16 v15, v16

    .line 307
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 308
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 309
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 310
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_32
    move-object/from16 v15, v16

    .line 298
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 299
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 300
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 301
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    move-object/from16 v15, v16

    const/4 v5, 0x6

    move-object/from16 v17, v15

    const/4 v15, 0x2

    if-ne v2, v5, :cond_2

    .line 526
    iget v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v5, v15, :cond_2

    sparse-switch v1, :sswitch_data_2

    .line 753
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 754
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 755
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 756
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 747
    :sswitch_33
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 748
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 749
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 750
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 740
    :sswitch_34
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 741
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 742
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 743
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 734
    :sswitch_35
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 735
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 736
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 737
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 727
    :sswitch_36
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 728
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 729
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 730
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 720
    :sswitch_37
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 721
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 722
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 723
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 714
    :sswitch_38
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 715
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 716
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 717
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 707
    :sswitch_39
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 708
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 709
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 710
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 700
    :sswitch_3a
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 701
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 702
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 703
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 679
    :sswitch_3b
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 680
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 681
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 682
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 694
    :sswitch_3c
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 695
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 696
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 697
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 672
    :sswitch_3d
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 673
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 674
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 675
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 687
    :sswitch_3e
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 688
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 689
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 690
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 666
    :sswitch_3f
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 667
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 668
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 669
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 659
    :sswitch_40
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 660
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 661
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 662
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 645
    :sswitch_41
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 646
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 647
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 648
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 631
    :sswitch_42
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 632
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 633
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 634
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 623
    :sswitch_43
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 624
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 625
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 626
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 616
    :sswitch_44
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 617
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 618
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 619
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 610
    :sswitch_45
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 611
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 612
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 613
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 596
    :sswitch_46
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 597
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 598
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 599
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 580
    :sswitch_47
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 581
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 582
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 583
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 564
    :sswitch_48
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 565
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 566
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 567
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 555
    :sswitch_49
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 556
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 557
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 558
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_4a
    move-object/from16 v5, v17

    .line 540
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 541
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 542
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 543
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_4b
    move-object/from16 v5, v17

    .line 531
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 532
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 533
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 534
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    move-object/from16 v5, v17

    const/4 v15, 0x6

    if-ne v2, v15, :cond_3

    .line 759
    iget v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v2, 0x3

    if-ne v15, v2, :cond_3

    sparse-switch v1, :sswitch_data_3

    goto/16 :goto_0

    .line 839
    :sswitch_4c
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 840
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 841
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 842
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 868
    :sswitch_4d
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 869
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 870
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 871
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 811
    :sswitch_4e
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 812
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 813
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 814
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 859
    :sswitch_4f
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 860
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 861
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 862
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 848
    :sswitch_50
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 849
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 850
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 851
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 803
    :sswitch_51
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 804
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 805
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 806
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 831
    :sswitch_52
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 832
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 833
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 834
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 822
    :sswitch_53
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 823
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 824
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 825
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 795
    :sswitch_54
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 796
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 797
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 798
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 775
    :sswitch_55
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 776
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 777
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 778
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 786
    :sswitch_56
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 787
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 788
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 789
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 767
    :sswitch_57
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 768
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 769
    iput-object v12, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 770
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x5

    const-string v4, "802.11ac"

    move/from16 v12, p2

    if-ne v12, v2, :cond_4

    .line 874
    iget v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v2, 0x3

    if-ne v15, v2, :cond_4

    sparse-switch v1, :sswitch_data_4

    goto/16 :goto_0

    .line 940
    :sswitch_58
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 941
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 942
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 943
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 917
    :sswitch_59
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 918
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 919
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 920
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 947
    :sswitch_5a
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 948
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 949
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 950
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 910
    :sswitch_5b
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 911
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 912
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 913
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 933
    :sswitch_5c
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 934
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 935
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 936
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 926
    :sswitch_5d
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 927
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 928
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 929
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 903
    :sswitch_5e
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 904
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 905
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 906
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 887
    :sswitch_5f
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 888
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 889
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 890
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 896
    :sswitch_60
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 897
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 898
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 899
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 880
    :sswitch_61
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 881
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 882
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 883
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x1

    if-eq v1, v2, :cond_50

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4f

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4e

    const-string v15, "802.11g"

    const-string v2, "802.11n"

    move-object/from16 v19, v15

    const-string v15, "12dBm"

    move-object/from16 v20, v3

    const/4 v3, 0x6

    if-eq v1, v3, :cond_4c

    const/4 v3, 0x7

    if-eq v1, v3, :cond_4b

    const/16 v3, 0x12

    if-eq v1, v3, :cond_4a

    const/16 v3, 0x13

    if-eq v1, v3, :cond_49

    const/16 v3, 0x27

    if-eq v1, v3, :cond_47

    const/16 v3, 0x28

    if-eq v1, v3, :cond_46

    const/16 v3, 0x39

    if-eq v1, v3, :cond_44

    const/16 v3, 0x3a

    move-object/from16 v18, v11

    const-string v11, "11dBm"

    if-eq v1, v3, :cond_40

    const/16 v3, 0x56

    if-eq v1, v3, :cond_3e

    const/16 v3, 0x57

    if-eq v1, v3, :cond_3d

    const/16 v3, 0x78

    if-eq v1, v3, :cond_3a

    const/16 v3, 0x79

    if-eq v1, v3, :cond_39

    const/16 v3, 0x144

    if-eq v1, v3, :cond_38

    const/16 v3, 0x145

    if-eq v1, v3, :cond_37

    const-string v3, "Do not use"

    sparse-switch v1, :sswitch_data_5

    packed-switch v1, :pswitch_data_0

    .line 1758
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1759
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1760
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1761
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_0
    const/4 v1, 0x4

    if-ne v12, v1, :cond_5

    .line 1346
    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1347
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1348
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1349
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1350
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x1

    :cond_6
    if-ne v12, v1, :cond_51

    .line 1351
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v4, :cond_51

    .line 1352
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1353
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1354
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1355
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 1440
    :pswitch_1
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1441
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1442
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1443
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2
    const/4 v1, 0x4

    if-ne v12, v1, :cond_7

    .line 1212
    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v3, :cond_7

    .line 1213
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1214
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1215
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1216
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    if-ne v12, v1, :cond_51

    .line 1217
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_51

    .line 1218
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1219
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1220
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1221
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_3
    const/4 v1, 0x4

    if-ne v12, v1, :cond_8

    .line 1273
    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 1274
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1275
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1276
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1277
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x1

    :cond_9
    if-ne v12, v1, :cond_51

    .line 1278
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v4, :cond_51

    .line 1279
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1280
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1281
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1282
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    const/4 v1, 0x4

    if-ne v12, v1, :cond_a

    .line 1091
    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v3, :cond_a

    .line 1092
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1093
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1094
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1095
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    if-ne v12, v1, :cond_51

    .line 1096
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_51

    .line 1097
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1098
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1099
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1100
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 1751
    :sswitch_62
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1752
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1753
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1754
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_63
    const/4 v1, 0x5

    if-ne v12, v1, :cond_51

    .line 1728
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_51

    .line 1729
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1730
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1731
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1732
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 1722
    :sswitch_64
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1723
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1724
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1725
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_65
    move-object/from16 v1, v18

    .line 1745
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1746
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1747
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1748
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_66
    move-object/from16 v1, v18

    const/4 v2, 0x5

    if-ne v12, v2, :cond_51

    .line 1714
    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_51

    .line 1715
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1716
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1717
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1718
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_67
    move-object/from16 v1, v18

    .line 1708
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1709
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1710
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1711
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_68
    move-object/from16 v1, v18

    .line 1739
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    move-object/from16 v3, v20

    .line 1740
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1741
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1742
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_69
    move-object/from16 v1, v18

    move-object/from16 v3, v20

    .line 1702
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1703
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1704
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1705
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 1600
    :sswitch_6a
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1601
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1602
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1603
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 1693
    :sswitch_6b
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1694
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1695
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1696
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_6c
    const/4 v1, 0x5

    if-ne v12, v1, :cond_b

    .line 1588
    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_c

    .line 1589
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1590
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1591
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const/4 v5, 0x2

    :cond_c
    if-ne v12, v1, :cond_51

    .line 1592
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v5, :cond_51

    .line 1593
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1594
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1595
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1596
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_6d
    const/4 v1, 0x5

    if-ne v12, v1, :cond_51

    .line 1672
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_51

    .line 1673
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1674
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1675
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1676
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_6e
    const/4 v1, 0x5

    if-ne v12, v1, :cond_d

    .line 1502
    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    .line 1503
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1504
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1505
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1506
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x2

    :cond_e
    if-ne v12, v1, :cond_51

    .line 1507
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_51

    .line 1508
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1509
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1510
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1511
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_6f
    move-object/from16 v1, v18

    .line 1687
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1688
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1689
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1690
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_70
    move-object/from16 v1, v18

    const/4 v2, 0x5

    if-ne v12, v2, :cond_51

    .line 1574
    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_51

    .line 1575
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1576
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1577
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1578
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_71
    move-object/from16 v1, v18

    const/4 v4, 0x4

    if-ne v12, v4, :cond_51

    .line 1658
    iget v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_51

    .line 1659
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1660
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1661
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1662
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_72
    move-object/from16 v1, v18

    .line 1496
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1497
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1498
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1499
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_73
    move-object/from16 v1, v18

    move-object/from16 v3, v20

    const/4 v2, 0x5

    if-ne v12, v2, :cond_f

    .line 1561
    iget v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_10

    .line 1562
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1563
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1564
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1565
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    const/4 v6, 0x2

    :cond_10
    if-ne v12, v2, :cond_51

    .line 1566
    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v2, v6, :cond_51

    .line 1567
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1568
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1569
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1570
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_74
    move-object/from16 v1, v18

    .line 1652
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1653
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1654
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1655
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_75
    move-object/from16 v1, v18

    move-object/from16 v3, v20

    .line 1681
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1682
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1683
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1684
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_76
    move-object/from16 v1, v18

    move-object/from16 v3, v20

    const/4 v2, 0x5

    if-ne v12, v2, :cond_11

    .line 1483
    iget v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_12

    .line 1484
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1485
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1486
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1487
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_11
    const/4 v6, 0x2

    :cond_12
    if-ne v12, v2, :cond_51

    .line 1488
    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v2, v6, :cond_51

    .line 1489
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1490
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1491
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1492
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_77
    move-object/from16 v1, v18

    move-object/from16 v3, v20

    .line 1646
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1647
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1648
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1649
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 1431
    :sswitch_78
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1432
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1433
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1434
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_79
    const/4 v1, 0x5

    if-ne v12, v1, :cond_13

    .line 1548
    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    .line 1549
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1550
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1551
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1552
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_13
    const/4 v3, 0x2

    :cond_14
    if-ne v12, v1, :cond_51

    .line 1553
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_51

    .line 1554
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1555
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1556
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1557
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7a
    const/4 v1, 0x4

    if-ne v12, v1, :cond_15

    .line 1418
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_16

    .line 1419
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1420
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1421
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1422
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    const/4 v5, 0x1

    :cond_16
    const/4 v1, 0x5

    if-ne v12, v1, :cond_51

    .line 1423
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v5, :cond_51

    .line 1424
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1425
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1426
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1427
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7b
    const/4 v1, 0x5

    if-ne v12, v1, :cond_17

    .line 1470
    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    .line 1471
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1472
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1473
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1474
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_17
    const/4 v3, 0x2

    :cond_18
    if-ne v12, v1, :cond_51

    .line 1475
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_51

    .line 1476
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1477
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1478
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1479
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 1637
    :sswitch_7c
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1638
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1639
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    const-string v1, "13dBm"

    .line 1640
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7d
    const/4 v1, 0x4

    if-ne v12, v1, :cond_19

    .line 1324
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1a

    .line 1325
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1326
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1327
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1328
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_19
    const/4 v3, 0x1

    :cond_1a
    const/4 v1, 0x5

    if-ne v12, v1, :cond_51

    .line 1329
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_51

    .line 1330
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1331
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1332
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1333
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 1616
    :sswitch_7e
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1617
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1618
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    const-string v1, "13dBm"

    .line 1619
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7f
    move-object/from16 v1, v18

    .line 1412
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1413
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1414
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1415
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_80
    move-object/from16 v1, v18

    .line 1631
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1632
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1633
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1634
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_81
    move-object/from16 v1, v18

    const/4 v5, 0x4

    if-ne v12, v5, :cond_51

    .line 1404
    iget v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_51

    .line 1405
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1406
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1407
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1408
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_82
    move-object/from16 v1, v18

    const/4 v5, 0x4

    if-ne v12, v5, :cond_1b

    .line 1530
    iget v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v5, :cond_1b

    .line 1531
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1532
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1533
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1534
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1b
    const/4 v1, 0x5

    if-ne v12, v1, :cond_1c

    .line 1535
    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d

    .line 1536
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1537
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1538
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1539
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1c
    const/4 v3, 0x2

    :cond_1d
    if-ne v12, v1, :cond_51

    .line 1540
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_51

    .line 1541
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1542
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1543
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1544
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_83
    move-object/from16 v1, v18

    const/4 v3, 0x4

    if-ne v12, v3, :cond_1e

    .line 1452
    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v3, :cond_1e

    .line 1453
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1454
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1455
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1456
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1e
    const/4 v1, 0x5

    if-ne v12, v1, :cond_1f

    .line 1457
    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 1458
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1459
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1460
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1461
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1f
    const/4 v3, 0x2

    :cond_20
    if-ne v12, v1, :cond_51

    .line 1462
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_51

    .line 1463
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1464
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1465
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1466
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_84
    move-object/from16 v1, v18

    move-object/from16 v3, v20

    .line 1625
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1626
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1627
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1628
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_85
    move-object/from16 v1, v18

    move-object/from16 v3, v20

    const/4 v4, 0x4

    if-ne v12, v4, :cond_21

    .line 1305
    iget v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_22

    .line 1306
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1307
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1308
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1309
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_21
    const/4 v6, 0x1

    :cond_22
    if-ne v12, v4, :cond_51

    .line 1310
    iget v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v4, v6, :cond_51

    .line 1311
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1312
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1313
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1314
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_86
    move-object/from16 v1, v18

    move-object/from16 v3, v20

    .line 1610
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1611
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1612
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1613
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 1524
    :sswitch_87
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1525
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1526
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1527
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_88
    const/4 v1, 0x4

    if-ne v12, v1, :cond_23

    .line 1378
    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_24

    .line 1379
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1380
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1381
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1382
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_23
    const/4 v4, 0x1

    :cond_24
    if-ne v12, v1, :cond_51

    .line 1383
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v4, :cond_51

    .line 1384
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1385
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1386
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1387
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_89
    const/4 v1, 0x4

    const/4 v4, 0x1

    if-ne v12, v1, :cond_25

    .line 1292
    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v3, v4, :cond_25

    .line 1293
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1294
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1295
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1296
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_25
    if-ne v12, v1, :cond_51

    .line 1297
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v4, :cond_51

    .line 1298
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1299
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1300
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1301
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8a
    const/4 v1, 0x4

    if-ne v12, v1, :cond_26

    .line 1171
    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v3, :cond_26

    .line 1172
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1173
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1174
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1175
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_26
    if-ne v12, v1, :cond_51

    .line 1176
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_51

    .line 1177
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1178
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1179
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    const-string v1, "13dBm"

    .line 1180
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8b
    move-object/from16 v1, v18

    .line 1251
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1252
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1253
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1254
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8c
    move-object/from16 v1, v18

    const/4 v3, 0x4

    if-ne v12, v3, :cond_27

    .line 1148
    iget v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v6, :cond_27

    .line 1149
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1150
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1151
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1152
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_27
    if-ne v12, v3, :cond_28

    .line 1153
    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v3, :cond_28

    .line 1154
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1155
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1156
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1157
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_28
    const/4 v1, 0x5

    if-ne v12, v1, :cond_29

    .line 1158
    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 1159
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1160
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1161
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1162
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_29
    const/4 v3, 0x2

    :cond_2a
    if-ne v12, v1, :cond_51

    .line 1163
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_51

    .line 1164
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1165
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1166
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1167
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8d
    const/4 v1, 0x4

    if-ne v12, v1, :cond_2b

    .line 1365
    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c

    .line 1366
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1367
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1368
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1369
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2b
    const/4 v4, 0x1

    :cond_2c
    if-ne v12, v1, :cond_51

    .line 1370
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v4, :cond_51

    .line 1371
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1372
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1373
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1374
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8e
    move-object/from16 v1, v18

    const/4 v4, 0x1

    if-ne v12, v4, :cond_2d

    .line 1033
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1034
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    move-object/from16 v6, v19

    .line 1035
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    const-string v1, "14dBm"

    .line 1036
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2d
    move-object/from16 v6, v19

    const/4 v3, 0x4

    if-ne v12, v3, :cond_2e

    .line 1037
    iget v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v5, v4, :cond_2e

    .line 1038
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1039
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1040
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1041
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2e
    if-ne v12, v3, :cond_2f

    .line 1042
    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v3, v4, :cond_2f

    .line 1043
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1044
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1045
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1046
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 1048
    :cond_2f
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1049
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1050
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    const-string v1, "14dBm"

    .line 1051
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8f
    move-object/from16 v1, v18

    move-object/from16 v3, v20

    const/4 v4, 0x4

    if-ne v12, v4, :cond_30

    .line 1117
    iget v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v5, :cond_30

    .line 1118
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1119
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1120
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1121
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_30
    if-ne v12, v4, :cond_51

    .line 1122
    iget v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v4, :cond_51

    .line 1123
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1124
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1125
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1126
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_90
    move-object/from16 v1, v18

    move-object/from16 v6, v19

    move-object/from16 v3, v20

    .line 1026
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1027
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1028
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    const-string v1, "14dBm"

    .line 1029
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 1359
    :sswitch_91
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1360
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1361
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1362
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_92
    const/4 v1, 0x4

    if-ne v12, v1, :cond_31

    .line 1225
    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v3, :cond_31

    .line 1226
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1227
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1228
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1229
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_31
    if-ne v12, v1, :cond_51

    .line 1230
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_51

    .line 1231
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1232
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1233
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1234
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_93
    move-object/from16 v6, v19

    .line 1020
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1021
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1022
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    const-string v1, "14dBm"

    .line 1023
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 1518
    :sswitch_94
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1519
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1520
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1521
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_95
    move-object/from16 v6, v19

    .line 1014
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1015
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1016
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    const-string v1, "14dBm"

    .line 1017
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 1206
    :sswitch_96
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1207
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1208
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1209
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 1340
    :sswitch_97
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1341
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1342
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1343
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_98
    const/4 v1, 0x4

    if-ne v12, v1, :cond_32

    .line 1193
    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v3, :cond_32

    .line 1194
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1195
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1196
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1197
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_32
    if-ne v12, v1, :cond_51

    .line 1198
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_51

    .line 1199
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1200
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1201
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1202
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_99
    const/4 v1, 0x4

    if-ne v12, v1, :cond_33

    .line 1057
    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v3, :cond_33

    .line 1058
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1059
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1060
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1061
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_33
    if-ne v12, v1, :cond_34

    .line 1062
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_34

    .line 1063
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1064
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1065
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1066
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_34
    const/4 v1, 0x5

    if-ne v12, v1, :cond_35

    .line 1067
    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v2, :cond_35

    .line 1068
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1069
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1070
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1071
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_35
    if-ne v12, v1, :cond_36

    .line 1072
    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v2, :cond_36

    .line 1073
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1074
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1075
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1076
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_36
    if-ne v12, v1, :cond_51

    .line 1077
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_51

    .line 1078
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1079
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1080
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1081
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_9a
    move-object/from16 v6, v19

    .line 1002
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1003
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1004
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    const-string v1, "14dBm"

    .line 1005
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_9b
    const-string v1, "CCK"

    .line 975
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 976
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    const-string v1, "802.11b"

    .line 977
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    const-string v1, "17dBm"

    .line 978
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_9c
    move-object/from16 v6, v19

    .line 996
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 997
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 998
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    const-string v1, "14dBm"

    .line 999
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_37
    move-object/from16 v1, v18

    .line 1582
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1583
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1584
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1585
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 1666
    :cond_38
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1667
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1668
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1669
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_39
    move-object/from16 v1, v18

    .line 1318
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1319
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1320
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1321
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3a
    move-object/from16 v1, v18

    move-object/from16 v3, v20

    const/4 v4, 0x4

    if-ne v12, v4, :cond_3b

    .line 1391
    iget v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3c

    .line 1392
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1393
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1394
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1395
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3b
    const/4 v6, 0x1

    :cond_3c
    if-ne v12, v4, :cond_51

    .line 1396
    iget v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v4, v6, :cond_51

    .line 1397
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1398
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1399
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1400
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 1446
    :cond_3d
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1447
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1448
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1449
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3e
    const/4 v3, 0x4

    if-ne v12, v3, :cond_3f

    .line 1257
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_3f

    .line 1258
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1259
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1260
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1261
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3f
    if-ne v12, v3, :cond_51

    .line 1262
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_51

    .line 1263
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1264
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1265
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    const-string v1, "13dBm"

    .line 1266
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_40
    move-object/from16 v1, v18

    const/4 v3, 0x4

    if-ne v12, v3, :cond_41

    .line 1130
    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v3, :cond_41

    .line 1131
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1132
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1133
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1134
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_41
    const/4 v1, 0x5

    if-ne v12, v1, :cond_42

    .line 1135
    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_43

    .line 1136
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1137
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1138
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1139
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_42
    const/4 v3, 0x2

    :cond_43
    if-ne v12, v1, :cond_51

    .line 1140
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-ne v1, v3, :cond_51

    .line 1141
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1142
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1143
    iput-object v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1144
    iput-object v11, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_44
    move-object v1, v11

    move-object/from16 v3, v20

    const/4 v4, 0x4

    if-ne v12, v4, :cond_45

    .line 1238
    iget v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v5, :cond_45

    .line 1239
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1240
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1241
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1242
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_45
    if-ne v12, v4, :cond_51

    .line 1243
    iget v4, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v4, :cond_51

    .line 1244
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1245
    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1246
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1247
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    .line 1286
    :cond_46
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1287
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1288
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1289
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_47
    const/4 v1, 0x4

    if-ne v12, v1, :cond_48

    .line 1104
    iget v3, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v3, :cond_48

    .line 1105
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1106
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1107
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1108
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto/16 :goto_0

    :cond_48
    if-ne v12, v1, :cond_51

    .line 1109
    iget v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    if-nez v1, :cond_51

    .line 1110
    iput-object v8, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1111
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1112
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1113
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto :goto_0

    .line 1085
    :cond_49
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1086
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1087
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1088
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto :goto_0

    :cond_4a
    move-object/from16 v6, v19

    .line 1008
    iput-object v9, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1009
    iput-object v13, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1010
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    const-string v1, "14dBm"

    .line 1011
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto :goto_0

    .line 1187
    :cond_4b
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 1188
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 1189
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 1190
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto :goto_0

    :cond_4c
    move-object/from16 v6, v19

    const/4 v1, 0x1

    if-ne v12, v1, :cond_4d

    .line 984
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 985
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 986
    iput-object v6, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    const-string v1, "14dBm"

    .line 987
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto :goto_0

    :cond_4d
    const/4 v1, 0x4

    if-ne v12, v1, :cond_51

    .line 989
    iput-object v5, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 990
    iput-object v10, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    .line 991
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    .line 992
    iput-object v15, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto :goto_0

    :cond_4e
    const-string v1, "CCK"

    .line 969
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 970
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    const-string v1, "802.11b"

    .line 971
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    const-string v1, "17dBm"

    .line 972
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto :goto_0

    :cond_4f
    const-string v1, "DQPSK"

    .line 963
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 964
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    const-string v1, "802.11b"

    .line 965
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    const-string v1, "17dBm"

    .line 966
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    goto :goto_0

    :cond_50
    const-string v1, "DBPSK"

    .line 957
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mModulation:Ljava/lang/String;

    .line 958
    iput-object v14, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mCodingrate:Ljava/lang/String;

    const-string v1, "802.11b"

    .line 959
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mbgn:Ljava/lang/String;

    const-string v1, "17dBm"

    .line 960
    iput-object v1, v0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->mTxPower:Ljava/lang/String;

    :cond_51
    :goto_0
    return-void

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

.method public setchannelWidth(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoAnalyzer;->channelWidth:I

    return-void
.end method
