.class public abstract Lcom/android/settingslib/Utils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final STORAGE_MANAGER_ENABLED_PROPERTY:Ljava/lang/String; = "ro.storage_manager.enabled"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final WIFI_PIE:[I

.field public static mCountryCode:Ljava/lang/String;

.field public static sDefaultWebViewPackageName:Ljava/lang/String;

.field public static sPermissionControllerPackageName:Ljava/lang/String;

.field public static sServicesSystemSharedLibPackageName:Ljava/lang/String;

.field public static sSharedSystemSharedLibPackageName:Ljava/lang/String;

.field public static sSystemSignature:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x7f08097b

    const v1, 0x7f08097c

    const v2, 0x7f08097a

    const v3, 0x7f08097d

    const v4, 0x7f08097e

    filled-new-array {v2, v0, v1, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->WIFI_PIE:[I

    return-void
.end method

.method public static containsIncompatibleChargers(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incompatible_charger_warning_disabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string p0, "containsIncompatibleChargers: disabled"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    const-class v1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/usb/UsbManager;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getPorts()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbPort;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "usbPort: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->supportsComplianceWarnings()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getComplianceWarnings()[I

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v3, v1

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    array-length v3, v1

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_3

    aget v5, v1, v4

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->enableUsbDataComplianceWarning()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->enableInputPowerLimitedWarning()Z

    move-result v6

    if-eqz v6, :cond_8

    if-eq v5, v7, :cond_7

    const/4 v6, 0x5

    if-eq v5, v6, :cond_7

    goto :goto_2

    :cond_7
    return v2

    :cond_8
    if-eq v5, v2, :cond_9

    if-eq v5, v7, :cond_9

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    return v2

    :cond_a
    :goto_3
    return v0

    :goto_4
    const-string v1, "containsIncompatibleChargers()"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static formatPercentage(DZ)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    :cond_0
    double-to-int p0, p0

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

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAlphaInvariantColorFilterForColor(I)Landroid/graphics/ColorFilter;
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    new-instance v4, Landroid/graphics/ColorMatrix;

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float p0, p0

    const/16 v5, 0x14

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v6, 0x1

    aput v0, v5, v6

    const/4 v6, 0x2

    aput v0, v5, v6

    const/4 v6, 0x3

    aput v0, v5, v6

    const/4 v6, 0x4

    aput v2, v5, v6

    const/4 v2, 0x5

    aput v0, v5, v2

    const/4 v2, 0x6

    aput v0, v5, v2

    const/4 v2, 0x7

    aput v0, v5, v2

    const/16 v2, 0x8

    aput v0, v5, v2

    const/16 v2, 0x9

    aput v3, v5, v2

    const/16 v2, 0xa

    aput v0, v5, v2

    const/16 v2, 0xb

    aput v0, v5, v2

    const/16 v2, 0xc

    aput v0, v5, v2

    const/16 v2, 0xd

    aput v0, v5, v2

    const/16 v2, 0xe

    aput p0, v5, v2

    const/16 p0, 0xf

    aput v0, v5, p0

    const/16 p0, 0x10

    aput v0, v5, p0

    const/16 p0, 0x11

    aput v0, v5, p0

    const/high16 p0, 0x3f800000    # 1.0f

    const/16 v2, 0x12

    aput p0, v5, v2

    const/16 p0, 0x13

    aput v0, v5, p0

    invoke-direct {v4, v5}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-direct {v1, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v1
.end method

.method public static getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :catch_0
    :cond_2
    move v2, v1

    :goto_0
    sget-object v3, Lcom/android/launcher3/icons/IconFactory;->sPoolSync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    sget-object v4, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    if-eqz v4, :cond_3

    iget-object v5, v4, Lcom/android/launcher3/icons/IconFactory;->next:Lcom/android/launcher3/icons/IconFactory;

    sput-object v5, Lcom/android/launcher3/icons/IconFactory;->sPool:Lcom/android/launcher3/icons/IconFactory;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/launcher3/icons/IconFactory;->next:Lcom/android/launcher3/icons/IconFactory;

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v4, Lcom/android/launcher3/icons/IconFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07030a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v4, p0, v3, v5}, Lcom/android/launcher3/icons/IconFactory;-><init>(Landroid/content/Context;II)V

    :goto_1
    :try_start_2
    new-instance v3, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lcom/android/launcher3/util/UserIconInfo;

    invoke-direct {v5, p1, v2}, Lcom/android/launcher3/util/UserIconInfo;-><init>(Landroid/os/UserHandle;I)V

    iput-object v5, v3, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserIconInfo:Lcom/android/launcher3/util/UserIconInfo;

    invoke-virtual {v4, v0, v3}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v4}, Lcom/android/launcher3/icons/IconFactory;->close()V

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v4}, Lcom/android/launcher3/icons/IconFactory;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :goto_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static getBatteryLevel(Landroid/content/Intent;)I
    .locals 3

    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    mul-int/2addr v0, v2

    div-int/2addr v0, p0

    return v0
.end method

.method public static getBatteryStatus(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1405b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v6, "plugged"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v8

    const-string v9, "android.os.extra.CHARGING_STATUS"

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string v9, "present"

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    const-string v9, "max_charging_current"

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v11, "max_charging_voltage"

    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    const v0, 0x4c4b40

    :cond_0
    if-lez v9, :cond_1

    int-to-double v11, v9

    const-wide v13, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v11, v13

    move v15, v3

    int-to-double v2, v0

    mul-double/2addr v11, v2

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    goto :goto_0

    :cond_1
    move v15, v3

    move v0, v10

    :goto_0
    const/4 v2, 0x5

    if-eq v1, v2, :cond_15

    const/16 v1, 0x64

    if-lt v8, v1, :cond_2

    goto/16 :goto_8

    :cond_2
    const/4 v1, 0x2

    move v2, v15

    if-ne v2, v1, :cond_13

    const v2, 0x7f1405ad

    const v3, 0x7f1405b3

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->isChargingStringV2Enabled()Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_a

    :cond_4
    const/4 v5, 0x1

    if-eq v6, v5, :cond_9

    if-ne v6, v1, :cond_5

    goto :goto_3

    :cond_5
    const/16 v0, 0x8

    if-ne v6, v0, :cond_7

    invoke-static {}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->isChargingStringV2Enabled()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const v3, 0x7f1405ae

    :goto_1
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_a

    :cond_7
    invoke-static {}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->isChargingStringV2Enabled()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    const v3, 0x7f1405b4

    :goto_2
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_a

    :cond_9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b0011

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->isChargingStringV2Enabled()Z

    move-result v9

    if-eqz v9, :cond_a

    const v9, 0x7f0b0010

    goto :goto_4

    :cond_a
    const v9, 0x7f0b000f

    :goto_4
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-gtz v0, :cond_b

    move v5, v10

    goto :goto_5

    :cond_b
    if-ge v0, v6, :cond_c

    move v5, v7

    goto :goto_5

    :cond_c
    if-le v0, v8, :cond_d

    move v5, v1

    :cond_d
    :goto_5
    if-eqz v5, :cond_11

    if-eq v5, v1, :cond_f

    invoke-static {}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->isChargingStringV2Enabled()Z

    move-result v0

    if-eqz v0, :cond_e

    move v2, v3

    :cond_e
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_f
    invoke-static {}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->isChargingStringV2Enabled()Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f1405b0

    goto :goto_6

    :cond_10
    const v0, 0x7f1405af

    :goto_6
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_11
    invoke-static {}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->isChargingStringV2Enabled()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_7

    :cond_12
    const v3, 0x7f1405b2

    :goto_7
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_13
    const/4 v0, 0x3

    if-ne v2, v0, :cond_14

    const v0, 0x7f1405b5

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_14
    const/4 v0, 0x4

    if-ne v2, v0, :cond_17

    const v0, 0x7f1405b8

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_15
    :goto_8
    if-eqz p2, :cond_16

    const v0, 0x7f1405b7

    goto :goto_9

    :cond_16
    const v0, 0x7f1405b6

    :goto_9
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_17
    :goto_a
    return-object v5
.end method

.method public static getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 0

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static getColorAttrDefaultColor(Landroid/content/Context;I)I
    .locals 0

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getCombinedServiceState(Landroid/telephony/ServiceState;)I
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v0, :cond_1

    if-ne v1, v2, :cond_3

    :cond_1
    invoke-virtual {p0, v2, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_2

    move p0, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public static getDisabled(Landroid/content/Context;I)I
    .locals 2

    const v0, 0x1010033

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static getTetheringLabel(Landroid/net/TetheringManager;)I
    .locals 4

    invoke-virtual {p0}, Landroid/net/TetheringManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/TetheringManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/TetheringManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object p0

    array-length v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    array-length v1, v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    array-length p0, p0

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    const p0, 0x7f142ee5

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    return p0

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    return p0

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    return p0

    :cond_5
    if-eqz v1, :cond_6

    const p0, 0x7f142ee9

    return p0

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    const p0, 0x7f142ee8

    return p0

    :cond_7
    if-eqz v0, :cond_8

    const p0, 0x7f142ee7

    return p0

    :cond_8
    const p0, 0x7f142ee6

    return p0
.end method

.method public static getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6

    sget v0, Lcom/android/settingslib/drawable/UserIconDrawable;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0713aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v1

    if-nez v1, :cond_0

    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    new-instance v1, Lcom/android/settingslib/drawable/UserIconDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settingslib/drawable/UserIconDrawable$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-string p0, "WORK_PROFILE_USER_ICON"

    const-string v3, "SOLID_COLORED"

    invoke-virtual {p1, p0, v3, p2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawableForDensity(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p0

    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v3, "com.samsung.android.da.daagent"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance p1, Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-direct {p1, v0}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, p2, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iget-object p2, p1, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iput-object v0, p1, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserIcon:Landroid/graphics/Bitmap;

    iput-object p0, p1, Lcom/android/settingslib/drawable/UserIconDrawable;->mUserDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_2

    iput-object v0, p1, Lcom/android/settingslib/drawable/UserIconDrawable;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->bake()V

    return-object p1

    :cond_3
    iget-object v1, p2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p0, Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-direct {p0, v0}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->bake()V

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, p1, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance p1, Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-direct {p1, v0}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    invoke-static {p0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->bake()V

    return-object p1
.end method

.method public static getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 6

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.da.daagent"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_2

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

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const p1, 0x7f14302c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/Utils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settingslib/Utils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-string p0, "Settings.WORK_PROFILE_USER_LABEL"

    invoke-virtual {p1, p0, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x1040617

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f141f5d

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWifiIconResource(I)I
    .locals 2

    if-ltz p0, :cond_0

    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/android/settingslib/Utils;->WIFI_PIE:[I

    aget p0, v0, p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No Wifi icon found for level: "

    invoke-static {p0, v1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isAudioModeOngoingCall(Landroid/content/Context;)Z
    .locals 2

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

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

    const v0, 0x104033f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

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

.method public static isEssentialPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    :cond_2
    sget-object p1, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "com.android.printspooler"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Landroid/webkit/Flags;->updateServiceV2()Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/android/settingslib/Utils;->sDefaultWebViewPackageName:Ljava/lang/String;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {}, Landroid/webkit/WebViewUpdateManager;->getInstance()Landroid/webkit/WebViewUpdateManager;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/webkit/WebViewUpdateManager;->getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/webkit/IWebViewUpdateService;->getDefaultWebViewPackage()Landroid/webkit/WebViewProviderInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Utils"

    const-string v2, "RemoteException when trying to fetch default WebView package Name"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    iget-object p1, v0, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    sput-object p1, Lcom/android/settingslib/Utils;->sDefaultWebViewPackageName:Ljava/lang/String;

    :cond_6
    sget-object p1, Lcom/android/settingslib/Utils;->sDefaultWebViewPackageName:Ljava/lang/String;

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    :cond_7
    invoke-static {p0, p2}, Lcom/android/settingslib/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    const/4 p0, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 p0, 0x1

    :goto_3
    return p0
.end method

.method public static isInService(Landroid/telephony/ServiceState;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

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

.method public static isStorageManagerEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ro.storage_manager.enabled"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

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
    .locals 6

    sget-object v0, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    new-array v0, v2, [Landroid/content/pm/Signature;

    :try_start_0
    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {p1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    aget-object v4, v4, v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v4, v1

    :goto_0
    aput-object v4, v0, v3

    sput-object v0, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    :cond_1
    sget-object v0, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v0, v0, v3

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    aget-object v1, v4, v3

    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/Utils;->isEssentialPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :cond_5
    :goto_1
    return v2
.end method

.method public static isVisibleExternalCode(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "show_external_code"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const-string v0, "ro.build.characteristics"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    :try_start_0
    const-string v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v3, "ATT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "APP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :catch_0
    :cond_2
    move v0, v1

    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 1

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static secGetUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0713ad

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    new-instance p2, Lcom/android/settingslib/drawable/CircleFramedDrawable;

    invoke-direct {p2, p1, p0}, Lcom/android/settingslib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    return-object p2

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
