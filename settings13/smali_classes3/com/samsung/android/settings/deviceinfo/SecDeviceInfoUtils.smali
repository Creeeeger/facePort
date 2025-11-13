.class public Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;
.super Ljava/lang/Object;
.source "SecDeviceInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils$Operator;
    }
.end annotation


# direct methods
.method public static addWhitespaceEvery4digits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 227
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    add-int/lit8 v4, p0, 0x1

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, v3, -0x1

    .line 235
    aget-char v4, v1, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    rem-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_1

    const-string v4, " "

    .line 237
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkRootingCondition()Z
    .locals 13

    const-string v0, "/sbin/su"

    const-string v1, "/system/su"

    const-string v2, "/system/bin/su"

    const-string v3, "/system/xbin/su"

    const-string v4, "/system/bin/.ext/.su"

    const-string v5, "/data/local/xbin/su"

    const-string v6, "/data/local/bin/su"

    const-string v7, "/system/sd/xbin/su"

    const-string v8, "/system/bin/failsafe/su"

    const-string v9, "/data/local/su"

    const-string v10, "/system/app/Superuser.apk"

    const-string v11, "/system/usr/we-need-root/su-backup"

    const-string v12, "/system/xbin/mu"

    .line 545
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data"

    const-string v2, "/"

    const-string v3, "/system"

    const-string v4, "/system/bin"

    const-string v5, "/system/sbin"

    const-string v6, "/system/xbin"

    const-string v7, "/vendor/bin"

    const-string v8, "/sys"

    const-string v9, "/sbin"

    const-string v10, "/etc"

    const-string v11, "/proc"

    const-string v12, "/dev"

    .line 552
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "Utils"

    const/16 v5, 0xd

    if-ge v3, v5, :cond_2

    .line 557
    aget-object v5, v0, v3

    .line 558
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 561
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rooting:su located at : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    const/16 v3, 0xc

    if-ge v0, v3, :cond_5

    .line 568
    aget-object v3, v1, v0

    .line 569
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    .line 572
    :cond_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 574
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rooting:read only changed as writable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return v2
.end method

.method public static getBasebandVersionSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 161
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isHiddenVersionApplied()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ril.approved_modemver"

    .line 162
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "phone"

    .line 164
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    .line 165
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getBasebandVersionForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getDefaultDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 640
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_device_name"

    .line 639
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 641
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 645
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceNameDeltaForZ3Model()Ljava/lang/String;

    move-result-object p0

    .line 646
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 650
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceNameDeltaForF916B()Ljava/lang/String;

    move-result-object p0

    .line 651
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    .line 655
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Common_ConfigDevBrandName"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 657
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object p0

    .line 660
    :cond_3
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 661
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 663
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private static getDeviceNameDeltaForF916B()Ljava/lang/String;
    .locals 5

    .line 680
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SM-F916B"

    .line 681
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "ril.product_code"

    .line 686
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0xa

    .line 690
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x38

    if-ne v3, v4, :cond_2

    const-string v0, "Galaxy Z Fold2"

    return-object v0

    .line 700
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "QTUR"

    .line 701
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Galaxy Z Fold2       (LTE)"

    return-object v0

    :cond_3
    const/16 v0, 0x51

    if-ne v3, v0, :cond_4

    const-string v0, "Galaxy Z Fold2 LTE"

    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method

.method private static getDeviceNameDeltaForZ3Model()Ljava/lang/String;
    .locals 5

    .line 718
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SM-G988B"

    .line 719
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 725
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isLDUSKUbinary()Z

    move-result v0

    const-string v2, "Galaxy S20 Ultra"

    if-eqz v0, :cond_1

    return-object v2

    :cond_1
    const-string v0, "ril.product_code"

    .line 730
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 731
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xb

    if-ge v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0xa

    .line 734
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x4f

    if-eq v0, v3, :cond_5

    const/16 v3, 0x50

    if-eq v0, v3, :cond_5

    const/16 v3, 0x51

    if-eq v0, v3, :cond_5

    const/16 v3, 0x54

    if-eq v0, v3, :cond_5

    const/16 v3, 0x43

    if-eq v0, v3, :cond_5

    const/16 v3, 0x55

    if-eq v0, v3, :cond_5

    const/16 v3, 0x56

    if-eq v0, v3, :cond_5

    const/16 v3, 0x59

    if-eq v0, v3, :cond_5

    const/16 v3, 0x32

    if-eq v0, v3, :cond_5

    const/16 v3, 0x33

    if-eq v0, v3, :cond_5

    const/16 v3, 0x34

    if-eq v0, v3, :cond_5

    const/16 v3, 0x35

    if-eq v0, v3, :cond_5

    const/16 v3, 0x36

    if-eq v0, v3, :cond_5

    const/16 v3, 0x37

    if-eq v0, v3, :cond_5

    const/16 v3, 0x31

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v3, 0x46

    if-ne v0, v3, :cond_4

    return-object v2

    :cond_4
    return-object v1

    :cond_5
    :goto_0
    const-string v0, "Galaxy S20 Ultra LTE"

    return-object v0

    :cond_6
    :goto_1
    return-object v1
.end method

.method public static getESimSwitchingSlotIndex()I
    .locals 2

    .line 417
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->supportESimSwitching()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.ril.esim.slotswitch"

    const-string v1, ""

    .line 418
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getFormattedImei(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 263
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 273
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->addWhitespaceEvery4digits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 268
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xd

    if-le p1, v0, :cond_3

    const/4 p1, 0x0

    const/16 v0, 0xe

    .line 269
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static getImei(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .line 284
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone"

    .line 285
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string v2, "SecDeviceInfoUtils"

    if-eqz v1, :cond_2

    const-string v3, "ril.simoperator"

    const-string v4, "ETC"

    .line 287
    invoke-static {p1, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isPhoneTypeCdma(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "CTC"

    .line 289
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 290
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isMetroPCS(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "VZW"

    .line 291
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "VPP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "getImei() - call getDeviceId"

    .line 295
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "getImei() - call getImei"

    .line 292
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getImeiFormatCase(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getFormattedImei(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 299
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "getImei() - value isEmpty, set Default"

    .line 300
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public static getImeiFormatCase(Ljava/lang/String;)I
    .locals 1

    const-string v0, "XAR"

    .line 247
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "VZW"

    .line 249
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VPP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getImeiTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/android/settings/R$string;->status_imei:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getImeiTitleSuffix(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getImeiTitleSuffix(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .line 324
    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->supportDualSim(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 331
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isESimModel()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, " "

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    .line 333
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->supportESimSwitching()Z

    move-result v0

    if-nez v0, :cond_2

    if-ne p1, v4, :cond_1

    .line 335
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->slot_esim:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1

    .line 341
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isCurrentESimSwitchingSlotStatusIsESim()Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/2addr p1, v4

    .line 342
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getESimSwitchingSlotIndex()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->slot_esim:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1

    .line 348
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settings/R$string;->slot_number:I

    new-array v3, v4, [Ljava/lang/Object;

    add-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 355
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settings/R$string;->slot_number:I

    new-array v3, v4, [Ljava/lang/Object;

    add-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOmcEtcPath()Ljava/lang/String;
    .locals 2

    const-string v0, "persist.sys.omc_etcpath"

    const-string v1, ""

    .line 758
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getOneUiOwnVersion()I
    .locals 3

    const-string v0, "ro.build.version.oneui"

    const/4 v1, 0x0

    .line 529
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "property of oneui: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecDeviceInfoUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getPreferenceToSpecificActivityTitleInfo(Landroid/content/Context;Landroid/content/Intent;I)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 592
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 593
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 594
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 597
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 599
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    .line 603
    invoke-virtual {v3, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 606
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSerialNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 197
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static isAlterModel()Z
    .locals 3

    const-string v0, "persist.sys.iss.flag_altermodel"

    const/4 v1, 0x0

    .line 137
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static isBatteryNonRemovableModel()Z
    .locals 2

    .line 125
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_ELECTRIC_RATED_VALUE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isCdmaLteEnabled(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "phone"

    .line 449
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 450
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    move v0, p1

    .line 452
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "LteOnCdma : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecDeviceInfoUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isCurrentESimSwitchingSlotStatusIsESim()Z
    .locals 4

    .line 429
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getESimSwitchingSlotIndex()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ril.simslottype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const-string v2, "1"

    .line 434
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static isESimModel()Z
    .locals 3

    .line 391
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_EMBEDDED_SIM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEqualsDisabledESimSlotId(I)Z
    .locals 3

    .line 365
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isESimModel()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 369
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->supportESimProfileDownload()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 372
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->supportESimSwitching()Z

    move-result v0

    if-nez v0, :cond_1

    if-ne p0, v2, :cond_2

    :goto_0
    move v1, v2

    goto :goto_1

    .line 378
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isCurrentESimSwitchingSlotStatusIsESim()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/2addr p0, v2

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getESimSwitchingSlotIndex()I

    move-result v0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public static isHiddenVersionApplied()Z
    .locals 2

    .line 147
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ChangeApprovedModemVersion"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ril.approved_modemver"

    const-string v1, "none"

    .line 148
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SecDeviceInfoUtils"

    const-string v1, "Change approved modem version"

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isLDUSKUbinary()Z
    .locals 5

    const-string v0, "ril.product_code"

    const-string v1, ""

    .line 670
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-ge v1, v3, :cond_0

    return v2

    :cond_0
    const/16 v1, 0xa

    .line 673
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x38

    if-eq v3, v4, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static isMetroPCS(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "ro.product.name"

    .line 479
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "MetroPCS"

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mtr"

    .line 481
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPhoneTypeCdma(Landroid/content/Context;I)Z
    .locals 2

    const-string v0, "phone"

    .line 460
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 461
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 462
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slotId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Cdma : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecDeviceInfoUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static final isSemAvailable(Landroid/content/Context;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 515
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.feature.samsung_experience_mobile"

    .line 516
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.feature.samsung_experience_mobile_lite"

    .line 517
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 520
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSemAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecDeviceInfoUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static final isSepLiteAvailable(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 491
    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_SEP_CATEGORY"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sep_lite"

    .line 493
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string v2, "sep_lite_new"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 495
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 496
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.feature.samsung_experience_mobile_lite"

    .line 497
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    :goto_0
    move v0, v3

    .line 505
    :catch_0
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSepLiteAvailable: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SecDeviceInfoUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupportRootBadge()Z
    .locals 1

    const-string v0, "rootbadgefeature"

    .line 538
    invoke-static {v0}, Lcom/android/settingslib/Utils;->supportEnhancedFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static supportDualSim(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    .line 117
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 118
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static supportESimProfileDownload()Z
    .locals 3

    .line 398
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportEsim"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportESimSwitching()Z
    .locals 2

    const-string v0, "persist.ril.esim.slotswitch"

    const-string v1, ""

    .line 409
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static supportSerialNumber(Landroid/content/Context;)Z
    .locals 1

    .line 179
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    .line 180
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MTR"

    .line 181
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "USC"

    .line 182
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LRA"

    .line 183
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ACG"

    .line 184
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "SecDeviceInfoUtils"

    const-string v0, "Not support Serial number"

    .line 185
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
