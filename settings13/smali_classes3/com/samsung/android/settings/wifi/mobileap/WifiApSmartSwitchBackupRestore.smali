.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;
.super Landroid/content/BroadcastReceiver;
.source "WifiApSmartSwitchBackupRestore.java"


# static fields
.field private static TAG:Ljava/lang/String; = "WifiApSmartSwitchBackupRestore"

.field private static mIsCanceled:Z


# instance fields
.field private DEBUG:Z

.field private final MAX_CLIENT:I

.field private final WL_FAIL:I

.field private final WL_NOT_MAC:I

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private salt:[B

.field private final support5G:Z

.field private final support6G:Z

.field private xmlConf:Ljava/lang/String;

.field private xmlModel:Ljava/lang/String;

.field private xmlOtherConf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 64
    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->DEBUG:Z

    .line 66
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->support5G:Z

    .line 67
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_6G_BASED_ON_COUNTRY:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->support6G:Z

    const/16 v0, 0xa

    .line 96
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->MAX_CLIENT:I

    const/4 v0, 0x3

    .line 97
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->WL_NOT_MAC:I

    const/4 v0, 0x2

    .line 98
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->WL_FAIL:I

    return-void
.end method

.method private getModelName()Ljava/lang/String;
    .locals 4

    .line 431
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 434
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    const/4 v2, 0x0

    .line 435
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SAMSUNG-"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 438
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "model name.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private getSamsungAccountCount(Landroid/content/Context;)I
    .locals 0

    const-string p0, "account"

    .line 822
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    const-string p1, "com.osp.app.signin"

    .line 823
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 824
    array-length p0, p0

    return p0
.end method

.method private loadOtherConf(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "::"

    const-string v4, "Error IOException "

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 833
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v9, p2

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 834
    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 838
    :try_start_2
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    move-result-object v10

    move v11, v7

    .line 839
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1d

    if-ne v11, v7, :cond_0

    .line 841
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "wifi_ap_timeout_setting"

    .line 842
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    div-int/lit8 v12, v12, 0x3c

    .line 841
    invoke-static {v13, v14, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_0
    const/4 v13, 0x2

    if-ne v11, v13, :cond_2

    .line 844
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    :cond_1
    :goto_1
    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_2
    const-string v14, "AutoHotspotSwitchState="

    .line 846
    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    const/4 v15, -0x1

    const/16 v5, 0x3d

    if-eqz v14, :cond_3

    .line 847
    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v15, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 849
    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 850
    sget-object v12, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "restore Auto Hotspot Switch state:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->canAutoHotspotBeEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 852
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v2, v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setAutoHotspotDB(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_3
    const-string v14, "FamilySharingSwitchState="

    .line 855
    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 856
    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v15, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 858
    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 859
    sget-object v12, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "restore family sharing Switch state:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 861
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v12, "wifi_ap_smart_tethering_settings_with_family_restoring_required"

    invoke-static {v5, v12, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 862
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->canFamilySharingBeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 863
    invoke-static {v2, v7}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 866
    :cond_4
    invoke-static {v2, v6}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setFamilySharingDB(Landroid/content/Context;Z)V

    goto/16 :goto_1

    :cond_5
    const-string v14, "D2dAddedDevices="

    .line 869
    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 870
    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v7

    .line 871
    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 872
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 873
    invoke-virtual {v10}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getSize()I

    move-result v12

    add-int/2addr v5, v12

    const/16 v14, 0xa

    if-le v5, v14, :cond_1

    .line 875
    sget-object v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v15, "Exceeds d2d allowed List Size of 10. Delete old devices in Restore DUTB"

    invoke-static {v5, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-virtual {v10}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v5

    new-array v14, v14, [Ljava/lang/String;

    if-eqz v5, :cond_6

    move v15, v6

    .line 880
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 881
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    .line 882
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_6
    move v5, v6

    :goto_3
    if-eqz v12, :cond_1

    .line 888
    aget-object v15, v14, v5

    .line 889
    invoke-virtual {v10, v15}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->removeWhiteList(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v13, :cond_7

    .line 890
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v2, "Error in removing SemWifiApSmartWhiteList!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1042
    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 1045
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1048
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return v6

    :cond_7
    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 898
    :cond_8
    :try_start_4
    invoke-virtual {v12, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 899
    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 900
    array-length v12, v5
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v14, "SemWifiApSmartWhiteList is NOTMAC. QUIT!!"

    const/4 v15, 0x3

    if-le v12, v13, :cond_a

    :try_start_5
    aget-object v12, v5, v7

    aget-object v7, v5, v6

    aget-object v13, v5, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v10, v12, v7, v13}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v15, :cond_9

    .line 901
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    invoke-static {v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1042
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 1045
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 1048
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return v6

    :cond_9
    const/4 v7, 0x1

    .line 904
    :cond_a
    :try_start_7
    aget-object v12, v5, v7

    aget-object v5, v5, v6

    invoke-virtual {v10, v12, v5, v6}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v15, :cond_1

    .line 905
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    invoke-static {v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1042
    :try_start_8
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 1045
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1048
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return v6

    :cond_b
    :try_start_9
    const-string v13, "D2DWifiMac"

    .line 908
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 909
    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v15, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 911
    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 912
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e

    const-string v12, " "

    .line 913
    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v12, ""

    .line 915
    array-length v13, v5

    move v14, v6

    :goto_7
    if-ge v14, v13, :cond_d

    aget-object v15, v5, v14

    .line 916
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 917
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_c
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x1

    goto :goto_7

    :cond_d
    move-object v5, v12

    .line 921
    :cond_e
    sget-object v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "D2DWifiMac:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v12, "smart_tethering_d2d_Wifimac"

    if-eqz v7, :cond_f

    const/4 v5, 0x0

    .line 923
    :try_start_a
    invoke-static {v2, v12, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 925
    :cond_f
    invoke-static {v2, v12, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    const-string v7, "D2DFamilyId"

    .line 927
    invoke-virtual {v12, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 928
    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v15, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 930
    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 931
    sget-object v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "D2DFamilyId:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-string v12, "smart_tethering_d2dfamilyid"

    if-eqz v7, :cond_11

    const/4 v7, 0x0

    .line 933
    :try_start_b
    invoke-static {v2, v12, v7}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_11
    const/4 v7, 0x0

    .line 935
    invoke-static {v2, v12, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_12
    const/4 v7, 0x0

    const-string v13, "D2DHashFamilyId"

    .line 938
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 939
    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v15, :cond_1b

    add-int/lit8 v5, v5, 0x1

    .line 941
    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 942
    sget-object v12, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "D2DHashFamilyId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "hash_value_based_on_d2dFamilyid"

    .line 943
    invoke-static {v2, v12, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->getSamsungAccountCount(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_1b

    .line 945
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v12, "com.samsung.android.server.wifi.softap.smarttethering.d2dfamilyid"

    .line 946
    invoke-virtual {v5, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "android.permission.OVERRIDE_WIFI_CONFIG"

    .line 947
    invoke-virtual {v2, v5, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_13
    const-string v13, "PMFChecked"

    .line 951
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 952
    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v15, :cond_1b

    add-int/lit8 v5, v5, 0x1

    .line 954
    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 955
    sget-object v12, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "restore pmf:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->setPMFChecked(ILandroid/content/Context;)V

    goto/16 :goto_8

    :cond_14
    const-string v13, "5gPreferChecked"

    .line 963
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 964
    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v15, :cond_1b

    add-int/lit8 v5, v5, 0x1

    .line 966
    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 967
    sget-object v12, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "restore 5gPreferChecked : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->set5gPreferChecked(ILandroid/content/Context;)V

    goto/16 :goto_8

    :cond_15
    const-string v13, "last2gChannel"

    .line 970
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 971
    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v15, :cond_1b

    add-int/lit8 v5, v5, 0x1

    .line 973
    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 974
    sget-object v12, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "restore last2gChannel (5gPrefer already checked) : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "wifi_ap_last_2g_channel"

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v12, v13, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :cond_16
    const-string v13, "PSChecked"

    .line 977
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 978
    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v15, :cond_1b

    add-int/lit8 v5, v5, 0x1

    .line 980
    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 981
    sget-object v12, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "restore PSmode:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "wifi_ap_powersave_mode_checked"

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v12, v13, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :cond_17
    const-string v13, "DisableRandomMac"

    .line 988
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 989
    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v15, :cond_1b

    add-int/lit8 v5, v5, 0x1

    .line 991
    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 992
    sget-object v12, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "restore DisableRandomMac:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "wifi_ap_disable_random_mac"

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v12, v13, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :cond_18
    const-string v13, "11axWifi6"

    .line 995
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 996
    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v15, :cond_1b

    add-int/lit8 v5, v5, 0x1

    .line 998
    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 999
    sget-object v12, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "restore 11axWifi6:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_19
    const-string v13, "WifiSharing"

    .line 1004
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 1005
    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v15, :cond_1b

    add-int/lit8 v5, v5, 0x1

    .line 1007
    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1008
    sget-object v12, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "restore WifiSharing:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    sget-boolean v12, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v12, :cond_1b

    .line 1010
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->setWIFISharing(ILandroid/content/Context;)V

    goto :goto_8

    :cond_1a
    const-string v13, "clientsDataUsageSettings"

    .line 1013
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 1014
    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v15, :cond_1b

    add-int/lit8 v5, v5, 0x1

    .line 1016
    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1017
    sget-object v12, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "restore clientsDataUsageSettings:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 1019
    iget-object v12, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v12, v5}, Lcom/samsung/android/wifi/SemWifiManager;->wifiApRestoreClientDataUsageSettingsInfo(Ljava/lang/String;)V

    .line 1020
    sget-object v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v12, "restored client data usage settings"

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_8
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1024
    :cond_1c
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invlaid format. RETURN FALSE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1042
    :try_start_c
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 1045
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 1048
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return v6

    .line 1042
    :cond_1d
    :try_start_d
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 1045
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    const/4 v6, 0x1

    goto/16 :goto_14

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 1048
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_13

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v5, v9

    goto/16 :goto_15

    :catch_5
    move-exception v0

    move-object v1, v0

    move-object v5, v9

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v1, v0

    move-object v5, v9

    goto/16 :goto_d

    :catch_7
    move-exception v0

    move-object v1, v0

    move-object v5, v9

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v5, v7

    goto/16 :goto_15

    :catch_8
    move-exception v0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v5, v7

    goto :goto_a

    :catch_9
    move-exception v0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v5, v7

    goto :goto_d

    :catch_a
    move-exception v0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v5, v7

    goto/16 :goto_10

    :catchall_2
    move-exception v0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v5, v7

    move-object v8, v5

    goto/16 :goto_15

    :catch_b
    move-exception v0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v5, v7

    move-object v8, v5

    .line 1037
    :goto_a
    :try_start_e
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v5, :cond_1e

    .line 1042
    :try_start_f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto :goto_b

    :catch_c
    move-exception v0

    move-object v1, v0

    goto :goto_c

    :cond_1e
    :goto_b
    if-eqz v8, :cond_21

    .line 1045
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    goto/16 :goto_14

    .line 1048
    :goto_c
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_13

    :catch_d
    move-exception v0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v5, v7

    move-object v8, v5

    .line 1034
    :goto_d
    :try_start_10
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error NumberFormatException "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v5, :cond_1f

    .line 1042
    :try_start_11
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto :goto_e

    :catch_e
    move-exception v0

    move-object v1, v0

    goto :goto_f

    :cond_1f
    :goto_e
    if-eqz v8, :cond_21

    .line 1045
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    goto :goto_14

    .line 1048
    :goto_f
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_13

    :catch_f
    move-exception v0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v5, v7

    move-object v8, v5

    .line 1031
    :goto_10
    :try_start_12
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error FileNotFoundException "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v5, :cond_20

    .line 1042
    :try_start_13
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto :goto_11

    :catch_10
    move-exception v0

    move-object v1, v0

    goto :goto_12

    :cond_20
    :goto_11
    if-eqz v8, :cond_21

    .line 1045
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10

    goto :goto_14

    .line 1048
    :goto_12
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_14
    return v6

    :catchall_3
    move-exception v0

    move-object v1, v0

    :goto_15
    if-eqz v5, :cond_22

    .line 1042
    :try_start_14
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto :goto_16

    :catch_11
    move-exception v0

    move-object v2, v0

    goto :goto_17

    :cond_22
    :goto_16
    if-eqz v8, :cond_23

    .line 1045
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11

    goto :goto_18

    .line 1048
    :goto_17
    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_23
    :goto_18
    throw v1
.end method

.method private loadWifiApConfig(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12

    const-string v0, "Exception in loadWifiApConfig.."

    .line 1056
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v2, "loadWifiApConfig.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "sem_wifi"

    .line 1061
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1063
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    .line 1064
    new-instance v5, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v5, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 1065
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1066
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    .line 1067
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1068
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1069
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    const/4 v7, 0x4

    if-ne p2, v7, :cond_0

    .line 1071
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    goto :goto_0

    :cond_0
    move v8, v4

    .line 1073
    :goto_0
    sget-object v9, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "version:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",apBand:"

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",apChannel:"

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v6, :cond_1

    move v6, v4

    .line 1078
    :cond_1
    sget-boolean p2, Lcom/android/settings/Utils;->SPF_SupportMobileApDualAp:Z

    const/4 v9, 0x3

    if-eqz p2, :cond_2

    if-ne v8, v9, :cond_2

    .line 1079
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;)V

    invoke-virtual {v5, p2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    if-ne v8, v7, :cond_3

    .line 1084
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;)V

    invoke-virtual {v5, p2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1089
    :cond_3
    :goto_1
    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->support6G:Z

    const/4 v10, 0x2

    if-eqz p2, :cond_5

    if-ne v8, v10, :cond_5

    if-nez v6, :cond_4

    .line 1091
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;)V

    invoke-virtual {v5, p2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_2

    .line 1096
    :cond_4
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$6;

    invoke-direct {p2, p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;I)V

    invoke-virtual {v5, p2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_2

    :cond_5
    const/16 p2, 0xb

    if-le v6, p2, :cond_6

    .line 1101
    iget-boolean v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->support5G:Z

    if-eqz v8, :cond_6

    .line 1102
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$7;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;)V

    invoke-virtual {v5, p2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_2

    :cond_6
    if-gt v6, p2, :cond_8

    if-nez v6, :cond_7

    .line 1108
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$8;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$8;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;)V

    invoke-virtual {v5, p2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_2

    .line 1113
    :cond_7
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$9;

    invoke-direct {p2, p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;I)V

    invoke-virtual {v5, p2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1118
    :cond_8
    :goto_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 1119
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    .line 1120
    sget-boolean v8, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v8, :cond_9

    if-lez p2, :cond_9

    .line 1122
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v8, p2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApMaxClientToFramework(I)V

    .line 1125
    :cond_9
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 1126
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 1127
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 1128
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 1129
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    if-nez p2, :cond_a

    .line 1132
    invoke-virtual {v5, v3, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_3

    :cond_a
    const/4 v8, 0x5

    if-ne p2, v8, :cond_b

    .line 1134
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOpenEnhancedSecurityTypeSupported()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 1135
    invoke-virtual {v5, v3, v8}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_3

    :cond_b
    if-lez p2, :cond_f

    .line 1138
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    if-ne p2, v7, :cond_c

    .line 1140
    invoke-virtual {v5, v3, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_3

    :cond_c
    const/16 v7, 0x19

    if-ne p2, v7, :cond_d

    .line 1141
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v7}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApWpa3Supported()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1142
    invoke-virtual {v5, v3, v9}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_3

    :cond_d
    const/16 v7, 0x1a

    if-ne p2, v7, :cond_e

    .line 1143
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApWpa3Supported()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 1144
    invoke-virtual {v5, v3, v10}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_3

    .line 1146
    :cond_e
    invoke-virtual {v5, v3, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1149
    :cond_f
    :goto_3
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlModel:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->getModelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 1150
    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v3, "Both models are same"

    invoke-static {p2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_10
    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p2

    .line 1153
    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mLoadedSoftApConfig:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v3, p2}, Lcom/samsung/android/wifi/SemWifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    const/16 p2, 0xe

    if-ge v6, p2, :cond_11

    .line 1156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v3, "wifi_ap_last_2g_channel"

    invoke-static {p2, v3, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1158
    :cond_11
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendConfigChangedBroadcastToSmartTethering(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1164
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catch_0
    move-exception p0

    .line 1167
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :catchall_0
    move-exception p0

    move-object v3, v1

    goto :goto_4

    :catch_1
    move-object v3, v1

    goto :goto_6

    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v3, :cond_12

    .line 1164
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    .line 1167
    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_12
    :goto_5
    throw p0

    :catch_3
    :goto_6
    if-eqz v3, :cond_13

    .line 1164
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    .line 1167
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_8
    move v2, v4

    :goto_9
    return v2
.end method

.method private sendConfigChangedBroadcastToSmartTethering(Landroid/content/Context;)V
    .locals 1

    .line 296
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v0, "sendConfigChangedBroadcastToSmartTethering() - Sending Broadcast from BackupreStore"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.server.wifi.softap.smarttethering.ssid_changed"

    .line 298
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.permission.OVERRIDE_WIFI_CONFIG"

    .line 299
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private writeOtherConf(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "hash_value_based_on_d2dFamilyid"

    const-string v2, "D2DHashFamilyId="

    const-string v3, "smart_tethering_d2dfamilyid"

    const-string v4, "D2DFamilyId="

    const-string v5, "D2DWifiMac="

    const-string v6, "::"

    const-string v7, "Error IOException "

    const-string v8, "\n"

    const/4 v9, 0x0

    .line 551
    :try_start_0
    new-instance v10, Ljava/io/FileWriter;

    new-instance v11, Ljava/io/File;

    move-object/from16 v12, p2

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 552
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "wifi_ap_timeout_setting"

    sget v12, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    div-int/lit8 v12, v12, 0x3c

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v10, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 555
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v10, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 559
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AutoHotspotSwitchState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v10, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 561
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FamilySharingSwitchState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isFamilySharingSetOn(Landroid/content/Context;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v10, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 563
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    move-result-object v11

    .line 564
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getSize()I

    move-result v12

    .line 565
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "D2dAddedDevices="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v10, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v11}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 569
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 570
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    .line 571
    invoke-virtual {v12}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v10, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v12}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v10, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v12}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getDeviceType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v10, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v6, "smart_tethering_d2d_Wifimac"

    .line 580
    invoke-static {v0, v6}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 581
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v12, ""

    if-nez v11, :cond_2

    .line 582
    :try_start_2
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 584
    array-length v11, v6

    move v13, v9

    :goto_1
    if-ge v13, v11, :cond_2

    aget-object v14, v6, v13

    .line 585
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 586
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 591
    :cond_2
    sget-object v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    sget-object v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    sget-object v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v10, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 597
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v10, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v10, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PMFChecked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_pmf_checked"

    invoke-static {v2, v3, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v10, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PSChecked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_powersave_mode_checked"

    invoke-static {v2, v3, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v10, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisableRandomMac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_disable_random_mac"

    invoke-static {v2, v3, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v10, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 613
    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-eqz v1, :cond_3

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSharing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->getWifiSharing(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v10, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 617
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5gPreferChecked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->get5gPreferChecked(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v10, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->get5gPreferChecked(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last2gChannel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_last_2g_channel"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v10, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 623
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v0, p0

    .line 624
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->wifiApBackUpClientDataUsageSettingsInfo()Ljava/lang/String;

    move-result-object v0

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientsDataUsageSettings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v10, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 633
    :cond_5
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 635
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v9, v10

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v9, v10

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    .line 629
    :goto_2
    :try_start_4
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileWriter TIMEOUT exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v9, :cond_6

    .line 633
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 635
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    return-void

    :goto_5
    if-eqz v9, :cond_7

    .line 633
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 635
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_7
    :goto_6
    throw v1
.end method


# virtual methods
.method public Backup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 12

    move-object v1, p0

    move-object v5, p2

    move-object/from16 v0, p4

    move/from16 v2, p5

    .line 644
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/misc/wifi_hostapd/softap.conf"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 646
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v2, "There is no conf file"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v6, 0x3

    const-string v4, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p3

    move-object/from16 v8, p6

    .line 647
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 654
    :cond_0
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, p2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v8, v8

    .line 662
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v10, v3

    mul-long/2addr v8, v10

    cmp-long v3, v8, v6

    if-gez v3, :cond_1

    .line 665
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freeSpaceInBytes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", confSize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v6, 0x2

    const-string v4, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p3

    move-object/from16 v8, p6

    .line 666
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 671
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 672
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "softap.conf"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v6, v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->encryptForBackup(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    .line 674
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 676
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    const/4 v3, -0x1

    if-ne v4, v3, :cond_3

    .line 679
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v2, "encrypt softap fail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v6, 0x1

    const-string v4, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p3

    move-object/from16 v8, p6

    .line 680
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 686
    :cond_3
    new-instance v4, Ljava/io/File;

    const-string v6, "/data/misc/wifi_hostapd/MHStempbackup.conf"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, p1

    .line 687
    invoke-direct {p0, p1, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->writeOtherConf(Landroid/content/Context;Ljava/lang/String;)V

    .line 688
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "MHStempbackup.conf"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->encryptForBackup(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 690
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 692
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_4
    if-ne v0, v3, :cond_5

    .line 695
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v2, "encrypt fail"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v6, 0x1

    const-string v4, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p3

    move-object/from16 v8, p6

    .line 696
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 701
    :cond_5
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->makeXML(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 703
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v2, "makeXML fail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v6, 0x1

    const-string v4, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p3

    move-object/from16 v8, p6

    .line 704
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v4, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p3

    move-object/from16 v8, p6

    .line 708
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    move-object v8, p1

    .line 656
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v6, 0x3

    const-string v4, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p3

    move-object/from16 v8, p6

    .line 657
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Restore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 13

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object/from16 v1, p4

    move/from16 v3, p5

    .line 740
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-nez v4, :cond_0

    const-string v4, "sem_wifi"

    .line 741
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 742
    :cond_0
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 744
    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    :cond_1
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    const-wide/16 v9, 0x3e8

    .line 748
    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    add-int/2addr v8, v6

    .line 750
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApEnabled()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0xa

    if-le v8, v6, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 755
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while turning off MHS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    .line 763
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->getModelName()Ljava/lang/String;

    .line 764
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->readXML(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_3

    .line 766
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v3, "xml parsing error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v6, 0x3

    const-string v4, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    .line 767
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 771
    :cond_3
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v4, v9, v11

    if-lez v4, :cond_9

    .line 774
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "temp.conf"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 775
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v4, v7, v3, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->decryptForRestore(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 778
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v3, "decrypt fail"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v6, 0x1

    const-string v4, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    .line 779
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 783
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->loadWifiApConfig(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 784
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v3, "Softap config loaded fail"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v6, 0x1

    const-string v4, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    .line 785
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 788
    :cond_5
    sget-object v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v7, "softap config loaded success"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlOtherConf:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v4, v9, v11

    if-lez v4, :cond_8

    .line 799
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "MHStemprestore.conf"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 800
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlOtherConf:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v4, v7, v3, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->decryptForRestore(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 803
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v3, "decryptForRestore fail"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v6, 0x1

    const-string v4, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    .line 804
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 807
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->loadOtherConf(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 809
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v3, " other SoftAp config loaded fail"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v6, 0x1

    const-string v4, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    .line 810
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v4, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    .line 818
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 814
    :cond_8
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v3, "can\'t read otherconf file"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v6, 0x3

    const-string v4, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    .line 815
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 791
    :cond_9
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v3, "can\'t read configuration file"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v6, 0x3

    const-string v4, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    .line 792
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method createSoftapConfig(Landroid/content/Context;)V
    .locals 10

    .line 161
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v1, "createSoftapConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sem_wifi"

    .line 163
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 164
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 165
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/data/misc/wifi_hostapd/softap.conf"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x4

    .line 168
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 169
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 173
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object v3

    .line 175
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-le v4, v6, :cond_1

    .line 176
    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v4, "Not checking channel value for DUAL AP case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v3, v7

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    const/4 v8, -0x1

    if-le v4, v8, :cond_2

    const/16 v3, 0x95

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {v3, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-le v4, v8, :cond_0

    .line 180
    invoke-virtual {v3, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 184
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 187
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBandArray(Landroid/content/Context;)[I

    move-result-object p1

    .line 188
    array-length v3, p1

    const/4 v4, 0x3

    if-le v3, v6, :cond_4

    .line 189
    invoke-static {p1, v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->searchForBandInArray([II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 190
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    .line 191
    :cond_3
    invoke-static {p1, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->searchForBandInArray([II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 192
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    .line 194
    :cond_4
    aget v3, p1, v7

    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_5

    .line 195
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    :cond_5
    and-int/2addr v3, v5

    if-eqz v3, :cond_6

    .line 197
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    .line 200
    :cond_6
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 203
    :cond_7
    :goto_1
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 204
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApMaxClientFromFramework()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 205
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 206
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 207
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 208
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 209
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    .line 210
    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "band:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",authType"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_8

    .line 212
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2

    :cond_8
    if-ne p0, v6, :cond_9

    .line 214
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2

    :cond_9
    if-ne p0, v4, :cond_a

    const/16 p1, 0x19

    .line 216
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2

    :cond_a
    if-ne p0, v5, :cond_b

    const/16 p1, 0x1a

    .line 218
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2

    .line 219
    :cond_b
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOpenEnhancedSecurityTypeSupported()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x5

    if-ne p0, p1, :cond_c

    .line 221
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 223
    :cond_c
    :goto_2
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " authType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->checkIfSecurityTypeIsAnyOpenVariant(I)Z

    move-result p0

    if-nez p0, :cond_d

    .line 225
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :cond_d
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 232
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string p1, "Softap.conf is created successfully"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 165
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 229
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error writing hotspot configuration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method decryptForRestore(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 5

    const-string v0, "ioexception "

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 396
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 397
    :try_start_1
    invoke-virtual {p0, v4, p3, p4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->decryptStream(Ljava/io/InputStream;ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 398
    :try_start_2
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/16 p2, 0x400

    :try_start_3
    new-array p3, p2, [B

    :goto_0
    if-eqz p0, :cond_0

    .line 402
    invoke-virtual {p0, p3, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p4

    if-eq p4, v3, :cond_0

    .line 403
    invoke-virtual {p1, p3, v1, p4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 411
    :cond_0
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    if-eqz p0, :cond_1

    .line 413
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 416
    :cond_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_7

    :catch_0
    move-exception p0

    .line 421
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_2
    :goto_2
    move v1, v3

    goto :goto_7

    :catchall_0
    move-exception p2

    move-object v2, p1

    goto/16 :goto_8

    :catch_2
    move-exception p2

    move-object v2, p1

    goto :goto_3

    :catch_3
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object p0, v2

    goto :goto_8

    :catch_4
    move-exception p2

    move-object p0, v2

    goto :goto_3

    :catchall_2
    move-exception p2

    move-object p0, v2

    move-object v4, p0

    goto :goto_8

    :catch_5
    move-exception p2

    move-object p0, v2

    move-object v4, p0

    .line 406
    :goto_3
    :try_start_6
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "error : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_3

    .line 411
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_4

    :catch_6
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_4
    if-eqz p0, :cond_4

    .line 413
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    .line 421
    :goto_5
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_4
    :goto_6
    if-eqz v4, :cond_2

    .line 416
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 425
    :catch_7
    :goto_7
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "decryptForRestore Everything OK?0:1 - ret"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_3
    move-exception p2

    :goto_8
    if-eqz v2, :cond_5

    .line 411
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_9

    :catch_8
    move-exception p0

    goto :goto_a

    :cond_5
    :goto_9
    if-eqz p0, :cond_6

    .line 413
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_b

    .line 421
    :goto_a
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_6
    :goto_b
    if-eqz v4, :cond_7

    .line 416
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 424
    :catch_9
    :cond_7
    :goto_c
    throw p2
.end method

.method public decryptStream(Ljava/io/InputStream;ILjava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 714
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    new-array v1, v1, [B

    .line 718
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_0

    .line 719
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v3, "Error reading bytes into iv"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    const/16 p2, 0x10

    new-array p2, p2, [B

    .line 724
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->salt:[B

    .line 725
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p2

    if-gtz p2, :cond_1

    .line 726
    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string v1, "Error reading bytes into salt"

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_1
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->generatePBKDF2SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    goto :goto_0

    .line 730
    :cond_2
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    :goto_0
    const/4 p2, 0x2

    .line 734
    invoke-virtual {v0, p2, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 735
    new-instance p0, Ljavax/crypto/CipherInputStream;

    invoke-direct {p0, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object p0
.end method

.method encryptForBackup(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 5

    const-string v0, "ioexception "

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 358
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 359
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    :try_start_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->encryptStream(Ljava/io/OutputStream;ILjava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    const/16 p0, 0x400

    new-array p2, p0, [B

    .line 363
    :goto_0
    invoke-virtual {v4, p2, v1, p0}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-eq p3, v3, :cond_0

    .line 364
    invoke-virtual {v2, p2, v1, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 372
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    .line 374
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 377
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_9

    .line 382
    :goto_2
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_2
    :goto_4
    move v1, v3

    goto :goto_9

    :catch_2
    move-exception p0

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object p1, v2

    goto :goto_a

    :catch_3
    move-exception p0

    move-object p1, v2

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object p1, v2

    move-object v4, p1

    goto :goto_a

    :catch_4
    move-exception p0

    move-object p1, v2

    move-object v4, p1

    .line 367
    :goto_5
    :try_start_5
    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "error : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_3

    .line 372
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    :catch_5
    move-exception p0

    goto :goto_7

    :cond_3
    :goto_6
    if-eqz p1, :cond_4

    .line 374
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    .line 382
    :goto_7
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_4
    :goto_8
    if-eqz v4, :cond_2

    .line 377
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 386
    :catch_6
    :goto_9
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Everything OK?0:1 - ret"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_2
    move-exception p0

    :goto_a
    if-eqz v2, :cond_5

    .line 372
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_b

    :catch_7
    move-exception p1

    goto :goto_c

    :cond_5
    :goto_b
    if-eqz p1, :cond_6

    .line 374
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_d

    .line 382
    :goto_c
    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_6
    :goto_d
    if-eqz v4, :cond_7

    .line 377
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 385
    :catch_8
    :cond_7
    :goto_e
    throw p0
.end method

.method public encryptStream(Ljava/io/OutputStream;ILjava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 266
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    new-array v1, v1, [B

    .line 269
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 270
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 273
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->generateEncryptSalt()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 277
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->generatePBKDF2SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    .line 282
    :goto_0
    invoke-virtual {v0, v1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 283
    new-instance p0, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p0, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object p0
.end method

.method public generateEncryptSalt()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 247
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->salt:[B

    .line 248
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 249
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->salt:[B

    return-object p0
.end method

.method public generatePBKDF2SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const-string v0, "PBKDF2WithHmacSHA1"

    .line 257
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 258
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->salt:[B

    const/16 v2, 0x3e8

    const/16 v3, 0x100

    invoke-direct {v1, p1, p0, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 259
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 261
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    const-string v0, "AES"

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method public generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "SHA-256"

    .line 237
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    const-string v0, "UTF-8"

    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    const/16 p1, 0x10

    new-array v0, p1, [B

    .line 240
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string p1, "AES"

    invoke-direct {p0, v0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method public get5gPreferChecked(Landroid/content/Context;)I
    .locals 2

    const-string v0, "sem_wifi"

    .line 344
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 345
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 346
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBandArray(Landroid/content/Context;)[I

    move-result-object p0

    .line 347
    array-length p1, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    aget p0, p0, v0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public getWifiSharing(Landroid/content/Context;)I
    .locals 2

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "wifi_ap_wifi_sharing"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 317
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getWifiSharing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method makeXML(Ljava/lang/String;)I
    .locals 11

    const-string v0, "otherconf"

    const-string v1, "conf"

    const-string v2, "model"

    const-string v3, "Wi-Fi"

    const-string v4, "Error IOException "

    const-string v5, ""

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 512
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v8

    .line 513
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "wifi_wpaconf.xml"

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 514
    new-instance v9, Ljava/io/FileWriter;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 515
    :try_start_1
    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string p1, "UTF-8"

    .line 517
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, p1, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 518
    invoke-interface {v8, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 520
    invoke-interface {v8, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 521
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->getModelName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v8, p0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 522
    invoke-interface {v8, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 524
    invoke-interface {v8, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p0, "softap.conf"

    .line 525
    invoke-interface {v8, p0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 526
    invoke-interface {v8, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 528
    invoke-interface {v8, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p0, "MHStempbackup.conf"

    .line 529
    invoke-interface {v8, p0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 530
    invoke-interface {v8, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 532
    invoke-interface {v8, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 533
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v6, 0x0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 542
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v7, v9

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v7, v9

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 535
    :goto_0
    :try_start_3
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeXML exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_0

    .line 540
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 542
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return v6

    :goto_3
    if-eqz v7, :cond_1

    .line 540
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 542
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_1
    :goto_4
    throw p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {p1}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    if-eqz v0, :cond_5

    const-string v1, "SAVE_PATH"

    .line 112
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "SOURCE"

    .line 113
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "SESSION_KEY"

    .line 114
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "EXPORT_SESSION_TIME"

    .line 115
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "ACTION"

    const/4 v2, 0x0

    .line 116
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "SECURITY_LEVEL"

    .line 117
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v3, "EXTRA_BACKUP_ITEM"

    .line 118
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    const-string p2, "com.samsung.android.intent.action.REQUEST_BACKUP_HOTSPOT_SETTING"

    .line 119
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v3, "Sending Response FAIL"

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz p2, :cond_2

    if-ne v1, v5, :cond_0

    .line 122
    sput-boolean v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mIsCanceled:Z

    goto/16 :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 124
    sput-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mIsCanceled:Z

    .line 125
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, v6

    move-object v6, v8

    move v8, v10

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 130
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 132
    :cond_1
    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    invoke-static {p2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v7, 0x3

    const-string v5, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    move-object v2, p0

    move-object v3, p1

    .line 133
    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p2, "com.samsung.android.intent.action.REQUEST_RESTORE_HOTSPOT_SETTING"

    .line 138
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    if-ne v1, v5, :cond_3

    .line 141
    sput-boolean v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mIsCanceled:Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 143
    sput-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mIsCanceled:Z

    .line 144
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$2;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, v6

    move-object v6, v8

    move v8, v10

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 149
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 151
    :cond_4
    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    invoke-static {p2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v7, 0x3

    const-string v5, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    move-object v2, p0

    move-object v3, p1

    .line 152
    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method readXML(Ljava/lang/String;)I
    .locals 12

    const-string v0, "Exception on closing.."

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 447
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    const/4 v5, 0x1

    .line 448
    invoke-virtual {v4, v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 449
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 451
    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "wifi_wpaconf.xml"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 452
    :try_start_1
    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 454
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    const-string v3, ""
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v2

    :goto_0
    if-eq p1, v5, :cond_9

    const/4 v8, 0x2

    const-string v9, "otherconf"

    const-string v10, "conf"

    const-string v11, "model"

    if-ne p1, v8, :cond_2

    .line 462
    :try_start_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, p1

    goto/16 :goto_3

    :cond_1
    :goto_1
    move-object v3, p1

    move v7, v5

    goto/16 :goto_3

    :cond_2
    const/4 v8, 0x4

    if-ne p1, v8, :cond_5

    if-eqz v7, :cond_3

    .line 467
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 468
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlModel:Ljava/lang/String;

    .line 469
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[readXML] model : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlModel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_3
    if-eqz v7, :cond_4

    .line 470
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 471
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    .line 472
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[readXML] xmlConf : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    if-eqz v7, :cond_8

    .line 473
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 474
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlOtherConf:Ljava/lang/String;

    .line 475
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[readXML] xmlOtherConf : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlOtherConf:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    const/4 v8, 0x3

    if-ne p1, v8, :cond_8

    .line 478
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz v7, :cond_6

    .line 479
    invoke-virtual {v11, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    :goto_2
    move v7, v2

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    .line 481
    invoke-virtual {v10, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_8

    .line 483
    invoke-virtual {v9, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 488
    :cond_8
    :goto_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 499
    :cond_9
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 501
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move v1, v2

    goto :goto_8

    :catchall_0
    move-exception p0

    move-object v3, v6

    goto :goto_9

    :catch_1
    move-exception p0

    move-object v3, v6

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v3, v6

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_9

    :catch_3
    move-exception p0

    .line 494
    :goto_5
    :try_start_4
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read XML Error "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_a

    .line 499
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    .line 501
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_5
    move-exception p0

    .line 491
    :goto_7
    :try_start_6
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runtimeException "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_a

    .line 499
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_6
    move-exception p0

    .line 501
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    :cond_a
    :goto_8
    return v1

    :goto_9
    if-eqz v3, :cond_b

    .line 499
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_a

    :catch_7
    move-exception p1

    .line 501
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_b
    :goto_a
    throw p0
.end method

.method public sendResponse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1176
    sget-boolean p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mIsCanceled:Z

    if-eqz p0, :cond_0

    .line 1177
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    const-string p1, "sendResponse cancelled"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1180
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendResponse,action:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",result:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",err_code:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",source:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "RESULT"

    .line 1183
    invoke-virtual {p0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "ERR_CODE"

    .line 1184
    invoke-virtual {p0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p2, 0x0

    const-string p3, "REQ_SIZE"

    .line 1185
    invoke-virtual {p0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "SOURCE"

    .line 1186
    invoke-virtual {p0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "EXPORT_SESSION_TIME "

    .line 1187
    invoke-virtual {p0, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.wssnps.permission.COM_WSSNPS"

    .line 1188
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public set5gPreferChecked(ILandroid/content/Context;)V
    .locals 2

    .line 290
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " set5gPreferChecked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "wifi_ap_5G_checked"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setPMFChecked(ILandroid/content/Context;)V
    .locals 2

    .line 336
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setPMFChecked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "wifi_ap_pmf_checked"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setWIFISharing(ILandroid/content/Context;)V
    .locals 2

    .line 307
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setWIFISharing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "wifi_ap_wifi_sharing"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
