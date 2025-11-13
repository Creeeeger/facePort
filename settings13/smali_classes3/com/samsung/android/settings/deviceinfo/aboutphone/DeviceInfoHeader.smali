.class public Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;
.super Ljava/lang/Object;
.source "DeviceInfoHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceInfoHeader"

.field private static final sSalesCode:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceName:Landroid/widget/TextView;

.field private mDeviceNameEdit:Landroid/widget/Button;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 60
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mView:Landroid/view/View;

    .line 71
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 72
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    sget v2, Lcom/android/settings/R$layout;->sec_device_info_settings_header:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mView:Landroid/view/View;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private getCurrentScreenZoomLevel()I
    .locals 4

    .line 552
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->DENSITY_BASE_PIXEL:[F

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object v0

    .line 553
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentDensity(Landroid/content/Context;)I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    .line 554
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 555
    aget v3, v0, v2

    if-ne p0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private getDeviceInfoImei()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 388
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 389
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 391
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/Rune;->isSupportFeatureHideSimTab(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 392
    sget-object v4, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->TAG:Ljava/lang/String;

    const-string v5, "Hide IMEI_Info for Opportunistic subscription"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 396
    :cond_0
    new-instance v5, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getImeiTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    .line 397
    invoke-static {v7, v3}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getImei(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v4}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 400
    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isEqualsDisabledESimSlotId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 401
    invoke-virtual {v5, v2}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->setEnabled(Z)V

    .line 403
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getDeviceInfoList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 462
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sec_product_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    .line 463
    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDefaultDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->sec_model_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/deviceinfo/aboutphone/ModelNameGetter;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/deviceinfo/aboutphone/ModelNameGetter;-><init>(Landroid/content/Context;)V

    .line 466
    invoke-virtual {v3}, Lcom/samsung/android/settings/deviceinfo/aboutphone/ModelNameGetter;->getModelName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->supportSerialNumber(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->status_serial_number:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 473
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->getDeviceInfoImei()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 476
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DSH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 477
    :cond_2
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->software_version:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getBasebandVersionSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_EnableHwVersionDisplay"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 481
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->getHardwareVersion()Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v1, "ro.csb_val"

    .line 484
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknown"

    .line 485
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 486
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->getSecureBootStatus(Ljava/lang/String;)Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_5
    sget-object v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->sSalesCode:Ljava/lang/String;

    const-string v2, "XSG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "XSD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "XST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "XSZ"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "XSM"

    .line 490
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "XSS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "XSI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 491
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->getUnitedArabEmiratesCertName()Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_7
    new-instance p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-object v0
.end method

.method private getFilteredSubscriptionInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 294
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 295
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 296
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x1

    .line 297
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 298
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    .line 303
    :cond_0
    sget-object v2, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->TAG:Ljava/lang/String;

    const-string v3, "Remove the opportunistic subscription from subscription list"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-object p0
.end method

.method private getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 374
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->unknown:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "\\+82"

    const-string v0, "0"

    .line 378
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 380
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 375
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->unknown:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getHardwareVersion()Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;
    .locals 3

    const-string v0, "ril.hw_ver"

    .line 409
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 411
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCMCCModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2e

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x2

    .line 414
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 417
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->hardware_version:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 419
    :cond_1
    new-instance v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->hardware_version:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->device_info_default:I

    .line 420
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getListItemLayout()I
    .locals 6

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 152
    sget-object v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fontScale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screenWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->getScreenZoomMaxLevel()I

    move-result v3

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->getCurrentScreenZoomLevel()I

    move-result p0

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenZoomMaxLevel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", currentScreenZoomLevel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    if-ne v3, v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    const/16 v3, 0x140

    if-lt v2, v3, :cond_2

    const/16 v3, 0x19c

    if-ge v2, v3, :cond_1

    const v2, 0x3f99999a    # 1.2f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_2

    if-lt p0, v1, :cond_1

    goto :goto_1

    .line 173
    :cond_1
    sget p0, Lcom/android/settings/R$layout;->sec_device_info_list_view_item:I

    goto :goto_2

    .line 172
    :cond_2
    :goto_1
    sget p0, Lcom/android/settings/R$layout;->sec_device_info_list_view_item_2_line:I

    :goto_2
    return p0
.end method

.method private getPhoneNumbers()Landroid/util/SparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 322
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 325
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSupportFeatureHideSimTab(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->getFilteredSubscriptionInfo()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    .line 331
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 332
    new-instance v3, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$2;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;)V

    invoke-interface {v2, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 339
    sget-object v3, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of SubInfoList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 340
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 341
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 342
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    .line 343
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 345
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->isPhoneNumberUnknownStateForVZW(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 346
    sget-object v4, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->TAG:Ljava/lang/String;

    const-string v6, "Phone number - unknown (Concept)"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->unknown:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 351
    :cond_1
    sget-object v6, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sim Slot Index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", Subscription Id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->isOperatorOnlyFromUICC(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    .line 353
    invoke-virtual {v0, v4, v6}, Landroid/telephony/SubscriptionManager;->getPhoneNumber(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 355
    :cond_2
    invoke-virtual {v0, v4}, Landroid/telephony/SubscriptionManager;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private getScreenZoomMaxLevel()I
    .locals 1

    .line 541
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/settings/display/SecScreenZoomPreferenceFragment;->DENSITY_BASE_PIXEL:[F

    invoke-static {p0, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object p0

    .line 542
    array-length p0, p0

    return p0
.end method

.method private getSecureBootStatus(Ljava/lang/String;)Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;
    .locals 1

    const-string p0, "1"

    .line 426
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Type: Samsung"

    goto :goto_0

    :cond_0
    const-string p0, "2"

    .line 428
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Type: Knox A"

    goto :goto_0

    :cond_1
    const-string p0, "3"

    .line 430
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Type: Knox B"

    goto :goto_0

    :cond_2
    const-string p0, "4"

    .line 432
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Type: Knox C"

    goto :goto_0

    :cond_3
    const-string p0, "Type: Invalid"

    .line 437
    :goto_0
    new-instance p1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    const-string v0, "Secure boot status"

    invoke-direct {p1, v0, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private getUnitedArabEmiratesCertName()Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;
    .locals 4

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "country_cert_info_enable"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "country_cert_info_traid"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "country_cert_info_ta"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "country_cert_info_name"

    invoke-static {p0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TRA ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nTA : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    new-instance v1, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 453
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Not Found Exception e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private initDeviceImage()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->device_name_space:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->device_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 114
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageFileUtils;->isImageFileExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    sget-object v2, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->TAG:Ljava/lang/String;

    const-string v3, "set DeviceImage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/deviceimage/DeviceImageFileUtils;->getImageFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 p0, 0x8

    .line 117
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 118
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initDeviceName()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->device_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mDeviceName:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->device_name_edit_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mDeviceNameEdit:Landroid/widget/Button;

    const/4 v1, 0x1

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isAlterModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mDeviceName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mDeviceNameEdit:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const-string v1, "device_name_edit"

    const-string v2, "grayout"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mDeviceNameEdit:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 133
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mDeviceNameEdit:Landroid/widget/Button;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private isOperatorOnlyFromUICC(I)Z
    .locals 0

    .line 311
    sget-object p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->SWISSCOM:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->isInsertedSim(I)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->LICHTENSTEIN:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    .line 312
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->isInsertedSim(I)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->LGU_PLUS:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;

    .line 313
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;->isInsertedSim(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 314
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->TAG:Ljava/lang/String;

    const-string p1, "Operator who want to get Phone Number Only From SIM (UICC)"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private isPhoneNumberUnknownStateForVZW(II)Z
    .locals 4

    .line 260
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isVzwModel()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "ril.cold_sim"

    .line 263
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ")"

    if-nez v2, :cond_1

    const-string v2, ","

    .line 265
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 266
    array-length v2, v0

    if-ge p1, v2, :cond_1

    aget-object v0, v0, p1

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    sget-object p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PhoneNumberUnknownState TRUE (slot: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 272
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const-string v0, "SecPcoValueReceiver"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 274
    invoke-static {p2}, Lcom/samsung/android/settings/deviceinfo/aboutphone/PcoValueReceiver;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 275
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneNumberUnknownState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " (slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", subId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private updatePhoneNumberView(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 2

    .line 363
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    sget-object p2, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phone number from SubscriptionManager.getPhoneNumber is null, slot id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object p2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/settings/R$string;->unknown:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 367
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/settings/R$string;->sec_phone_number:I

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getDeviceInfoHeader()Landroid/view/View;
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->initInfoChart()V

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->initDeviceName()V

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->initDeviceImage()V

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 89
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method public getDeviceNameEditButton()Landroid/widget/Button;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mDeviceNameEdit:Landroid/widget/Button;

    return-object p0
.end method

.method public getDeviceNameView()Landroid/widget/TextView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mDeviceName:Landroid/widget/TextView;

    return-object p0
.end method

.method public initInfoChart()V
    .locals 13

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 181
    sget-object p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->TAG:Ljava/lang/String;

    const-string v0, "Header View is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 184
    :cond_0
    sget v1, Lcom/android/settings/R$id;->ll_middle_info_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 185
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 186
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->getListItemLayout()I

    move-result v1

    .line 191
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "\n"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 192
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 193
    sget v6, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 194
    iget-object v7, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->sec_phone_number:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->getPhoneNumbers()Landroid/util/SparseArray;

    move-result-object v7

    .line 197
    sget-object v8, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "number of phone number = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    .line 199
    sget v6, Lcom/android/settings/R$id;->content_container:I

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 200
    sget v6, Lcom/android/settings/R$id;->phone_number_container:I

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 201
    sget v6, Lcom/android/settings/R$id;->phone_number_slot_1:I

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 202
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-direct {p0, v6, v8, v10}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->updatePhoneNumberView(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 203
    sget v6, Lcom/android/settings/R$id;->phone_number_slot_2:I

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 204
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-direct {p0, v6, v8, v7}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->updatePhoneNumberView(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ne v8, v9, :cond_3

    .line 206
    sget v6, Lcom/android/settings/R$id;->content:I

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 207
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-direct {p0, v6, v8, v7}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->updatePhoneNumberView(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_0

    .line 209
    :cond_3
    sget v7, Lcom/android/settings/R$id;->content:I

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 210
    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->unknown:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 213
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 216
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->getDeviceInfoList()Ljava/util/ArrayList;

    move-result-object v2

    move v6, v5

    .line 217
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 218
    iget-object v7, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v7, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 219
    sget v8, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 220
    sget v9, Lcom/android/settings/R$id;->content:I

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 222
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;

    .line 223
    invoke-virtual {v10}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {v10}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->getContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->getContent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v10}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->isCopyable()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 227
    new-instance v11, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$1;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$1;-><init>(Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;)V

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 236
    :cond_5
    invoke-virtual {v10}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_6

    .line 237
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 238
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    const v10, 0x3ecccccd    # 0.4f

    .line 239
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 240
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 242
    :cond_6
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public updateDeviceImage()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;->initDeviceImage()V

    return-void
.end method
