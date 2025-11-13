.class public final Lcom/android/settings/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DEBUG:Z

.field private static final mErrorListener:Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;

.field private static final mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/Utils;->DEBUG:Z

    .line 262
    new-instance v0, Lcom/android/settings/bluetooth/Utils$1;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/Utils$1;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/Utils;->mErrorListener:Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;

    .line 269
    new-instance v0, Lcom/android/settings/bluetooth/Utils$2;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/Utils$2;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    return-void
.end method

.method public static getBondedConnectedDeviceCount(Landroid/content/Context;)[I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 621
    fill-array-data v0, :array_0

    .line 622
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 623
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 626
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object p0

    .line 627
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 628
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 630
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    aget v1, v0, v4

    add-int/2addr v1, v4

    aput v1, v0, v4

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getHostOverlayIconBitmap(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/Bitmap;
    .locals 0

    .line 339
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getHostOverlayIconBitmap(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getHostOverlayIconDrawable(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 343
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getHostOverlayIconDrawable(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getHostOverlayIconDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 347
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getHostOverlayIconDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1

    .line 250
    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method public static getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 1

    .line 758
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.osp.app.signin"

    .line 759
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 760
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 761
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    .line 655
    invoke-static/range {v0 .. v8}, Lcom/android/settings/bluetooth/Utils;->insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "content://com.sec.knox.provider/AuditLog"

    .line 661
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 662
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 663
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v2, "severity"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 664
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "group"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 665
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo p2, "outcome"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 666
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "uid"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "component"

    .line 667
    invoke-virtual {v1, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "message"

    .line 668
    invoke-virtual {v1, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_0

    const-string/jumbo p1, "redactedMessage"

    .line 669
    invoke-virtual {v1, p1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_0
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "userid"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 672
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 674
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IllegalArgumentException : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static isAdvancedDetailsHeader(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const-string/jumbo v0, "settings_ui"

    const-string v1, "bt_advanced_header_enabled"

    const/4 v2, 0x1

    .line 720
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    const-string v3, "BluetoothUtils"

    if-nez v0, :cond_0

    const-string p0, "isAdvancedDetailsHeader: advancedEnabled is false"

    .line 723
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x6

    .line 727
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "isAdvancedDetailsHeader: untetheredHeadset is true"

    .line 730
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/16 v0, 0x11

    .line 734
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Untethered Headset"

    .line 736
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Watch"

    .line 737
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Default"

    .line 738
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 739
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAdvancedDetailsHeader: deviceType is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isBluetoothScanningEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "ble_scan_always_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isLocaleRTL()Z
    .locals 1

    .line 680
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->isLocaleRTL(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public static isLocaleRTL(Ljava/util/Locale;)Z
    .locals 1

    .line 706
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ar"

    .line 707
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "he"

    .line 708
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ur"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "yi"

    .line 709
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ji"

    .line 710
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSamsungAccountLogged(Landroid/content/Context;)Z
    .locals 1

    .line 747
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.osp.app.signin"

    .line 748
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 749
    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportContactUs(Landroid/content/Context;)Z
    .locals 2

    const-wide/32 v0, 0xdcc6cc8

    .line 649
    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;J)Z

    move-result p0

    return p0
.end method

.method public static launchActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/high16 v0, 0x14000000

    .line 443
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 446
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 448
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static makeBsdcDataForSaLogging(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 453
    invoke-static/range {p0 .. p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 455
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x5

    new-array v2, v1, [I

    .line 457
    fill-array-data v2, :array_0

    const/4 v3, 0x4

    new-array v4, v3, [I

    .line 458
    fill-array-data v4, :array_1

    const/16 v5, 0xb

    new-array v5, v5, [I

    .line 459
    fill-array-data v5, :array_2

    .line 462
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopyForSalogging()Ljava/util/Collection;

    move-result-object v0

    .line 463
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v7, 0xa

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 464
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v11, 0xc

    if-eq v1, v11, :cond_8

    aget v1, v2, v14

    add-int/2addr v1, v15

    aput v1, v2, v14

    .line 470
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getType()I

    move-result v1

    if-eqz v1, :cond_5

    if-eq v1, v15, :cond_4

    if-eq v1, v12, :cond_3

    if-eq v1, v13, :cond_2

    aget v1, v2, v15

    add-int/2addr v1, v15

    aput v1, v2, v15

    goto :goto_1

    :cond_2
    aget v1, v2, v3

    add-int/2addr v1, v15

    aput v1, v2, v3

    goto :goto_1

    :cond_3
    aget v1, v2, v13

    add-int/2addr v1, v15

    aput v1, v2, v13

    goto :goto_1

    :cond_4
    aget v1, v2, v12

    add-int/2addr v1, v15

    aput v1, v2, v12

    goto :goto_1

    :cond_5
    aget v1, v2, v15

    add-int/2addr v1, v15

    aput v1, v2, v15

    .line 490
    :goto_1
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 491
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    .line 494
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    aget v1, v4, v13

    add-int/2addr v1, v15

    aput v1, v4, v13

    goto :goto_2

    .line 496
    :cond_6
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    aget v1, v4, v14

    add-int/2addr v1, v15

    aput v1, v4, v14

    goto :goto_2

    :cond_7
    aget v1, v4, v15

    add-int/2addr v1, v15

    aput v1, v4, v15

    .line 502
    :goto_2
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->semGetBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 505
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    aget v1, v5, v14

    add-int/2addr v1, v15

    aput v1, v5, v14

    goto :goto_3

    :sswitch_0
    aget v1, v5, v7

    add-int/2addr v1, v15

    aput v1, v5, v7

    goto :goto_3

    :sswitch_1
    aget v1, v5, v8

    add-int/2addr v1, v15

    aput v1, v5, v8

    goto :goto_3

    :sswitch_2
    aget v1, v5, v9

    add-int/2addr v1, v15

    aput v1, v5, v9

    goto :goto_3

    :sswitch_3
    aget v1, v5, v10

    add-int/2addr v1, v15

    aput v1, v5, v10

    goto :goto_3

    :sswitch_4
    const/4 v1, 0x6

    aget v6, v5, v1

    add-int/2addr v6, v15

    aput v6, v5, v1

    goto :goto_3

    :sswitch_5
    const/4 v1, 0x5

    aget v6, v5, v1

    add-int/2addr v6, v15

    aput v6, v5, v1

    goto :goto_3

    :sswitch_6
    aget v1, v5, v3

    add-int/2addr v1, v15

    aput v1, v5, v3

    goto :goto_3

    :sswitch_7
    aget v1, v5, v13

    add-int/2addr v1, v15

    aput v1, v5, v13

    goto :goto_3

    :sswitch_8
    const/4 v1, 0x2

    aget v6, v5, v1

    add-int/2addr v6, v15

    aput v6, v5, v1

    goto :goto_3

    :sswitch_9
    aget v1, v5, v15

    add-int/2addr v1, v15

    aput v1, v5, v15

    goto :goto_3

    :sswitch_a
    aget v1, v5, v14

    add-int/2addr v1, v15

    aput v1, v5, v14

    :cond_8
    :goto_3
    const/4 v1, 0x5

    goto/16 :goto_0

    .line 548
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    aget v1, v2, v14

    .line 551
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "DeviceCount"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Action"

    move-object/from16 v6, p1

    .line 554
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v6, "ScanDelay"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v2, v15

    .line 560
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "DeviceType_Unknown"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    aget v6, v2, v1

    .line 561
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "DeviceType_Classic"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v2, v13

    .line 562
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "DeviceType_BLE"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v2, v3

    .line 563
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceType_Dual"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v4, v14

    .line 566
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Name_Alias"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v4, v15

    .line 567
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Name_Original"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    aget v2, v4, v1

    .line 568
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Name_Contact"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v4, v13

    .line 569
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Name_Address"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v5, v14

    .line 572
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_MISC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v5, v15

    .line 573
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_COMPUTER"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    aget v1, v5, v1

    .line 574
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_PHONE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v5, v13

    .line 575
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_NETWORKING"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v5, v3

    .line 576
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_AUDIO_VIDEO"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    aget v1, v5, v1

    .line 577
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_PERIPHERAL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    aget v1, v5, v1

    .line 578
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_IMAGING"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v5, v10

    .line 579
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_WEARABLE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v5, v9

    .line 580
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_TOY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v5, v8

    .line 581
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_HEALTH"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget v1, v5, v7

    .line 582
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "COD_UNCATEGORIZED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x100 -> :sswitch_9
        0x200 -> :sswitch_8
        0x300 -> :sswitch_7
        0x400 -> :sswitch_6
        0x500 -> :sswitch_5
        0x600 -> :sswitch_4
        0x700 -> :sswitch_3
        0x800 -> :sswitch_2
        0x900 -> :sswitch_1
        0x1f00 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static makeNotiSound(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "audio"

    .line 315
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x2

    .line 316
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 317
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    const/4 v2, 0x5

    .line 318
    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 319
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 320
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 321
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->makeVibrate(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 324
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static makeVibrate(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "vibrator"

    .line 329
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0x3e8

    .line 330
    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method static showConnectingError(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 3

    .line 215
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x365

    invoke-virtual {v0, p0, v1, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->visible(Landroid/content/Context;III)V

    .line 218
    sget v0, Lcom/android/settings/R$string;->bluetooth_connecting_error_message:I

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;ILcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    return-void
.end method

.method private static showError(Landroid/content/Context;Ljava/lang/String;ILcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 232
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object p2

    .line 234
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 236
    :try_start_0
    new-instance p0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lcom/android/settings/R$string;->bluetooth_error_title:I

    .line 237
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 238
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x104000a

    const/4 p2, 0x0

    .line 239
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 240
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BluetoothUtils"

    const-string p2, "Cannot show error dialog."

    .line 242
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static startContactUs(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "com.android.bluetooth"

    const-string v1, "Bluetooth"

    const-string v2, "22o85f4b60"

    .line 640
    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/Utils;->getContactUsIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "faqUrl"

    const-string/jumbo v2, "voc://view/categories"

    .line 641
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 644
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
