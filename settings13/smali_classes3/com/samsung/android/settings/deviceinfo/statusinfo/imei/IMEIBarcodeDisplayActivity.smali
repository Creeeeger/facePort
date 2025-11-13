.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/IMEIBarcodeDisplayActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "IMEIBarcodeDisplayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    return-void
.end method

.method private makeBarcode(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    .line 101
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "ISO-8859-1"

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string p0, ""

    .line 105
    :goto_0
    new-instance p1, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {p1}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    const/4 v0, 0x0

    .line 108
    :try_start_1
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    const/16 v2, 0x780

    const/16 v3, 0x140

    invoke-virtual {p1, p0, v1, v2, v3}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    :goto_1
    if-nez p0, :cond_0

    return-object v0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    .line 116
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    mul-int p1, v7, v8

    .line 117
    new-array v2, p1, [I

    const/4 p1, 0x0

    move v0, p1

    :goto_2
    if-ge v0, v8, :cond_3

    mul-int v1, v0, v7

    move v3, p1

    :goto_3
    if-ge v3, v7, :cond_2

    add-int v4, v1, v3

    .line 121
    invoke-virtual {p0, v3, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_1

    const/high16 v5, -0x1000000

    goto :goto_4

    :cond_1
    const/4 v5, -0x1

    :goto_4
    aput v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 124
    :cond_3
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v4, v7

    .line 125
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x28

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget-boolean p1, Lcom/samsung/android/settings/Rune;->FEATURE_STATUS_INFO_IMEI_BARCODE:Z

    if-nez p1, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string v0, "imei_barcode_value"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 67
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->status_imei:I

    .line 68
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->sec_imei_barcode:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    sget v2, Lcom/android/settings/R$id;->imei_barcode:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 73
    sget v3, Lcom/android/settings/R$id;->imei_textview:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/IMEIBarcodeDisplayActivity;->makeBarcode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 79
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
