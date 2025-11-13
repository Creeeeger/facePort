.class public final Lcom/google/zxing/MultiFormatWriter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/zxing/Writer;


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 6

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "No encoder available for format "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Lcom/google/zxing/oned/UPCEWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :goto_0
    move-object v0, p0

    goto :goto_1

    :pswitch_2
    new-instance p0, Lcom/google/zxing/oned/UPCAWriter;

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCAWriter;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance p0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance p0, Lcom/google/zxing/pdf417/PDF417Writer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance p0, Lcom/google/zxing/oned/ITFWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance p0, Lcom/google/zxing/oned/EAN13Writer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance p0, Lcom/google/zxing/oned/EAN8Writer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance p0, Lcom/google/zxing/datamatrix/DataMatrixWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance p0, Lcom/google/zxing/oned/Code128Writer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :pswitch_a
    new-instance p0, Lcom/google/zxing/oned/Code93Writer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :pswitch_b
    new-instance p0, Lcom/google/zxing/oned/Code39Writer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :pswitch_c
    new-instance p0, Lcom/google/zxing/oned/CodaBarWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :pswitch_d
    new-instance p0, Lcom/google/zxing/aztec/AztecWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :goto_1
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/zxing/Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
