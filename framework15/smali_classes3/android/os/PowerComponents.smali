.class Landroid/os/PowerComponents;
.super Ljava/lang/Object;
.source "PowerComponents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerComponents$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mData:Landroid/os/BatteryConsumer$BatteryConsumerData;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmData(Landroid/os/PowerComponents;)Landroid/os/BatteryConsumer$BatteryConsumerData;
    .locals 0

    iget-object p0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/PowerComponents$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/os/PowerComponents$Builder;->-$$Nest$fgetmData(Landroid/os/PowerComponents$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    return-void
.end method

.method private blacklist dump(Ljava/lang/StringBuilder;IIIIZ)V
    .locals 8

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/os/PowerComponents;->getConsumedPower(IIII)D

    move-result-wide v0

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/os/PowerComponents;->getUsageDurationMillis(IIII)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    if-eqz p6, :cond_0

    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-nez v6, :cond_0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/os/BatteryConsumer;->processStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v6, "="

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    const-string v4, " ("

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v2, v3}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method static blacklist parseXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/PowerComponents$Builder;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "power_components"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_0
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v21, v2

    goto/16 :goto_d

    :cond_1
    :goto_1
    const/4 v6, 0x1

    if-eq v2, v6, :cond_8

    if-ne v2, v3, :cond_7

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_2
    goto :goto_2

    :sswitch_0
    const-string v8, "custom_component"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v6

    goto :goto_3

    :sswitch_1
    const-string v8, "component"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_3

    :goto_2
    const/4 v7, -0x1

    :goto_3
    const-string/jumbo v8, "power"

    const-string v11, "id"

    const-string v12, "duration"

    packed-switch v7, :pswitch_data_0

    move/from16 v21, v2

    move-object/from16 v17, v5

    goto/16 :goto_c

    :pswitch_0
    const/4 v4, -0x1

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/4 v7, 0x0

    move-wide v9, v15

    :goto_4
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v7, v3, :cond_4

    invoke-interface {v0, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_1

    :cond_3
    goto :goto_5

    :sswitch_2
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    goto :goto_6

    :sswitch_3
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_6

    :sswitch_4
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_6

    :goto_5
    const/4 v3, -0x1

    :goto_6
    packed-switch v3, :pswitch_data_1

    goto :goto_7

    :pswitch_1
    invoke-interface {v0, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(I)J

    move-result-wide v9

    goto :goto_7

    :pswitch_2
    invoke-interface {v0, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(I)D

    move-result-wide v13

    goto :goto_7

    :pswitch_3
    invoke-interface {v0, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    move v4, v3

    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x2

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v4, v13, v14}, Landroid/os/PowerComponents$Builder;->setConsumedPowerForCustomComponent(ID)Landroid/os/PowerComponents$Builder;

    invoke-virtual {v1, v4, v9, v10}, Landroid/os/PowerComponents$Builder;->setUsageDurationForCustomComponentMillis(IJ)Landroid/os/PowerComponents$Builder;

    move/from16 v21, v2

    move-object/from16 v17, v5

    goto/16 :goto_c

    :pswitch_4
    const/4 v3, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v6, v19

    move/from16 v15, v20

    move-wide/from16 v24, v17

    move-object/from16 v17, v5

    move-wide/from16 v4, v24

    :goto_8
    move/from16 v21, v2

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v15, v2, :cond_6

    invoke-interface {v0, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v22

    sparse-switch v22, :sswitch_data_2

    move-wide/from16 v22, v4

    goto :goto_9

    :sswitch_5
    move-wide/from16 v22, v4

    const-string/jumbo v4, "process_state"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_a

    :sswitch_6
    move-wide/from16 v22, v4

    const-string/jumbo v4, "power_state"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    goto :goto_a

    :sswitch_7
    move-wide/from16 v22, v4

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    goto :goto_a

    :sswitch_8
    move-wide/from16 v22, v4

    const-string/jumbo v4, "model"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    goto :goto_a

    :sswitch_9
    move-wide/from16 v22, v4

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_a

    :sswitch_a
    move-wide/from16 v22, v4

    const-string/jumbo v4, "screen_state"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    goto :goto_a

    :sswitch_b
    move-wide/from16 v22, v4

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    goto :goto_a

    :cond_5
    :goto_9
    const/4 v2, -0x1

    :goto_a
    packed-switch v2, :pswitch_data_2

    move-wide/from16 v4, v22

    goto :goto_b

    :pswitch_5
    invoke-interface {v0, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v2

    move v6, v2

    move-wide/from16 v4, v22

    goto :goto_b

    :pswitch_6
    invoke-interface {v0, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(I)J

    move-result-wide v4

    goto :goto_b

    :pswitch_7
    invoke-interface {v0, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(I)D

    move-result-wide v4

    move-wide v13, v4

    move-wide/from16 v4, v22

    goto :goto_b

    :pswitch_8
    invoke-interface {v0, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v2

    move v10, v2

    move-wide/from16 v4, v22

    goto :goto_b

    :pswitch_9
    invoke-interface {v0, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v2

    move v9, v2

    move-wide/from16 v4, v22

    goto :goto_b

    :pswitch_a
    invoke-interface {v0, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v2

    move v7, v2

    move-wide/from16 v4, v22

    goto :goto_b

    :pswitch_b
    invoke-interface {v0, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v2

    move v3, v2

    move-wide/from16 v4, v22

    :goto_b
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v21

    goto/16 :goto_8

    :cond_6
    move-wide/from16 v22, v4

    invoke-static/range {p1 .. p1}, Landroid/os/PowerComponents$Builder;->-$$Nest$fgetmData(Landroid/os/PowerComponents$Builder;)Landroid/os/BatteryConsumer$BatteryConsumerData;

    move-result-object v2

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v2, v3, v7, v9, v10}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v2

    invoke-virtual {v1, v2, v13, v14, v6}, Landroid/os/PowerComponents$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/PowerComponents$Builder;

    nop

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/PowerComponents$Builder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/PowerComponents$Builder;

    goto :goto_c

    :cond_7
    move/from16 v21, v2

    move-object/from16 v17, v5

    :goto_c
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    move-object/from16 v5, v17

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_8
    move/from16 v21, v2

    :goto_d
    return-void

    :cond_9
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Invalid XML parser state"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_data_0
    .sparse-switch
        -0x5370e303 -> :sswitch_1
        -0x1a183651 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x76bbb26c -> :sswitch_4
        0xd1b -> :sswitch_3
        0x65e8905 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x76bbb26c -> :sswitch_b
        -0x4fa21902 -> :sswitch_a
        0xd1b -> :sswitch_9
        0x633fb29 -> :sswitch_8
        0x65e8905 -> :sswitch_7
        0x2eba18d7 -> :sswitch_6
        0x633976c1 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist writePowerComponentUsage(Landroid/util/proto/ProtoOutputStream;JIJJ)V
    .locals 4

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000003L

    invoke-virtual {p1, v2, v3, p7, p8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private blacklist writePowerUsageSlice(Landroid/util/proto/ProtoOutputStream;IJJI)V
    .locals 13

    move-object v9, p1

    move/from16 v10, p7

    const-wide v0, 0x20b00000003L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    const-wide v2, 0x10b00000001L

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Landroid/os/PowerComponents;->writePowerComponentUsage(Landroid/util/proto/ProtoOutputStream;JIJJ)V

    packed-switch v10, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown process state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    nop

    :goto_0
    const-wide v1, 0x10e00000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist writeStatsProtoImpl(Landroid/util/proto/ProtoOutputStream;)Z
    .locals 22

    move-object/from16 v9, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    const/16 v1, 0x13

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    if-ge v10, v1, :cond_4

    iget-object v1, v9, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v1, v10}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v14

    array-length v15, v14

    const/4 v1, 0x0

    move v7, v1

    :goto_1
    if-ge v7, v15, :cond_3

    aget-object v8, v14, v7

    iget v1, v8, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    iget v2, v8, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v3, v8, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v4, v8, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/os/PowerComponents;->getConsumedPower(IIII)D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryConsumer;->convertMahToDeciCoulombs(D)J

    move-result-wide v16

    iget v1, v8, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    iget v2, v8, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v3, v8, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v4, v8, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/os/PowerComponents;->getUsageDurationMillis(IIII)J

    move-result-wide v18

    cmp-long v1, v16, v11

    if-nez v1, :cond_0

    cmp-long v1, v18, v11

    if-nez v1, :cond_0

    move/from16 v21, v7

    goto :goto_3

    :cond_0
    const/16 v20, 0x1

    if-nez p1, :cond_1

    return v13

    :cond_1
    iget v0, v8, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v0, :cond_2

    const-wide v2, 0x20b00000002L

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v10

    move-wide/from16 v5, v16

    move/from16 v21, v7

    move-object v13, v8

    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v8}, Landroid/os/PowerComponents;->writePowerComponentUsage(Landroid/util/proto/ProtoOutputStream;JIJJ)V

    goto :goto_2

    :cond_2
    move/from16 v21, v7

    move-object v13, v8

    iget v7, v13, Landroid/os/BatteryConsumer$Key;->processState:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move-wide/from16 v3, v16

    move-wide/from16 v5, v18

    invoke-direct/range {v0 .. v7}, Landroid/os/PowerComponents;->writePowerUsageSlice(Landroid/util/proto/ProtoOutputStream;IJJI)V

    :goto_2
    move/from16 v0, v20

    :goto_3
    add-int/lit8 v7, v21, 0x1

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    move v10, v1

    :goto_4
    iget-object v1, v9, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v10, v1, :cond_7

    add-int/lit16 v13, v10, 0x3e8

    nop

    invoke-virtual {v9, v13}, Landroid/os/PowerComponents;->getConsumedPowerForCustomComponent(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryConsumer;->convertMahToDeciCoulombs(D)J

    move-result-wide v14

    invoke-virtual {v9, v13}, Landroid/os/PowerComponents;->getUsageDurationForCustomComponentMillis(I)J

    move-result-wide v16

    cmp-long v1, v14, v11

    if-nez v1, :cond_5

    cmp-long v1, v16, v11

    if-nez v1, :cond_5

    const/16 v19, 0x1

    goto :goto_5

    :cond_5
    const/16 v18, 0x1

    if-nez p1, :cond_6

    const/16 v19, 0x1

    return v19

    :cond_6
    const/16 v19, 0x1

    const-wide v2, 0x20b00000002L

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v13

    move-wide v5, v14

    move-wide/from16 v7, v16

    invoke-direct/range {v0 .. v8}, Landroid/os/PowerComponents;->writePowerComponentUsage(Landroid/util/proto/ProtoOutputStream;JIJJ)V

    move/from16 v0, v18

    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_7
    return v0
.end method


# virtual methods
.method blacklist dump(Ljava/io/PrintWriter;IIZ)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    const/16 v1, 0x13

    if-ge v8, v1, :cond_2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, v0

    move v3, v8

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/os/PowerComponents;->dump(Ljava/lang/StringBuilder;IIIIZ)V

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move v9, v1

    :goto_1
    const/4 v1, 0x5

    if-ge v9, v1, :cond_1

    if-nez v9, :cond_0

    goto :goto_2

    :cond_0
    move-object v1, p0

    move-object v2, v0

    move v3, v8

    move v4, v9

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/os/PowerComponents;->dump(Ljava/lang/StringBuilder;IIIIZ)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    if-nez p3, :cond_4

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    const/16 v2, 0x3e8

    :goto_3
    add-int/lit16 v3, v1, 0x3e8

    if-ge v2, v3, :cond_4

    nop

    invoke-virtual {p0, v2}, Landroid/os/PowerComponents;->getConsumedPowerForCustomComponent(I)D

    move-result-wide v3

    if-eqz p4, :cond_3

    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-nez v5, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0, v2}, Landroid/os/PowerComponents;->getCustomPowerComponentName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist getConsumedPower(IIII)D
    .locals 11

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->totalConsumedPowerColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v1, 0x0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->screenStateDataIncluded:Z

    if-eqz v0, :cond_1

    if-nez p3, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerStateDataIncluded:Z

    if-eqz v0, :cond_4

    if-eqz p4, :cond_4

    :cond_2
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v1

    return-wide v1

    :cond_3
    return-wide v1

    :cond_4
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    const/4 v3, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->screenStateDataIncluded:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerStateDataIncluded:Z

    if-eqz v0, :cond_8

    :cond_5
    const-wide/16 v4, 0x0

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v6, v0

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_7

    aget-object v8, v0, v7

    iget v9, v8, Landroid/os/BatteryConsumer$Key;->processState:I

    if-eqz v9, :cond_6

    invoke-virtual {v8, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$Key;->matches(IIII)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v10, v8, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v9, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v9

    add-double/2addr v4, v9

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    cmpl-double v0, v4, v1

    if-eqz v0, :cond_8

    return-wide v4

    :cond_8
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v0, p1, p2, v3, v3}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v1

    return-wide v1

    :cond_9
    return-wide v1
.end method

.method public blacklist getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D
    .locals 4

    iget v0, p1, Landroid/os/BatteryConsumer$Dimensions;->powerComponent:I

    iget v1, p1, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    iget v2, p1, Landroid/os/BatteryConsumer$Dimensions;->screenState:I

    iget v3, p1, Landroid/os/BatteryConsumer$Dimensions;->powerState:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerComponents;->getConsumedPower(IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getConsumedPower(Landroid/os/BatteryConsumer$Key;)D
    .locals 4

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v0

    return-wide v0

    :cond_0
    iget v0, p1, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v2, p1, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v3, p1, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerComponents;->getConsumedPower(IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getConsumedPowerForCustomComponent(I)D
    .locals 4

    add-int/lit16 v0, p1, -0x3e8

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomConsumedPowerColumn:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v1

    return-wide v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported custom power component ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getCustomPowerComponentName(I)Ljava/lang/String;
    .locals 5

    add-int/lit16 v0, p1, -0x3e8

    const-string v1, "Unsupported custom power component ID: "

    if-ltz v0, :cond_0

    iget-object v2, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v0, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentNames:[Ljava/lang/String;

    aget-object v1, v2, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method blacklist getPowerModel(Landroid/os/BatteryConsumer$Key;)I
    .locals 2

    iget v0, p1, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Power model IDs were not requested in the BatteryUsageStatsQuery"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getUsageDurationForCustomComponentMillis(I)J
    .locals 4

    add-int/lit16 v0, p1, -0x3e8

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v1, v1, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->firstCustomUsageDurationColumn:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v1

    return-wide v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported custom power component ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getUsageDurationMillis(IIII)J
    .locals 11

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->screenStateDataIncluded:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerStateDataIncluded:Z

    if-eqz v0, :cond_3

    if-eqz p4, :cond_3

    :cond_1
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v1

    return-wide v1

    :cond_2
    return-wide v1

    :cond_3
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->screenStateDataIncluded:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerStateDataIncluded:Z

    if-eqz v0, :cond_7

    :cond_4
    const-wide/16 v4, 0x0

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v6, v0

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_6

    aget-object v8, v0, v7

    iget v9, v8, Landroid/os/BatteryConsumer$Key;->processState:I

    if-eqz v9, :cond_5

    invoke-virtual {v8, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$Key;->matches(IIII)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v10, v8, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v9, v10}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v9

    add-long/2addr v4, v9

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    cmp-long v0, v4, v1

    if-eqz v0, :cond_7

    return-wide v4

    :cond_7
    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v0, v0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    invoke-virtual {v0, p1, p2, v3, v3}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v1

    return-wide v1

    :cond_8
    return-wide v1
.end method

.method public blacklist getUsageDurationMillis(Landroid/os/BatteryConsumer$Dimensions;)J
    .locals 4

    iget v0, p1, Landroid/os/BatteryConsumer$Dimensions;->powerComponent:I

    iget v1, p1, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    iget v2, p1, Landroid/os/BatteryConsumer$Dimensions;->screenState:I

    iget v3, p1, Landroid/os/BatteryConsumer$Dimensions;->powerState:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerComponents;->getUsageDurationMillis(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J
    .locals 4

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget v0, p1, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    iget v1, p1, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v2, p1, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v3, p1, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerComponents;->getUsageDurationMillis(IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist hasStatsProtoData()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/PowerComponents;->writeStatsProtoImpl(Landroid/util/proto/ProtoOutputStream;)Z

    move-result v0

    return v0
.end method

.method blacklist writeStatsProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/PowerComponents;->writeStatsProtoImpl(Landroid/util/proto/ProtoOutputStream;)Z

    return-void
.end method

.method blacklist writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const-string/jumbo v3, "power_components"

    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-object v4, v4, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    const-string v7, "duration"

    const-string/jumbo v8, "power"

    const-string v9, "id"

    const-wide/16 v12, 0x0

    if-ge v6, v5, :cond_8

    aget-object v14, v4, v6

    iget-object v15, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v2, v14, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    invoke-virtual {v15, v2}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget v15, v14, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    invoke-virtual {v2, v15}, Landroid/os/BatteryConsumer$BatteryConsumerData;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v21, v4

    move v15, v5

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0, v14}, Landroid/os/PowerComponents;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v10

    move-object v2, v4

    move v15, v5

    invoke-virtual {v0, v14}, Landroid/os/PowerComponents;->getUsageDurationMillis(Landroid/os/BatteryConsumer$Key;)J

    move-result-wide v4

    cmpl-double v19, v10, v12

    if-nez v19, :cond_1

    const-wide/16 v17, 0x0

    cmp-long v19, v4, v17

    if-nez v19, :cond_1

    move-object/from16 v21, v2

    goto :goto_2

    :cond_1
    const-string v12, "component"

    const/4 v13, 0x0

    invoke-interface {v1, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v21, v2

    iget v2, v14, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    invoke-interface {v1, v13, v9, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, v14, Landroid/os/BatteryConsumer$Key;->processState:I

    if-eqz v2, :cond_2

    const-string/jumbo v2, "process_state"

    iget v9, v14, Landroid/os/BatteryConsumer$Key;->processState:I

    invoke-interface {v1, v13, v2, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget v2, v14, Landroid/os/BatteryConsumer$Key;->screenState:I

    if-eqz v2, :cond_3

    const-string/jumbo v2, "screen_state"

    iget v9, v14, Landroid/os/BatteryConsumer$Key;->screenState:I

    invoke-interface {v1, v13, v2, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget v2, v14, Landroid/os/BatteryConsumer$Key;->powerState:I

    if-eqz v2, :cond_4

    const-string/jumbo v2, "power_state"

    iget v9, v14, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-interface {v1, v13, v2, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    const-wide/16 v19, 0x0

    cmpl-double v2, v10, v19

    if-eqz v2, :cond_5

    invoke-interface {v1, v13, v8, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-eqz v2, :cond_6

    invoke-interface {v1, v13, v7, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    iget-object v2, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget-boolean v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerModelsIncluded:Z

    if-eqz v2, :cond_7

    nop

    invoke-virtual {v0, v14}, Landroid/os/PowerComponents;->getPowerModel(Landroid/os/BatteryConsumer$Key;)I

    move-result v2

    const-string/jumbo v7, "model"

    const/4 v8, 0x0

    invoke-interface {v1, v8, v7, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_7
    const/4 v8, 0x0

    :goto_1
    invoke-interface {v1, v8, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v5, v15

    move-object/from16 v4, v21

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    iget-object v2, v0, Landroid/os/PowerComponents;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    iget v2, v2, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    add-int/lit16 v2, v2, 0x3e8

    const/16 v4, 0x3e8

    :goto_3
    if-ge v4, v2, :cond_c

    invoke-virtual {v0, v4}, Landroid/os/PowerComponents;->getConsumedPowerForCustomComponent(I)D

    move-result-wide v5

    invoke-virtual {v0, v4}, Landroid/os/PowerComponents;->getUsageDurationForCustomComponentMillis(I)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v14, v5, v12

    if-nez v14, :cond_9

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-nez v14, :cond_9

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    goto :goto_4

    :cond_9
    const-string v12, "custom_component"

    const/4 v13, 0x0

    invoke-interface {v1, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v13, v9, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-wide/16 v14, 0x0

    cmpl-double v16, v5, v14

    if-eqz v16, :cond_a

    invoke-interface {v1, v13, v8, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    const-wide/16 v16, 0x0

    cmp-long v18, v10, v16

    if-eqz v18, :cond_b

    invoke-interface {v1, v13, v7, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    invoke-interface {v1, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    const/4 v13, 0x0

    invoke-interface {v1, v13, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
