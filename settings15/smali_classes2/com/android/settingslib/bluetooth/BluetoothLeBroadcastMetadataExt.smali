.class public abstract Lcom/android/settingslib/bluetooth/BluetoothLeBroadcastMetadataExt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static convertToBroadcastMetadata(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .locals 6

    const-string v0, "Stripped to: "

    const-string v1, "Parsing QR string: "

    const-string v2, "qrCodeString"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "BLUETOOTH:UUID:184F;"

    invoke-static {p0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "BtLeBroadcastMetadataExt"

    if-nez v3, :cond_0

    const-string v0, "String \""

    const-string v1, "\" does not begin with \"BLUETOOTH:UUID:184F;\""

    invoke-static {v0, p0, v1, v5}, Landroidx/compose/ui/text/SaversKt$LocaleSaver$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_0
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2}, Lkotlin/text/StringsKt___StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";;"

    invoke-static {v1, v2}, Lkotlin/text/StringsKt___StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/BluetoothLeBroadcastMetadataExt;->parseQrCodeToMetadata(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Cannot parse: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v4
.end method

.method public static parseQrCodeToMetadata(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .locals 32

    move-object/from16 v0, p0

    const-string v1, ";"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lkotlin/text/StringsKt___StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, ":"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5, v5}, Lkotlin/text/StringsKt___StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    invoke-direct {v7}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const v11, 0xffff

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v20, -0x1

    const/16 v21, -0x1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v8, v22

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v22, v3

    move-object/from16 v24, v7

    :goto_2
    move-object/from16 v8, v18

    move/from16 v25, v20

    move/from16 v7, v21

    move-object/from16 v21, v6

    goto/16 :goto_e

    :cond_1
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v2, v22

    check-cast v2, Ljava/lang/String;

    move-object/from16 v22, v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    const-string v23, ""

    move-object/from16 v24, v7

    const/4 v7, 0x1

    if-le v3, v7, :cond_2

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    :cond_2
    move-object/from16 v3, v23

    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x10

    sparse-switch v7, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v7, "SQ"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_4
    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    if-ne v5, v2, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :goto_5
    move-object/from16 v3, v22

    move-object/from16 v7, v24

    :goto_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const-string v1, "Duplicate audioConfigQualityStandard: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_1
    const-string v7, "SM"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x2

    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_2
    const-string v7, "PI"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, -0x1

    if-ne v9, v2, :cond_7

    invoke-static {v8}, Lkotlin/text/CharsKt;->checkRadix(I)V

    invoke-static {v3, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    goto :goto_5

    :cond_7
    const-string v1, "Duplicate paSyncInterval: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_3
    const-string v7, "NS"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    move/from16 v7, v21

    const/4 v2, -0x1

    if-ne v7, v2, :cond_9

    invoke-static {v8}, Lkotlin/text/CharsKt;->checkRadix(I)V

    invoke-static {v3, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v21

    goto :goto_5

    :cond_9
    const-string v1, "Duplicate numSubgroups: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_4
    move/from16 v7, v21

    const-string v8, "NB"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :goto_7
    move-object/from16 v21, v6

    move-object/from16 v8, v18

    move/from16 v25, v20

    goto/16 :goto_e

    :cond_a
    invoke-static {v3}, Lkotlin/text/UStringsKt;->toUInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lkotlin/UInt;

    invoke-direct {v3, v2}, Lkotlin/UInt;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :sswitch_5
    move/from16 v7, v21

    const-string v8, "MD"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_7

    :cond_b
    if-nez v10, :cond_c

    const/4 v2, 0x2

    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->fromRawBytes([B)Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v10

    :goto_8
    move/from16 v21, v7

    goto/16 :goto_5

    :cond_c
    const-string v1, "Duplicate streamMetadata "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_6
    move/from16 v7, v21

    const-string v8, "HQ"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v8, v20

    const/4 v2, -0x1

    if-ne v8, v2, :cond_e

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    goto :goto_8

    :cond_e
    const-string v1, "Duplicate audioConfigQualityHigh: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_7
    move/from16 v7, v21

    const-string v8, "BS"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_7

    :cond_f
    invoke-static {v3}, Lkotlin/text/UStringsKt;->toUInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lkotlin/UInt;

    invoke-direct {v3, v2}, Lkotlin/UInt;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :sswitch_8
    move/from16 v7, v21

    const-string v8, "BN"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_7

    :cond_10
    if-nez v15, :cond_11

    const/4 v2, 0x2

    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    const-string v2, "decode(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Ljava/lang/String;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_8

    :cond_11
    const-string v1, "Duplicate broadcastName: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_9
    move/from16 v25, v20

    move/from16 v7, v21

    const-string v8, "BI"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :goto_9
    move-object/from16 v21, v6

    move-object/from16 v8, v18

    goto/16 :goto_e

    :cond_12
    const/4 v2, -0x1

    if-ne v14, v2, :cond_13

    const/16 v2, 0x10

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)V

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    move/from16 v21, v7

    move-object/from16 v3, v22

    move-object/from16 v7, v24

    move/from16 v20, v25

    goto/16 :goto_6

    :cond_13
    const-string v1, "Duplicate broadcastId: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_a
    move/from16 v25, v20

    move/from16 v7, v21

    const-string v8, "BC"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_9

    :cond_14
    move-object/from16 v8, v18

    if-nez v8, :cond_17

    invoke-static {v3}, Lkotlin/text/StringsKt___StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v2

    :goto_a
    const/4 v8, -0x1

    if-ge v8, v2, :cond_16

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    move-object/from16 v21, v6

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v18

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "substring(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    :cond_15
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v6, v21

    goto :goto_a

    :cond_16
    move-object/from16 v21, v6

    move-object/from16 v2, v23

    :goto_b
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v3, "getBytes(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-static {v2, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v18

    :goto_c
    move-object/from16 v6, v21

    move-object/from16 v3, v22

    move/from16 v20, v25

    const/4 v2, 0x0

    move/from16 v21, v7

    move-object/from16 v7, v24

    goto/16 :goto_1

    :cond_17
    const-string v1, "Duplicate broadcastCode: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_b
    move-object/from16 v8, v18

    move/from16 v25, v20

    move/from16 v7, v21

    move-object/from16 v21, v6

    const-string v6, "AT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_e

    :cond_18
    const v2, 0xffff

    if-ne v11, v2, :cond_19

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :goto_d
    move-object/from16 v18, v8

    goto :goto_c

    :cond_19
    const-string v1, "Duplicate sourceAddrType: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_c
    move-object/from16 v8, v18

    move/from16 v25, v20

    move/from16 v7, v21

    move-object/from16 v21, v6

    const-string v6, "AS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_e

    :cond_1a
    const/4 v2, -0x1

    if-ne v13, v2, :cond_1b

    const/16 v2, 0x10

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)V

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    goto :goto_d

    :cond_1b
    const-string v1, "Duplicate sourceAdvertiserSid: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_d
    move-object/from16 v8, v18

    move/from16 v25, v20

    move/from16 v7, v21

    move-object/from16 v21, v6

    const-string v6, "AD"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :goto_e
    goto :goto_d

    :cond_1c
    if-nez v12, :cond_1d

    invoke-static {v3}, Lkotlin/text/StringsKt___StringsKt;->chunked(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v26

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-string v27, ":"

    const/16 v28, 0x0

    const/16 v31, 0x3e

    invoke-static/range {v26 .. v31}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_d

    :cond_1d
    const-string v1, "Duplicate sourceAddr: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    move-object/from16 v24, v7

    move-object/from16 v8, v18

    move/from16 v25, v20

    move/from16 v7, v21

    move-object/from16 v21, v6

    if-eqz v10, :cond_1f

    const/4 v0, 0x1

    goto :goto_f

    :cond_1f
    const/4 v0, 0x0

    :goto_f
    if-eqz v8, :cond_20

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v8, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_10

    :cond_20
    const/4 v2, 0x0

    :goto_10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "parseQrCodeToMetadata: main data elements sourceAddrType="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", sourceAddr="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", sourceAdvertiserSid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", broadcastId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", broadcastName="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", streamMetadata="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", paSyncInterval="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", broadcastCode="

    const-string v6, ", audioConfigQualityStandard="

    invoke-static {v3, v9, v0, v2, v6}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", audioConfigQualityHigh="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BtLeBroadcastMetadataExt"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v15, :cond_31

    if-eqz v12, :cond_22

    const v6, 0xffff

    if-eq v11, v6, :cond_21

    goto :goto_11

    :cond_21
    const-string v0, "sourceAddrType("

    const-string v1, ") must present if address present"

    invoke-static {v11, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    const-string v12, "FF:FF:FF:FF:FF:FF"

    const/4 v11, 0x1

    :goto_11
    invoke-virtual {v2, v12, v11}, Landroid/bluetooth/BluetoothAdapter;->getRemoteLeDevice(Ljava/lang/String;I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const-string v6, "getRemoteLeDevice(...)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, -0x1

    if-eq v5, v6, :cond_23

    goto :goto_12

    :cond_23
    const/4 v5, 0x0

    :goto_12
    if-eq v0, v6, :cond_24

    move/from16 v20, v0

    goto :goto_13

    :cond_24
    const/16 v20, 0x0

    :goto_13
    or-int v0, v5, v20

    if-lez v7, :cond_25

    goto :goto_14

    :cond_25
    const/4 v7, 0x1

    :goto_14
    const/4 v5, 0x0

    :goto_15
    const-string v6, "build(...)"

    if-ge v5, v7, :cond_2f

    invoke-static {v5, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlin/UInt;

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    check-cast v1, Lkotlin/UInt;

    move-object/from16 v16, v4

    move-object/from16 v4, v21

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    new-instance v4, Ljava/lang/StringBuilder;

    move/from16 v19, v7

    const-string v7, "convertToChannels: bisSync="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", bisNum="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_26

    if-eqz v1, :cond_26

    iget v4, v12, Lkotlin/UInt;->data:I

    move/from16 p0, v0

    goto :goto_16

    :cond_26
    move/from16 p0, v0

    const/4 v4, 0x0

    :goto_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v8

    new-instance v8, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;

    invoke-direct {v8}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;-><init>()V

    move/from16 v23, v9

    move-object/from16 v22, v10

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->setAudioLocation(J)Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v12, :cond_27

    const/4 v10, -0x1

    goto :goto_17

    :cond_27
    iget v9, v12, Lkotlin/UInt;->data:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_28

    goto :goto_18

    :cond_28
    :goto_17
    if-nez v4, :cond_29

    :goto_18
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->setSelected(Z)Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->setChannelIndex(I)Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;

    invoke-virtual {v0, v8}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->setCodecMetadata(Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastChannel;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v27, v15

    goto :goto_1a

    :cond_29
    const/4 v9, 0x1

    move-object/from16 v27, v15

    const/4 v10, 0x0

    :goto_19
    const/16 v15, 0x20

    if-ge v10, v15, :cond_2b

    shl-int v15, v9, v10

    and-int/2addr v15, v4

    if-eqz v15, :cond_2a

    new-instance v15, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;

    invoke-direct {v15}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;-><init>()V

    invoke-virtual {v15, v9}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->setSelected(Z)Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;

    add-int/lit8 v9, v10, 0x1

    invoke-virtual {v15, v9}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->setChannelIndex(I)Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;

    invoke-virtual {v15, v8}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->setCodecMetadata(Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastChannel;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x1

    goto :goto_19

    :cond_2b
    :goto_1a
    new-instance v4, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;

    invoke-direct {v4}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;-><init>()V

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->setAudioLocation(J)Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;

    invoke-direct {v8}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;-><init>()V

    const-wide/16 v9, 0x6

    invoke-virtual {v8, v9, v10}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->setCodecId(J)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;

    invoke-virtual {v8, v4}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->setCodecSpecificConfig(Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;

    if-nez v18, :cond_2c

    const/4 v4, 0x0

    new-array v9, v4, [B

    goto :goto_1b

    :cond_2c
    move-object/from16 v9, v18

    :goto_1b
    invoke-static {v9}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->fromRawBytes([B)Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->setContentMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothLeBroadcastChannel;

    invoke-virtual {v8, v4}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->addChannel(Landroid/bluetooth/BluetoothLeBroadcastChannel;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;

    goto :goto_1c

    :cond_2d
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v18, :cond_2e

    const/4 v4, 0x1

    goto :goto_1d

    :cond_2e
    const/4 v4, 0x0

    :goto_1d
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "parseQrCodeToMetadata: subgroup "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " elements bisSync="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, v24

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->addSubgroup(Landroid/bluetooth/BluetoothLeBroadcastSubgroup;)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, p0

    move-object/from16 v4, v16

    move-object/from16 v1, v17

    move/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v10, v22

    move/from16 v9, v23

    move-object/from16 v15, v27

    goto/16 :goto_15

    :cond_2f
    move/from16 p0, v0

    move-object/from16 v20, v8

    move/from16 v23, v9

    move-object/from16 v22, v10

    move-object/from16 v27, v15

    move-object/from16 v1, v24

    invoke-virtual {v1, v2, v11}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setSourceDevice(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    invoke-virtual {v1, v13}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setSourceAdvertisingSid(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    invoke-virtual {v1, v14}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setBroadcastId(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    invoke-virtual {v1, v15}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setBroadcastName(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setPublicBroadcast(Z)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    invoke-virtual {v1, v10}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setPublicBroadcastMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    invoke-virtual {v1, v9}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setPaSyncInterval(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    if-eqz v20, :cond_30

    move v8, v0

    goto :goto_1e

    :cond_30
    const/4 v8, 0x0

    :goto_1e
    invoke-virtual {v1, v8}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setEncrypted(Z)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    move-object/from16 v8, v20

    invoke-virtual {v1, v8}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setBroadcastCode([B)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setPresentationDelayMicros(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    move/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setAudioConfigQuality(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "broadcastName("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") must present in QR code string"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x823 -> :sswitch_d
        0x832 -> :sswitch_c
        0x833 -> :sswitch_b
        0x841 -> :sswitch_a
        0x847 -> :sswitch_9
        0x84c -> :sswitch_8
        0x851 -> :sswitch_7
        0x909 -> :sswitch_6
        0x997 -> :sswitch_5
        0x9b4 -> :sswitch_4
        0x9c5 -> :sswitch_3
        0x9f9 -> :sswitch_2
        0xa5a -> :sswitch_1
        0xa5e -> :sswitch_0
    .end sparse-switch
.end method

.method public static toQrCodeString(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)Ljava/lang/String;
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Lkotlin/Pair;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v4, "getBytes(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v5, "BN"

    invoke-direct {v1, v5, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lkotlin/Pair;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceAddressType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AT"

    invoke-direct {v1, v5, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lkotlin/Pair;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const-string v5, "getAddress(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, ""

    const-string v6, ":"

    invoke-static {v2, v6, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "AD"

    invoke-direct {v1, v5, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lkotlin/Pair;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v2

    int-to-long v7, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v7, "%X"

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "BI"

    invoke-direct {v1, v8, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastCode()[B

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lkotlin/Pair;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastCode()[B

    move-result-object v2

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v8, "BC"

    invoke-direct {v1, v8, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPublicBroadcastMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPublicBroadcastMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getRawMetadata()[B

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v1, v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lkotlin/Pair;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPublicBroadcastMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getRawMetadata()[B

    move-result-object v3

    :cond_3
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MD"

    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getAudioConfigQuality()I

    move-result v1

    and-int/2addr v1, v5

    const-string v2, "1"

    if-eqz v1, :cond_5

    new-instance v1, Lkotlin/Pair;

    const-string v3, "SQ"

    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getAudioConfigQuality()I

    move-result v1

    and-int/2addr v1, v4

    if-eqz v1, :cond_6

    new-instance v1, Lkotlin/Pair;

    const-string v3, "HQ"

    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v1, Lkotlin/Pair;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSourceAdvertisingSid()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS"

    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lkotlin/Pair;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getPaSyncInterval()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PI"

    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lkotlin/Pair;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSubgroups()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NS"

    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getSubgroups()Ljava/util/List;

    move-result-object p0

    const-string v1, "getSubgroups(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getChannels()Ljava/util/List;

    move-result-object v2

    const-string v3, "getChannels(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v8, v3

    move v9, v8

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothLeBroadcastChannel;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->getChannelIndex()I

    move-result v11

    if-lez v11, :cond_8

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->isSelected()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->getChannelIndex()I

    move-result v10

    sub-int/2addr v10, v5

    shl-int v10, v5, v10

    or-int/2addr v8, v10

    goto :goto_3

    :cond_9
    if-nez v8, :cond_a

    new-instance v2, Lkotlin/Pair;

    new-instance v8, Lkotlin/UInt;

    const/4 v10, -0x1

    invoke-direct {v8, v10}, Lkotlin/UInt;-><init>(I)V

    new-instance v10, Lkotlin/UInt;

    invoke-direct {v10, v9}, Lkotlin/UInt;-><init>(I)V

    invoke-direct {v2, v8, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_a
    new-instance v2, Lkotlin/Pair;

    new-instance v10, Lkotlin/UInt;

    invoke-direct {v10, v8}, Lkotlin/UInt;-><init>(I)V

    new-instance v8, Lkotlin/UInt;

    invoke-direct {v8, v9}, Lkotlin/UInt;-><init>(I)V

    invoke-direct {v2, v10, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/UInt;

    iget v8, v8, Lkotlin/UInt;->data:I

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/UInt;

    iget v2, v2, Lkotlin/UInt;->data:I

    new-instance v9, Lkotlin/Pair;

    int-to-long v10, v8

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "BS"

    invoke-direct {v9, v10, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v3}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v3

    if-lez v3, :cond_b

    new-instance v3, Lkotlin/Pair;

    int-to-long v8, v2

    and-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "NB"

    invoke-direct {v3, v8, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getRawMetadata()[B

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_7

    new-instance v2, Lkotlin/Pair;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getRawMetadata()[B

    move-result-object v1

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SM"

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_c
    new-instance v8, Ljava/util/ArrayList;

    const/16 p0, 0xa

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p0

    invoke-direct {v8, p0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    const/4 v11, 0x0

    const/16 v13, 0x3e

    const-string v9, ";"

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BLUETOOTH:UUID:184F;"

    const-string v1, ";;"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Generated QR string : "

    const-string v1, "BtLeBroadcastMetadataExt"

    invoke-static {v0, p0, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Broadcast name is mandatory for QR code"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
