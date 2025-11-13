.class public final Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static escapeSpecialCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_1

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_1

    const/16 v4, 0x3b

    if-eq v2, v4, :cond_1

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_2

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getQrCodeString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const-string v1, "WEP"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "SAE"

    :goto_0
    move-object v3, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const-string v3, "nopass"

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "WAPI"

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-nez v0, :cond_5

    move-object v0, v3

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    :goto_1
    const-string v0, "WPA"

    goto :goto_0

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget v7, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p0

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget v7, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p0

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getQrCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createBitmapFromResource(I)Landroid/graphics/Bitmap;
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method public final createQrcodeImage(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 12

    if-eqz p2, :cond_0

    const p2, 0x7f0809ff

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->createBitmapFromResource(I)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    :cond_0
    const p2, 0x7f0809fe

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->createBitmapFromResource(I)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_0
    const v0, 0x7f0809fb

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->createBitmapFromResource(I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string/jumbo v4, "utf-8"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-static {p1, v3, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object p1

    iget-object p1, p1, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07144c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    int-to-double v7, v4

    mul-double/2addr v7, v5

    iget v4, p1, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    int-to-double v4, v4

    div-double/2addr v7, v4

    double-to-float v4, v7

    float-to-double v5, v4

    const-wide v7, 0x3fd872b020c49ba6L    # 0.382

    mul-double/2addr v7, v5

    double-to-float v7, v7

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v8

    double-to-float v5, v5

    const/4 v6, 0x0

    move v8, v6

    :goto_1
    iget v9, p1, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    if-ge v8, v9, :cond_3

    move v9, v6

    :goto_2
    iget v10, p1, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    if-ge v9, v10, :cond_2

    invoke-virtual {p1, v9, v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    int-to-float v10, v9

    mul-float/2addr v10, v4

    add-float/2addr v10, v5

    int-to-float v11, v8

    mul-float/2addr v11, v4

    add-float/2addr v11, v5

    invoke-virtual {v2, v10, v11, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1, v0, p1}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->drawAnchor(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->drawLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string p1, "WifiQrCodeGenerator"

    const-string p2, "Exception in encoding QR code"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object v1
.end method

.method public final drawAnchor(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 12

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    int-to-double v5, v1

    mul-double/2addr v5, v3

    iget v3, p3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    int-to-double v3, v3

    div-double/2addr v5, v3

    double-to-float v3, v5

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    iget v7, p3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    if-ge v5, v7, :cond_1

    invoke-virtual {p3, v5, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    int-to-float v0, v6

    mul-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    new-instance v6, Landroid/graphics/RectF;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v8, Landroid/graphics/RectF;

    sub-int v9, v1, v0

    int-to-float v9, v9

    int-to-float v1, v1

    invoke-direct {v8, v9, v7, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/RectF;

    sub-int v0, v2, v0

    int-to-float v10, v0

    int-to-float v0, v2

    invoke-direct {v1, v7, v10, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v6, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v11, v8, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v11, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v11, v0, v9, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v11, v0, v7, v10, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public final drawLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07144a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v4

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-virtual {v1, v4, p1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float p0, v3

    int-to-float p1, v2

    const/4 v0, 0x0

    invoke-virtual {v1, p2, p0, p1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiQrCodeGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f060b62

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method
