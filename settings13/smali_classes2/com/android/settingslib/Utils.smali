.class public Lcom/android/settingslib/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final SHOW_X_WIFI_PIE:[I

.field static final STORAGE_MANAGER_ENABLED_PROPERTY:Ljava/lang/String; = "ro.storage_manager.enabled"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final WIFI_PIE:[I

.field private static dualAgentPackageName:Ljava/lang/String;

.field private static sPermissionControllerPackageName:Ljava/lang/String;

.field private static sServicesSystemSharedLibPackageName:Ljava/lang/String;

.field private static sSharedSystemSharedLibPackageName:Ljava/lang/String;

.field private static sSystemSignature:[Landroid/content/pm/Signature;


# direct methods
.method public static synthetic $r8$lambda$1Tsi0tp3GHgGugEm7XXPbm9eb_k(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settingslib/Utils;->lambda$getUpdatableManagedUserTitle$0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 88
    sget v2, Lcom/android/settingslib/R$drawable;->sec_ic_wifi_signal_0:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/settingslib/R$drawable;->sec_ic_wifi_signal_1:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/settingslib/R$drawable;->sec_ic_wifi_signal_2:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/android/settingslib/R$drawable;->sec_ic_wifi_signal_3:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/android/settingslib/R$drawable;->sec_ic_wifi_signal_4:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sput-object v1, Lcom/android/settingslib/Utils;->WIFI_PIE:[I

    new-array v0, v0, [I

    .line 103
    sget v1, Lcom/android/settingslib/R$drawable;->ic_show_x_wifi_signal_0:I

    aput v1, v0, v3

    sget v1, Lcom/android/settingslib/R$drawable;->ic_show_x_wifi_signal_1:I

    aput v1, v0, v4

    sget v1, Lcom/android/settingslib/R$drawable;->ic_show_x_wifi_signal_2:I

    aput v1, v0, v5

    sget v1, Lcom/android/settingslib/R$drawable;->ic_show_x_wifi_signal_3:I

    aput v1, v0, v6

    sget v1, Lcom/android/settingslib/R$drawable;->ic_show_x_wifi_signal_4:I

    aput v1, v0, v7

    sput-object v0, Lcom/android/settingslib/Utils;->SHOW_X_WIFI_PIE:[I

    const-string v0, "com.samsung.android.da.daagent"

    .line 112
    sput-object v0, Lcom/android/settingslib/Utils;->dualAgentPackageName:Ljava/lang/String;

    return-void
.end method

.method public static applyAlpha(FI)I
    .locals 2

    .line 380
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    .line 381
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 382
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 381
    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static applyAlphaAttr(Landroid/content/Context;II)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 372
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 373
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 374
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 375
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result p0

    return p0
.end method

.method public static formatPercentage(D)Ljava/lang/String;
    .locals 1

    .line 271
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPercentage(DZ)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    double-to-float p0, p0

    .line 255
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    :cond_0
    double-to-int p0, p0

    .line 256
    :goto_0
    invoke-static {p0}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPercentage(I)Ljava/lang/String;
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 266
    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPercentage(JJ)Ljava/lang/String;
    .locals 0

    long-to-double p0, p0

    long-to-double p2, p2

    div-double/2addr p0, p2

    .line 261
    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAlphaInvariantColorFilterForColor(I)Landroid/graphics/ColorFilter;
    .locals 1

    .line 449
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getAlphaInvariantColorMatrixForColor(I)Landroid/graphics/ColorMatrix;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v0
.end method

.method public static getAlphaInvariantColorMatrixForColor(I)Landroid/graphics/ColorMatrix;
    .locals 6

    .line 429
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 430
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 431
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 433
    new-instance v2, Landroid/graphics/ColorMatrix;

    const/16 v3, 0x14

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v5, v3, v4

    const/4 v4, 0x2

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v5, v3, v4

    int-to-float v0, v0

    const/4 v4, 0x4

    aput v0, v3, v4

    const/4 v0, 0x5

    aput v5, v3, v0

    const/4 v0, 0x6

    aput v5, v3, v0

    const/4 v0, 0x7

    aput v5, v3, v0

    const/16 v0, 0x8

    aput v5, v3, v0

    int-to-float v0, v1

    const/16 v1, 0x9

    aput v0, v3, v1

    const/16 v0, 0xa

    aput v5, v3, v0

    const/16 v0, 0xb

    aput v5, v3, v0

    const/16 v0, 0xc

    aput v5, v3, v0

    const/16 v0, 0xd

    aput v5, v3, v0

    int-to-float p0, p0

    const/16 v0, 0xe

    aput p0, v3, v0

    const/16 p0, 0xf

    aput v5, v3, p0

    const/16 p0, 0x10

    aput v5, v3, p0

    const/16 p0, 0x11

    aput v5, v3, p0

    const/16 p0, 0x12

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v3, p0

    const/16 p0, 0x13

    aput v5, v3, p0

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrix;-><init>([F)V

    return-object v2
.end method

.method public static getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 636
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 637
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 636
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/Utils;->getBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 627
    invoke-static {p0}, Lcom/android/launcher3/icons/IconFactory;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/IconFactory;

    move-result-object v0

    .line 628
    :try_start_0
    new-instance v1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v1}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    .line 629
    invoke-virtual {v1, p2}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setUser(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    .line 630
    invoke-virtual {p1, p0}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    invoke-virtual {v0}, Lcom/android/launcher3/icons/IconFactory;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    .line 627
    :try_start_1
    invoke-virtual {v0}, Lcom/android/launcher3/icons/IconFactory;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
.end method

.method public static getBatteryLevel(Landroid/content/Intent;)I
    .locals 3

    const-string v0, "level"

    const/4 v1, 0x0

    .line 275
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "scale"

    const/16 v2, 0x64

    .line 276
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    mul-int/2addr v0, v2

    .line 277
    div-int/2addr v0, p0

    return v0
.end method

.method public static getBatteryStatus(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "status"

    const/4 v1, 0x1

    .line 291
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 295
    sget v2, Lcom/android/settingslib/R$string;->battery_info_status_unknown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 296
    new-instance v3, Lcom/android/settingslib/fuelgauge/BatteryStatus;

    invoke-direct {v3, p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;-><init>(Landroid/content/Intent;)V

    .line 298
    invoke-virtual {v3}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isCharged()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 300
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_full_charged:I

    goto :goto_0

    .line 301
    :cond_0
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_full:I

    .line 299
    :goto_0
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    if-ne v0, p1, :cond_6

    if-eqz p2, :cond_2

    .line 305
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_charging:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 306
    :cond_2
    invoke-virtual {v3}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedInWired()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 307
    invoke-virtual {v3, p0}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->getChargingSpeed(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_4

    if-eq p0, p1, :cond_3

    .line 317
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_charging:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 309
    :cond_3
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_charging_fast:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 313
    :cond_4
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_charging_slow:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 321
    :cond_5
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_charging_wireless:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    const/4 p0, 0x3

    if-ne v0, p0, :cond_7

    .line 324
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_discharging:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    const/4 p0, 0x4

    if-ne v0, p0, :cond_8

    .line 326
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_not_charging:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_8
    :goto_1
    return-object v2
.end method

.method public static getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    const v0, 0x1010435

    .line 334
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getColorAccentDefaultColor(Landroid/content/Context;)I
    .locals 1

    const v0, 0x1010435

    .line 343
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 394
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 397
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 400
    throw p1
.end method

.method public static getColorAttrDefaultColor(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 387
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 388
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 389
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getColorErrorDefaultColor(Landroid/content/Context;)I
    .locals 1

    const v0, 0x1010543

    .line 348
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColorStateListDefaultColor(Landroid/content/Context;I)I
    .locals 1

    .line 354
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 355
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public static getCombinedServiceState(Landroid/telephony/ServiceState;)I
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 612
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 613
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    :cond_1
    if-nez v2, :cond_2

    .line 617
    invoke-static {p0}, Lcom/android/settingslib/Utils;->isNotInIwlan(Landroid/telephony/ServiceState;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Utils"

    const-string v0, "In service by data registration state"

    .line 618
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public static getContactsPackageName()Ljava/lang/String;
    .locals 3

    .line 703
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultStorageManagerDaysToRetain(Landroid/content/res/Resources;)I
    .locals 1

    const v0, 0x10e0125

    .line 533
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p0, 0x5a

    :goto_0
    return p0
.end method

.method public static getDisabled(Landroid/content/Context;I)I
    .locals 1

    const v0, 0x1010033

    .line 367
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/Utils;->applyAlphaAttr(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method private static getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .locals 1

    if-eqz p0, :cond_0

    .line 479
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 480
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 2

    :try_start_0
    const-string v0, "android"

    const/16 v1, 0x40

    .line 487
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 488
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTetheringLabel(Landroid/net/TetheringManager;)I
    .locals 4

    .line 130
    invoke-virtual {p0}, Landroid/net/TetheringManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Landroid/net/TetheringManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {p0}, Landroid/net/TetheringManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object p0

    .line 134
    array-length v0, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 135
    :goto_0
    array-length v1, v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 136
    :goto_1
    array-length p0, p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 139
    sget p0, Lcom/android/settingslib/R$string;->tether_settings_title_all:I

    return p0

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 141
    sget p0, Lcom/android/settingslib/R$string;->tether_settings_title_all:I

    return p0

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 143
    sget p0, Lcom/android/settingslib/R$string;->tether_settings_title_all:I

    return p0

    :cond_5
    if-eqz v1, :cond_6

    .line 145
    sget p0, Lcom/android/settingslib/R$string;->tether_settings_title_wifi:I

    return p0

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 147
    sget p0, Lcom/android/settingslib/R$string;->tether_settings_title_usb_bluetooth:I

    return p0

    :cond_7
    if-eqz v0, :cond_8

    .line 149
    sget p0, Lcom/android/settingslib/R$string;->tether_settings_title_usb:I

    return p0

    .line 151
    :cond_8
    sget p0, Lcom/android/settingslib/R$string;->tether_settings_title_bluetooth:I

    return p0
.end method

.method private static getUpdatableManagedUserTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 194
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/Utils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settingslib/Utils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-string p0, "Settings.WORK_PROFILE_USER_LABEL"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 203
    invoke-static {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->getDefaultSize(Landroid/content/Context;)I

    move-result v0

    .line 204
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    invoke-static {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->getManagedUserDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 206
    invoke-virtual {p0, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p0

    .line 210
    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 214
    sget-object v3, Lcom/android/settingslib/Utils;->dualAgentPackageName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 219
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 220
    new-instance p1, Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-direct {p1, v0}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, p2, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object p0

    .line 222
    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->bake()Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object p0

    return-object p0

    .line 226
    :cond_1
    iget-object v1, p2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 227
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 229
    new-instance p0, Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-direct {p0, v0}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->bake()Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object p0

    return-object p0

    .line 236
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, p1, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 237
    new-instance p1, Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-direct {p1, v0}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    invoke-static {p0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->bake()Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 160
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v1

    if-nez v1, :cond_2

    .line 162
    invoke-static {}, Lcom/android/settingslib/utils/BuildCompatUtils;->isAtLeastT()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 163
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getUpdatableManagedUserTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 164
    :cond_1
    sget p1, Lcom/android/settingslib/R$string;->managed_user_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    .line 166
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 170
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 171
    sget-object v3, Lcom/android/settingslib/Utils;->dualAgentPackageName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 178
    sget p1, Lcom/android/settingslib/R$string;->unknown:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 181
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x10405ce

    .line 182
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    .line 185
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settingslib/R$string;->running_process_item_user_label:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWifiIconResource(I)I
    .locals 1

    const/4 v0, 0x0

    .line 511
    invoke-static {v0, p0}, Lcom/android/settingslib/Utils;->getWifiIconResource(ZI)I

    move-result p0

    return p0
.end method

.method public static getWifiIconResource(ZI)I
    .locals 2

    if-ltz p1, :cond_1

    .line 523
    sget-object v0, Lcom/android/settingslib/Utils;->WIFI_PIE:[I

    array-length v1, v0

    if-ge p1, v1, :cond_1

    if-eqz p0, :cond_0

    .line 526
    sget-object p0, Lcom/android/settingslib/Utils;->SHOW_X_WIFI_PIE:[I

    aget p0, p0, p1

    goto :goto_0

    :cond_0
    aget p0, v0, p1

    :goto_0
    return p0

    .line 524
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No Wifi icon found for level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isAudioModeOngoingCall(Landroid/content/Context;)Z
    .locals 2

    .line 567
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 568
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 1

    const v0, 0x1040336

    .line 499
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 501
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInService(Landroid/telephony/ServiceState;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 584
    :cond_0
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getCombinedServiceState(Landroid/telephony/ServiceState;)I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method private static isNotInIwlan(Landroid/telephony/ServiceState;)Z
    .locals 2

    const/4 v0, 0x2

    .line 641
    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 648
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 650
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result p0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v0

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method

.method public static isStorageManagerEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "ro.storage_manager.enabled"

    .line 553
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    .line 557
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "automatic_storage_manager_enabled"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 4

    .line 457
    sget-object v0, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Landroid/content/pm/Signature;

    .line 458
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v3

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    .line 460
    :cond_0
    sget-object v0, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 461
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    .line 463
    :cond_1
    sget-object v0, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 464
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    .line 466
    :cond_2
    sget-object v0, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 467
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    .line 469
    :cond_3
    sget-object p1, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object p1, p1, v2

    if-eqz p1, :cond_4

    .line 470
    invoke-static {p2}, Lcom/android/settingslib/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_4
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    .line 471
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    .line 472
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    .line 473
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.android.printspooler"

    .line 474
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 475
    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    :cond_6
    :goto_0
    return v1
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "phone"

    .line 718
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 719
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 720
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Softphone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 1

    .line 546
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getUpdatableManagedUserTitle$0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 196
    sget v0, Lcom/android/settingslib/R$string;->managed_user_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static secGetUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 243
    iget-object v0, p2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 244
    iget v0, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settingslib/R$dimen;->user_photo_size_in_user_info_dialog:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/graphics/Bitmap;I)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object p0

    return-object p0

    .line 249
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, -0x2710

    goto :goto_0

    :cond_1
    iget p1, p2, Landroid/content/pm/UserInfo;->id:I

    :goto_0
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static supportEnhancedFeature(Ljava/lang/String;)Z
    .locals 2

    .line 696
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static tryGetWifiInfoForVcn(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 684
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 685
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v0

    instance-of v0, v0, Landroid/net/vcn/VcnTransportInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object p0

    check-cast p0, Landroid/net/vcn/VcnTransportInfo;

    .line 690
    invoke-virtual {p0}, Landroid/net/vcn/VcnTransportInfo;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static updateLocationEnabled(Landroid/content/Context;ZII)V
    .locals 2

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_changer"

    .line 117
    invoke-static {v0, v1, p3, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 121
    const-class p3, Landroid/location/LocationManager;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 122
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    return-void
.end method
