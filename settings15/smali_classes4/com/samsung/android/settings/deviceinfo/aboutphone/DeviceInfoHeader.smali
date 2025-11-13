.class public final Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sSalesCode:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDeviceName:Landroid/widget/TextView;

.field public mDeviceNameEdit:Landroid/widget/Button;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0893

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final getDeviceName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method public final initDeviceImage()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mView:Landroid/view/View;

    const v1, 0x7f0a0501

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mView:Landroid/view/View;

    const v2, 0x7f0a04f4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageFileUtils;->isImageFileExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DeviceInfoHeader"

    const-string/jumbo v3, "set DeviceImage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageFileUtils;->getImageFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final initInfoChart()V
    .locals 32

    move-object/from16 v1, p0

    const/4 v2, 0x1

    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mView:Landroid/view/View;

    const-string v3, "DeviceInfoHeader"

    if-nez v0, :cond_0

    const-string v0, "Header View is null"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v4, 0x7f0a08da

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    iget-object v6, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const v7, 0x7f142662

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDefaultDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    iget-object v6, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const v7, 0x7f142595

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/deviceinfo/aboutphone/ModelNameGetter;

    iget-object v8, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/samsung/android/settings/deviceinfo/aboutphone/ModelNameGetter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/samsung/android/settings/deviceinfo/aboutphone/ModelNameGetter;->getModelName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    iget-object v6, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const v7, 0x7f142d51

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v0, v8, v6, v7}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v6, "CscFeature_Setting_EnableHwVersionDisplay"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x2

    if-eqz v0, :cond_4

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    iget-object v7, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const v9, 0x7f14111e

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "ril.hw_ver"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v10

    const-string v11, "CHM"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    add-int/2addr v10, v6

    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_2
    iget-object v9, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const v10, 0x7f140c90

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_3
    :goto_0
    invoke-direct {v0, v7, v9}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v0, "XSG"

    sget-object v7, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "\n"

    const-string v10, ","

    if-eqz v0, :cond_9

    const-string v0, "TRA ID : "

    :try_start_0
    iget-object v11, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "country_cert_info_enable"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v11

    if-ne v11, v2, :cond_5

    iget-object v11, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "country_cert_info_traid"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    const-string v13, "country_cert_info_ta"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "country_cert_info_name"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v11, :cond_5

    if-eqz v12, :cond_5

    if-eqz v13, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nTA : "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    invoke-direct {v11, v13, v0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Setting Not Found Exception e: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v11, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_TRA_NUMBERS:I

    if-ne v11, v6, :cond_6

    const-string/jumbo v6, "traNumber"

    invoke-static {v6}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v11, v8

    :goto_3
    array-length v12, v6

    if-ge v11, v12, :cond_8

    aget-object v12, v6, v11

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "traValue : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-le v14, v2, :cond_7

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v8

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v2

    new-instance v13, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    const-string v15, "$$"

    invoke-virtual {v12, v15, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v14, v12}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/2addr v11, v2

    goto :goto_3

    :cond_8
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string/jumbo v0, "primaryImei = "

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "phone"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v14

    if-ne v14, v2, :cond_a

    move v15, v2

    goto :goto_4

    :cond_a
    move v15, v8

    :goto_4
    :try_start_1
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getPrimaryImei()Ljava/lang/String;

    move-result-object v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getPrintableImei(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    move-object/from16 v6, v16

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    const/16 v16, 0x0

    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v6, "getPrimaryImei() Exception e : "

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v9, v3}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_5

    :goto_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    if-ge v8, v14, :cond_24

    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    move/from16 v17, v14

    const/4 v14, 0x0

    invoke-static {v0, v8, v14}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getImei(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    iget-object v14, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v18, v4

    const/4 v4, 0x1

    invoke-static {v14, v8, v4}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getImei(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v14

    if-eqz v9, :cond_b

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v19, v6

    const/4 v4, 0x1

    goto :goto_9

    :cond_b
    move-object/from16 v19, v6

    const/4 v4, 0x0

    :goto_9
    iget-object v6, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v20, v7

    const-class v7, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6, v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    const-string v7, "Imei for slot"

    move-object/from16 v21, v5

    const-string v5, " = "

    invoke-static {v8, v7, v5}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getPrintableImei(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isActiveSimPresent(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz v6, :cond_1d

    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isOpportunisticSim(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    const-string v5, "No feature factory configured"

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v7

    move-object/from16 v22, v12

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v12

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v2

    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    move/from16 v24, v4

    move-object/from16 v25, v10

    const/4 v0, 0x0

    goto/16 :goto_a

    :cond_c
    const-string/jumbo v0, "ril.cold_sim"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    move/from16 v24, v4

    const-string v4, ")"

    if-nez v2, :cond_d

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-ge v8, v2, :cond_d

    const-string v2, "1"

    aget-object v0, v0, v8

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PhoneNumberUnknownState TRUE (slot: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v25, v10

    const/4 v0, 0x1

    goto :goto_a

    :cond_d
    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const-string v2, "SecPcoValueReceiver"

    move-object/from16 v25, v10

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v2, Lcom/samsung/android/settings/deviceinfo/aboutphone/PcoValueReceiver;->$r8$clinit:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "PhoneNumberUnknownStatesub_"

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "PhoneNumberUnknownState is "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " (slot: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", subId: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    const v2, 0x7f14302c

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v27, v9

    goto/16 :goto_10

    :cond_e
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v4, "CarrierFeature_RIL_DisablePhoneNumberSource"

    const-string v10, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v4, v10, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "slot"

    const-string v2, " = subId : "

    move-object/from16 v26, v10

    const-string v10, ", disableSource : "

    invoke-static {v0, v2, v8, v12, v10}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$PhoneNumberSource;->values()[Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$PhoneNumberSource;

    move-result-object v2

    array-length v10, v2

    move/from16 v27, v9

    move-object/from16 v0, v26

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v10, :cond_13

    aget-object v28, v2, v9

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$PhoneNumberSource;->getValue()I

    move-result v0

    move-object/from16 v30, v2

    iget-object v2, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    move-object/from16 v31, v4

    const-class v4, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    if-eqz v2, :cond_f

    :try_start_3
    invoke-virtual {v2, v12, v0}, Landroid/telephony/SubscriptionManager;->getPhoneNumber(II)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_c

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "failed to get SubscriptionManager.getPhoneNumber: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_f
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Phone Number from SOURCE_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v9, 0x7

    if-le v4, v9, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "[*****]"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_d

    :cond_10
    move-object/from16 v10, v26

    :goto_d
    invoke-static {v2, v10, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_11
    :goto_e
    const/4 v2, 0x1

    goto :goto_f

    :cond_12
    move-object/from16 v30, v2

    move-object/from16 v31, v4

    move-object/from16 v0, v29

    goto :goto_e

    :goto_f
    add-int/2addr v9, v2

    move-object/from16 v2, v30

    move-object/from16 v4, v31

    goto/16 :goto_b

    :cond_13
    move-object/from16 v29, v0

    :goto_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string/jumbo v0, "phone number from SubscriptionManager.getPhoneNumber is null, slot id = "

    invoke-static {v8, v0, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const v2, 0x7f14302c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_14
    const v2, 0x7f14302c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_11

    :cond_15
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "\\+82"

    const-string v4, "0"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_16
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_17
    :goto_11
    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const v2, 0x7f14302c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_12
    iget-object v2, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v2, v4, v13, v6}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simstatus/SecSimStatus;->getDisplayNetworkProvider(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    check-cast v7, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getSimSlotName(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v5

    iget-object v7, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const-class v9, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v7, v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    if-nez v8, :cond_18

    const-string/jumbo v9, "select_icon_1"

    goto :goto_13

    :cond_18
    const-string/jumbo v9, "select_icon_2"

    :goto_13
    iget-object v10, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v12, 0x0

    invoke-static {v10, v9, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    check-cast v5, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v5

    if-nez v5, :cond_19

    packed-switch v9, :pswitch_data_0

    const v5, 0x7f080a6a

    goto/16 :goto_14

    :pswitch_0
    const v5, 0x7f080a76

    goto/16 :goto_14

    :pswitch_1
    const v5, 0x7f080a75

    goto/16 :goto_14

    :pswitch_2
    const v5, 0x7f080a74

    goto/16 :goto_14

    :pswitch_3
    const v5, 0x7f080a6f

    goto/16 :goto_14

    :pswitch_4
    const v5, 0x7f080a73

    goto/16 :goto_14

    :pswitch_5
    const v5, 0x7f080a70

    goto/16 :goto_14

    :pswitch_6
    const v5, 0x7f080a71

    goto :goto_14

    :pswitch_7
    const v5, 0x7f080a72

    goto :goto_14

    :pswitch_8
    const v5, 0x7f080a77

    goto :goto_14

    :pswitch_9
    const v5, 0x7f080a6d

    goto :goto_14

    :pswitch_a
    const v5, 0x7f080a6c

    goto :goto_14

    :pswitch_b
    const v5, 0x7f080a78

    goto :goto_14

    :pswitch_c
    const v5, 0x7f080a6b

    goto :goto_14

    :cond_19
    packed-switch v9, :pswitch_data_1

    const v5, 0x7f0808b1

    goto :goto_14

    :pswitch_d
    const v5, 0x7f0808bc

    goto :goto_14

    :pswitch_e
    const v5, 0x7f0808bb

    goto :goto_14

    :pswitch_f
    const v5, 0x7f0808ba

    goto :goto_14

    :pswitch_10
    const v5, 0x7f0808b5

    goto :goto_14

    :pswitch_11
    const v5, 0x7f0808b9

    goto :goto_14

    :pswitch_12
    const v5, 0x7f0808b6

    goto :goto_14

    :pswitch_13
    const v5, 0x7f0808b7

    goto :goto_14

    :pswitch_14
    const v5, 0x7f0808b8

    goto :goto_14

    :pswitch_15
    const v5, 0x7f0808bd

    goto :goto_14

    :pswitch_16
    const v5, 0x7f0808b4

    goto :goto_14

    :pswitch_17
    const v5, 0x7f0808b3

    goto :goto_14

    :pswitch_18
    const v5, 0x7f0808be

    goto :goto_14

    :pswitch_19
    const v5, 0x7f0808b2

    goto :goto_14

    :cond_1a
    const/4 v5, 0x0

    :goto_14
    invoke-direct {v4, v6, v5}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    iget-object v5, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const v6, 0x7f142657

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    iget-object v4, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const v5, 0x7f142d4c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    move-object/from16 v23, v2

    move/from16 v24, v4

    move/from16 v27, v9

    move-object/from16 v25, v10

    move-object/from16 v22, v12

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    iget-object v2, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const v4, 0x7f140c7d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f080a6e

    invoke-direct {v0, v2, v4}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_15
    if-eqz v15, :cond_1e

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    iget-object v2, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const v4, 0x7f142d33

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v14}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_16

    :cond_1e
    if-eqz v27, :cond_1f

    if-nez v24, :cond_20

    :cond_1f
    if-nez v27, :cond_21

    if-nez v8, :cond_21

    :cond_20
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    iget-object v2, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const v4, 0x7f140c95

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v14}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_21
    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    iget-object v2, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const v5, 0x7f140c96

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2, v14}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_16
    if-nez v15, :cond_23

    if-eqz v24, :cond_22

    move-object/from16 v5, v22

    move-object/from16 v2, v23

    goto :goto_17

    :cond_22
    move-object/from16 v2, v23

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v5, v22

    goto :goto_18

    :cond_23
    move-object/from16 v2, v23

    move-object/from16 v5, v22

    :goto_17
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_18
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x1

    add-int/2addr v8, v6

    move-object v12, v5

    move/from16 v14, v17

    move-object/from16 v4, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v5, v21

    move-object/from16 v10, v25

    move/from16 v9, v27

    goto/16 :goto_8

    :cond_24
    move-object/from16 v18, v4

    move-object/from16 v21, v5

    move-object/from16 v20, v7

    move-object v5, v12

    const/4 v4, 0x0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v2, v21

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_19

    :cond_25
    move-object/from16 v18, v4

    move-object v2, v5

    move-object/from16 v20, v7

    move v4, v8

    :goto_19
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fontScale = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    const-string/jumbo v6, "screenWidth = "

    invoke-static {v5, v6, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    sget-object v7, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->DENSITY_BASE_PIXEL:[F

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object v6

    array-length v6, v6

    iget-object v7, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->DENSITY_BASE_PIXEL:[F

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object v8

    invoke-static {v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentDensity(Landroid/content/Context;)I

    move-result v7

    move v14, v4

    :goto_1a
    array-length v9, v8

    if-ge v14, v9, :cond_27

    aget v9, v8, v14

    if-ne v7, v9, :cond_26

    const/4 v9, 0x1

    goto :goto_1b

    :cond_26
    const/4 v9, 0x1

    add-int/2addr v14, v9

    goto :goto_1a

    :cond_27
    const/4 v9, 0x1

    move v14, v4

    :goto_1b
    add-int/2addr v14, v9

    const-string/jumbo v7, "screenZoomMaxLevel = "

    const-string v8, ", currentScreenZoomLevel = "

    invoke-static {v7, v8, v6, v14, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const/4 v3, 0x5

    if-ne v6, v3, :cond_28

    const/4 v10, 0x4

    goto :goto_1c

    :cond_28
    const/4 v10, 0x3

    :goto_1c
    const/16 v3, 0x140

    if-lt v5, v3, :cond_2a

    const/16 v3, 0x19c

    if-ge v5, v3, :cond_29

    const v3, 0x3f99999a    # 1.2f

    cmpl-float v0, v0, v3

    if-gez v0, :cond_2a

    if-lt v14, v10, :cond_29

    goto :goto_1d

    :cond_29
    const v0, 0x7f0d0891

    goto :goto_1e

    :cond_2a
    :goto_1d
    const v0, 0x7f0d0892

    :goto_1e
    move v8, v4

    :goto_1f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_2f

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    iget-boolean v4, v3, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mIsSIMSlotCategory:Z

    iget-object v5, v3, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_2c

    iget-object v4, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0d0890

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v6, 0x7f0a0e5b

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0a0e5c

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, v3, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mSIMIconResId:I

    if-eqz v3, :cond_2b

    iget-object v5, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_20

    :cond_2b
    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_20
    move-object/from16 v3, v18

    move-object/from16 v11, v20

    const/4 v5, 0x3

    const/4 v6, 0x0

    const v10, 0x7f142657

    goto :goto_22

    :cond_2c
    iget-object v4, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mInflater:Landroid/view/LayoutInflater;

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v7, 0x7f0a1041

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v9, 0x7f0a0417

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v3, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mContent:Ljava/lang/String;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const v10, 0x7f142657

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    const/4 v5, 0x3

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_21

    :cond_2d
    const/4 v5, 0x3

    :goto_21
    iget-boolean v3, v3, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mIsCopyable:Z

    if-eqz v3, :cond_2e

    new-instance v3, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$1;

    invoke-direct {v3, v1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$1;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;)V

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2e
    move-object/from16 v3, v18

    :goto_22
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v4, 0x1

    add-int/2addr v8, v4

    move-object/from16 v18, v3

    move-object/from16 v20, v11

    goto/16 :goto_1f

    :cond_2f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method
