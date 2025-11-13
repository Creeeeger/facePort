.class public final Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final list:Ljava/util/List;

.field public final synthetic this$0:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

.field public final version:Lcom/google/zxing/qrcode/decoder/Version;


# direct methods
.method public constructor <init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iput-object v7, v6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->this$0:Lcom/google/zxing/qrcode/encoder/MinimalEncoder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    const/4 v9, 0x0

    move-object/from16 v10, p3

    move v0, v9

    move v1, v0

    :goto_0
    const/4 v11, 0x1

    if-eqz v10, :cond_7

    iget v2, v10, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->characterLength:I

    add-int v5, v0, v2

    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    iget v4, v10, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I

    iget-object v12, v10, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    iget-object v2, v10, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v2, v0, :cond_0

    if-nez v12, :cond_0

    if-nez v4, :cond_1

    :cond_0
    if-eqz v12, :cond_2

    iget v0, v12, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I

    if-eq v4, v0, :cond_2

    :cond_1
    move v13, v11

    goto :goto_1

    :cond_2
    move v13, v9

    :goto_1
    if-eqz v13, :cond_3

    goto :goto_2

    :cond_3
    move v11, v1

    :goto_2
    if-eqz v12, :cond_5

    iget-object v0, v12, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v0, v2, :cond_5

    if-eqz v13, :cond_4

    goto :goto_3

    :cond_4
    move v14, v5

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v14, v6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    new-instance v15, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    iget v3, v10, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->fromPosition:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;Lcom/google/zxing/qrcode/decoder/Mode;III)V

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v9, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v14, v9

    :goto_4
    if-eqz v13, :cond_6

    iget-object v13, v6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    new-instance v15, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    iget v3, v10, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->fromPosition:I

    iget v4, v10, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I

    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;Lcom/google/zxing/qrcode/decoder/Mode;III)V

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v9, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_6
    move v1, v11

    move-object v10, v12

    move v0, v14

    goto :goto_0

    :cond_7
    iget-boolean v0, v7, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->isGS1:Z

    if-eqz v0, :cond_a

    iget-object v0, v6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    if-eqz v0, :cond_8

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    iget-object v0, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq v0, v2, :cond_8

    if-eqz v1, :cond_8

    iget-object v10, v6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    new-instance v12, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;Lcom/google/zxing/qrcode/decoder/Mode;III)V

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v9, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_8
    iget-object v0, v6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    iget-object v10, v6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    iget-object v0, v0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq v0, v1, :cond_9

    goto :goto_5

    :cond_9
    move v9, v11

    :goto_5
    new-instance v12, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;-><init>(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;Lcom/google/zxing/qrcode/decoder/Mode;III)V

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v9, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_a
    iget v0, v8, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    const/16 v1, 0x1a

    const/16 v2, 0x9

    if-gt v0, v2, :cond_b

    sget-object v3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->SMALL:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    goto :goto_6

    :cond_b
    if-gt v0, v1, :cond_c

    sget-object v3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->MEDIUM:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    goto :goto_6

    :cond_c
    sget-object v3, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;->LARGE:Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;

    :goto_6
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_e

    if-eq v3, v11, :cond_d

    const/16 v11, 0x1b

    const/16 v1, 0x28

    goto :goto_7

    :cond_d
    const/16 v11, 0xa

    goto :goto_7

    :cond_e
    move v1, v2

    :goto_7
    invoke-virtual {v6, v8}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->getSize(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v2

    :goto_8
    iget-object v3, v7, Lcom/google/zxing/qrcode/encoder/MinimalEncoder;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-ge v0, v1, :cond_f

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v4

    if-nez v4, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    if-le v0, v11, :cond_10

    add-int/lit8 v1, v0, -0x1

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->willFit(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v1

    if-eqz v1, :cond_10

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_10
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    iput-object v0, v6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->version:Lcom/google/zxing/qrcode/decoder/Version;

    return-void
.end method


# virtual methods
.method public final getSize(Lcom/google/zxing/qrcode/decoder/Version;)I
    .locals 11

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    iget-object v3, v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v3, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v4

    add-int/lit8 v5, v4, 0x4

    sget-object v6, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v6, v3

    iget v6, v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->characterLength:I

    const/4 v7, 0x1

    if-eq v3, v7, :cond_7

    const/4 v8, 0x2

    if-eq v3, v8, :cond_5

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-eq v3, v9, :cond_2

    if-eq v3, v10, :cond_1

    const/4 v2, 0x5

    if-eq v3, v2, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v5, v4, 0xc

    goto :goto_3

    :cond_1
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->getCharacterCountIndicator()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v5, v2

    goto :goto_3

    :cond_2
    div-int/lit8 v2, v6, 0x3

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    rem-int/lit8 v6, v6, 0x3

    if-ne v6, v7, :cond_3

    goto :goto_1

    :cond_3
    if-ne v6, v8, :cond_4

    const/4 v10, 0x7

    goto :goto_1

    :cond_4
    move v10, v0

    :goto_1
    add-int v5, v2, v10

    goto :goto_3

    :cond_5
    div-int/lit8 v2, v6, 0x2

    mul-int/lit8 v2, v2, 0xb

    add-int/2addr v2, v5

    rem-int/lit8 v6, v6, 0x2

    if-ne v6, v7, :cond_6

    const/4 v3, 0x6

    goto :goto_2

    :cond_6
    move v3, v0

    :goto_2
    add-int v5, v2, v3

    goto :goto_3

    :cond_7
    mul-int/lit8 v6, v6, 0xd

    add-int/2addr v5, v6

    :goto_3
    add-int/2addr v1, v5

    goto :goto_0

    :cond_8
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList;->list:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;

    if-eqz v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$ResultList$ResultNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
