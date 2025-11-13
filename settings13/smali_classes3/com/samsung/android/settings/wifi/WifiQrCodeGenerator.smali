.class public Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;
.super Ljava/lang/Object;
.source "WifiQrCodeGenerator.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private drawAnchor(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v4, v0

    mul-double/2addr v4, v2

    .line 152
    invoke-virtual {p3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v4, v2

    double-to-float v2, v4

    .line 153
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->getAnchorWidth(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v2

    float-to-int p3, p3

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, p3

    mul-float/2addr v2, v3

    .line 154
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 156
    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 157
    new-instance v7, Landroid/graphics/RectF;

    sub-int v8, v0, p3

    int-to-float v8, v8

    int-to-float v0, v0

    invoke-direct {v7, v8, v6, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 158
    new-instance v0, Landroid/graphics/RectF;

    sub-int p3, v1, p3

    int-to-float p3, p3

    int-to-float v1, v1

    invoke-direct {v0, v6, p3, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 159
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 160
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 161
    invoke-virtual {v1, v7, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 162
    invoke-virtual {v1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 163
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->getScaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p1, 0x0

    .line 164
    invoke-virtual {v1, p0, v6, v6, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 165
    invoke-virtual {v1, p0, v8, v6, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 166
    invoke-virtual {v1, p0, v6, p3, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 167
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 168
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private drawLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 175
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    .line 178
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->wifi_ap_qr_code_logo_radius:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 179
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->wifi_ap_qr_code_logo_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 180
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    .line 182
    new-instance p1, Landroid/graphics/RectF;

    sub-int v7, v3, v5

    int-to-float v7, v7

    sub-int v8, v2, v5

    int-to-float v8, v8

    add-int/2addr v0, v3

    add-int/2addr v0, v5

    int-to-float v0, v0

    add-int/2addr v1, v2

    add-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {p1, v7, v8, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v0, v4

    .line 184
    invoke-virtual {v6, p1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    int-to-float p0, v3

    int-to-float p1, v2

    const/4 v0, 0x0

    .line 185
    invoke-virtual {v6, p2, p0, p1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 186
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private drawQrImage(Landroid/graphics/Bitmap;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 8

    .line 109
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    const/high16 v1, -0x1000000

    .line 111
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v1, v3

    .line 113
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result p1

    int-to-double v3, p1

    div-double/2addr v1, v3

    double-to-float p1, v1

    float-to-double v1, p1

    const-wide v3, 0x3fd872b020c49ba6L    # 0.382

    mul-double/2addr v3, v1

    double-to-float v3, v3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v4

    double-to-float v1, v1

    const/4 v2, 0x0

    move v4, v2

    .line 116
    :goto_0
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_2

    move v5, v2

    .line 117
    :goto_1
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 118
    invoke-virtual {p2, v5, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    int-to-float v6, v5

    mul-float/2addr v6, p1

    add-float/2addr v6, v1

    int-to-float v7, v4

    mul-float/2addr v7, p1

    add-float/2addr v7, v1

    .line 121
    invoke-virtual {v0, v6, v7, v3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private escapeSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    .line 248
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 249
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 250
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_1

    const/16 v3, 0x2c

    if-eq v1, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v1, v3, :cond_1

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_2

    .line 252
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAnchorWidth(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 4

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    .line 129
    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 130
    invoke-virtual {p1, v0, p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private getPaint()Landroid/graphics/Paint;
    .locals 2

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 102
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->wifi_ap_qrcode_background_color:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method private getScaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 140
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 141
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 142
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getSecurityString(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;
    .locals 2

    .line 261
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    const/4 v0, 0x1

    const-string v1, "WPA"

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "nopass"

    return-object p0

    :cond_0
    const-string p0, "SAE"

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static getSecurityString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 3

    .line 277
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SAE"

    return-object p0

    .line 280
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const-string v1, "nopass"

    if-eqz v0, :cond_1

    return-object v1

    .line 283
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    .line 284
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 287
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "WAPI"

    return-object p0

    .line 290
    :cond_3
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const-string v1, "WEP"

    :goto_0
    return-object v1

    :cond_5
    :goto_1
    const-string p0, "WPA"

    return-object p0
.end method


# virtual methods
.method public createBitmapFromResource(I)Landroid/graphics/Bitmap;
    .locals 4

    .line 91
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 93
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 92
    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 94
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method public createQrcodeImage(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 74
    :try_start_0
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 75
    sget-object v2, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v3, "utf-8"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-static {p1, v2, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/QRCode;->getMatrix()Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    move-result-object p1

    .line 78
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->wifi_ap_qr_code_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 79
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->drawQrImage(Landroid/graphics/Bitmap;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 81
    invoke-direct {p0, v0, p3, p1}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->drawAnchor(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 82
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->drawLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "WifiQrCodeGenerator"

    const-string p2, "Exception in encoding QR code"

    .line 84
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public createQrcodeImage(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p2, :cond_0

    .line 63
    sget p2, Lcom/android/settings/R$drawable;->sec_qr_code_wifi:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->createBitmapFromResource(I)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 65
    :cond_0
    sget p2, Lcom/android/settings/R$drawable;->sec_qr_code_mobile_hotspot:I

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->createBitmapFromResource(I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 67
    :goto_0
    sget v0, Lcom/android/settings/R$drawable;->sec_qr_code_anchor:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->createBitmapFromResource(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->createQrcodeImage(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getQrCodeString(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 219
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->getSecurityString(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WIFI:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "S:"

    .line 223
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->escapeSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    .line 225
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "T:"

    .line 226
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_1

    move-object v0, v5

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "P:"

    .line 229
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 231
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->escapeSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 230
    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "H:"

    .line 233
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ";;"

    .line 235
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQrCodeString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 194
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->getSecurityString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    const-string p0, "WEP"

    .line 195
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 198
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    .line 199
    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    .line 196
    invoke-static/range {v0 .. v5}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p0

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 206
    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    .line 203
    invoke-static/range {v0 .. v5}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p0

    .line 210
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getQrCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
