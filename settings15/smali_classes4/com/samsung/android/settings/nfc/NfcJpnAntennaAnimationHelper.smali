.class public final Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final containModelName:Z

.field public final deviceImgHeight:I

.field public final deviceImgWidth:I

.field public final deviceType:I

.field public final felicaAntennaX:I

.field public final felicaAntennaY:I

.field public final isJpn:Z

.field public final isJpnPos:Z

.field public jpnAnimationDimension:F

.field public final mContext:Landroid/content/Context;

.field public final modelName:Ljava/lang/String;

.field public final noOfCameraHoles:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->deviceType:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->isJpnPos:Z

    new-instance v1, Ljava/util/ArrayList;

    const-string v5, "SC-52C"

    const-string v6, "SC-54B"

    const-string v2, "SCG12"

    const-string v3, "SC-54C"

    const-string v4, "SCG14"

    const-string v7, "SCG17"

    const-string v8, "SM-F721C"

    invoke-static/range {v2 .. v8}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->containModelName:Z

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "ro.vendor.nfc.info.deviceFoldable"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "ro.vendor.nfc.info.felicaAntposX"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->felicaAntennaX:I

    const-string/jumbo v3, "ro.vendor.nfc.info.felicaAntposY"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->felicaAntennaY:I

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->isJpn:Z

    const-string/jumbo p1, "ro.product.model"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->modelName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->modelName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->containModelName:Z

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    iput p1, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->deviceType:I

    :cond_3
    iget p1, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->felicaAntennaX:I

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->felicaAntennaY:I

    if-eqz p1, :cond_4

    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->isJpnPos:Z

    :cond_4
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->getDrawableImage()I

    move-result v2

    invoke-static {v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->deviceImgWidth:I

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p1, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->deviceImgHeight:I

    const-string/jumbo p1, "ro.vendor.nfc.info.camerainfo"

    const-string v1, "0,0,0,0,0,0"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    div-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->noOfCameraHoles:I

    return-void
.end method


# virtual methods
.method public final getDrawableImage()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->deviceType:I

    if-nez v0, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->noOfCameraHoles:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const p0, 0x7f08078e

    return p0

    :cond_0
    if-nez v0, :cond_1

    const p0, 0x7f080792

    return p0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-boolean p0, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->containModelName:Z

    if-eqz p0, :cond_2

    const p0, 0x7f080790

    goto :goto_0

    :cond_2
    const p0, 0x7f08078f

    :goto_0
    return p0

    :cond_3
    const p0, 0x7f080791

    return p0
.end method

.method public final isJpnModel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->isJpn:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->isJpnPos:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setFelicaAnimation(Landroid/widget/ImageView;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->jpnAnimationDimension:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->getDrawableImage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper$1;-><init>(Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;Landroid/widget/ImageView;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
