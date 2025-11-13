.class public final Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Rnr;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAffiliatedMloLinks:Ljava/util/List;

.field public final mPresent:Z


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Rnr;->mPresent:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Rnr;->mAffiliatedMloLinks:Ljava/util/List;

    move v3, v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    add-int/lit8 v5, v3, 0x4

    const/4 v6, 0x1

    if-le v4, v5, :cond_a

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xf0

    const/4 v7, 0x4

    shr-int/2addr v4, v7

    add-int/2addr v4, v6

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-eq v8, v7, :cond_0

    const/16 v9, 0x10

    if-lt v8, v9, :cond_9

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    mul-int v10, v8, v4

    add-int/2addr v10, v5

    const-string v11, "NearbyWifi.Rnr"

    const-string v12, "/"

    if-ge v9, v10, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid RNR len, not enough for TBTT Info: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1
    const/4 v9, -0x1

    if-ne v8, v7, :cond_2

    move v10, v6

    move v13, v9

    goto :goto_1

    :cond_2
    const/16 v10, 0xd

    move v13, v6

    :goto_1
    add-int/lit8 v14, v3, 0x2

    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v15, v3, 0x3

    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    const/16 v2, 0x51

    if-lt v14, v2, :cond_3

    const/16 v2, 0x54

    if-gt v14, v2, :cond_3

    if-lt v15, v6, :cond_5

    const/16 v2, 0xe

    if-gt v15, v2, :cond_5

    goto :goto_2

    :cond_3
    const/16 v2, 0x73

    if-lt v14, v2, :cond_4

    const/16 v2, 0x82

    if-gt v14, v2, :cond_4

    const/16 v2, 0x20

    if-lt v15, v2, :cond_5

    const/16 v2, 0xb1

    if-gt v15, v2, :cond_5

    const/4 v6, 0x2

    goto :goto_2

    :cond_4
    const/16 v2, 0x83

    if-lt v14, v2, :cond_5

    const/16 v2, 0x89

    if-gt v14, v2, :cond_5

    if-lt v15, v6, :cond_5

    const/16 v2, 0xe9

    if-gt v15, v2, :cond_5

    const/16 v6, 0x8

    goto :goto_2

    :cond_5
    move v6, v9

    :goto_2
    if-ne v6, v9, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid op class/channel in RNR TBTT Info: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_9

    add-int v11, v5, v10

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    if-nez v12, :cond_8

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    and-int/lit8 v11, v11, 0xf

    new-instance v12, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MloLink;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput v11, v12, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MloLink;->linkId:I

    invoke-static {v15, v6}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    move-result v11

    iput v11, v12, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MloLink;->freq:I

    if-eq v13, v9, :cond_7

    add-int v11, v5, v13

    invoke-static {v11, v1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Repository;->getMacAddressString(ILjava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v12, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/MloLink;->bssid:Ljava/lang/String;

    :cond_7
    iget-object v11, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Rnr;->mAffiliatedMloLinks:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/2addr v5, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    mul-int/2addr v4, v8

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    iput-boolean v6, v0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/Rnr;->mPresent:Z

    :goto_4
    return-void
.end method
