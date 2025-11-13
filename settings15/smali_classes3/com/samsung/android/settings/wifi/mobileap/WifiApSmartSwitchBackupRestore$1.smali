.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$filepath:Ljava/lang/String;

.field public final synthetic val$saveKey:Ljava/lang/String;

.field public final synthetic val$securityLevel:I

.field public final synthetic val$sessiontime:Ljava/lang/String;

.field public final synthetic val$source:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    iput p8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$filepath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$source:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$saveKey:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$securityLevel:I

    iput-object p7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$sessiontime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$samsung$android$settings$wifi$mobileap$WifiApSmartSwitchBackupRestore$1()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "/data/misc/wifi_hostapd/softap.conf"

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, " authType="

    const-string v5, "band:"

    const-string v6, "WifiApSmartSwitchBackupRestore"

    const-string v7, "createSoftapConfig"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "sem_wifi"

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v7}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v7

    const/4 v8, -0x1

    :try_start_0
    new-instance v9, Ljava/io/DataOutputStream;

    new-instance v10, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v9, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    :try_start_1
    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v7}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v7}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-le v12, v14, :cond_1

    const-string v11, "Not checking channel value for DUAL AP case"

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v11, v15

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v11, v13}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v12

    if-le v12, v8, :cond_2

    const/16 v11, 0x95

    goto :goto_0

    :cond_2
    invoke-virtual {v11, v14}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v12

    if-le v12, v8, :cond_0

    invoke-virtual {v11, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    :goto_0
    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getBandArray(Landroid/content/Context;)[I

    move-result-object v3

    array-length v11, v3

    const/4 v12, 0x3

    if-le v11, v14, :cond_4

    invoke-static {v13, v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->searchForBandInArray(I[I)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v9, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    :cond_3
    invoke-static {v10, v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->searchForBandInArray(I[I)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    :cond_4
    aget v11, v3, v15

    and-int/lit8 v16, v11, 0x4

    if-eqz v16, :cond_5

    invoke-virtual {v9, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    :cond_5
    and-int/2addr v11, v13

    if-eqz v11, :cond_6

    invoke-virtual {v9, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v9, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_7
    :goto_1
    invoke-virtual {v9, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApMaxClientFromFramework()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v9, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v9, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v9, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v9, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v7}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",authType"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_8

    invoke-virtual {v9, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2

    :cond_8
    if-ne v0, v14, :cond_9

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2

    :cond_9
    if-ne v0, v12, :cond_a

    const/16 v3, 0x19

    invoke-virtual {v9, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2

    :cond_a
    if-ne v0, v13, :cond_b

    const/16 v3, 0x1a

    invoke-virtual {v9, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2

    :cond_b
    const/4 v3, 0x5

    if-ne v0, v3, :cond_c

    invoke-virtual {v9, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_c
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->checkIfSecurityTypeIsAnyOpenVariant(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v7}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    :try_start_2
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "Softap.conf is created successfully"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :goto_3
    :try_start_3
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    const-string v3, "Error writing hotspot configuration"

    invoke-static {v3, v0, v6}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    :goto_6
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;

    iget-object v11, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$context:Landroid/content/Context;

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$filepath:Ljava/lang/String;

    iget-object v13, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$source:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$saveKey:Ljava/lang/String;

    iget v5, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$securityLevel:I

    iget-object v14, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$sessiontime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v15, 0x0

    cmp-long v1, v9, v15

    if-nez v1, :cond_e

    const-string v0, "There is no conf file"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    const-string v12, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    const/4 v10, 0x3

    invoke-static/range {v9 .. v14}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_e
    :try_start_5
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    move-wide v15, v9

    int-to-long v8, v7

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    move-object v7, v13

    int-to-long v12, v1

    mul-long/2addr v8, v12

    cmp-long v1, v8, v15

    if-gez v1, :cond_f

    const-string v0, "freeSpaceInBytes : "

    const-string v1, ", confSize : "

    invoke-static {v8, v9, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    const-string v12, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    const/4 v10, 0x2

    move-object v13, v7

    invoke-static/range {v9 .. v14}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v8, "/softap.conf"

    invoke-static {v3, v8}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v5, v2, v8, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->encryptForBackup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_10
    const/4 v1, -0x1

    if-ne v2, v1, :cond_11

    const-string v0, "encrypt softap fail"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    const-string v12, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    const/4 v10, 0x1

    move-object v13, v7

    invoke-static/range {v9 .. v14}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_11
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/wifi_hostapd/MHStempbackup.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->writeOtherConf(Landroid/content/Context;)V

    const-string v8, "/MHStempbackup.conf"

    invoke-static {v3, v8}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v5, v2, v8, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->encryptForBackup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_12
    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    const-string v0, "encrypt fail"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    const-string v12, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    const/4 v10, 0x1

    move-object v13, v7

    invoke-static/range {v9 .. v14}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_13
    const-string v0, "otherconf"

    const-string v1, "conf"

    const-string v2, "model"

    const-string v4, "Wi-Fi"

    const-string v5, "Error IOException "

    const-string v8, ""

    const-string v9, "makeXML exception "

    const-string v10, "/wifi_wpaconf.xml"

    const/4 v12, 0x0

    :try_start_6
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/io/FileWriter;

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v15}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-interface {v13, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v3, "UTF-8"

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v13, v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v13, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->getModelName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "softap.conf"

    invoke-interface {v13, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "MHStempbackup.conf"

    invoke-interface {v13, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    const/4 v9, 0x0

    const-string v12, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    const/4 v10, 0x0

    move-object v13, v7

    invoke-static/range {v9 .. v14}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v12, v10

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v12, v10

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto :goto_a

    :catch_3
    move-exception v0

    :goto_8
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v12, :cond_14

    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_14
    :goto_9
    const-string v0, "makeXML fail"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    const-string v12, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    const/4 v10, 0x1

    move-object v13, v7

    invoke-static/range {v9 .. v14}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :goto_a
    if-eqz v12, :cond_15

    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_b
    throw v1

    :catch_6
    move-exception v0

    move-object v7, v13

    const-string v1, "Exception : "

    invoke-static {v1, v0, v6}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 v9, 0x1

    const-string v12, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOTSPOT_SETTING"

    const/4 v10, 0x3

    move-object v13, v7

    invoke-static/range {v9 .. v14}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$context:Landroid/content/Context;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$filepath:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$source:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$saveKey:Ljava/lang/String;

    iget v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$securityLevel:I

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$sessiontime:Ljava/lang/String;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string/jumbo v8, "sem_wifi"

    if-nez v0, :cond_0

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApEnabled()Z

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "WifiApSmartSwitchBackupRestore"

    if-eqz v0, :cond_2

    iget-object v13, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v13, v9, v11}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    move v13, v11

    :cond_1
    if-ne v0, v10, :cond_2

    const-wide/16 v14, 0x3e8

    :try_start_0
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    add-int/2addr v13, v10

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v14, 0xa

    if-le v13, v14, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while turning off MHS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_17

    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->getModelName()Ljava/lang/String;

    const-string v13, "Exception on closing.."

    const-string v0, "/wifi_wpaconf.xml"

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v14

    invoke-virtual {v14, v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v14}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    new-instance v15, Ljava/io/FileReader;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    new-instance v9, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v15, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    invoke-interface {v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const-string v9, ""
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v11, 0x0

    :goto_1
    const/4 v10, 0x1

    if-eq v0, v10, :cond_c

    const-string v10, "otherconf"

    move-object/from16 v16, v8

    const-string v8, "conf"

    move-object/from16 v17, v7

    const-string v7, "model"

    move-object/from16 v18, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_5

    :try_start_4
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    move-object v9, v0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v9, v15

    goto/16 :goto_18

    :catch_1
    move-exception v0

    :goto_2
    move-object v9, v15

    goto/16 :goto_14

    :catch_2
    move-exception v0

    :goto_3
    move-object v9, v15

    goto/16 :goto_15

    :cond_4
    :goto_4
    move-object v9, v0

    const/4 v11, 0x1

    goto/16 :goto_6

    :cond_5
    const/4 v6, 0x4

    if-ne v0, v6, :cond_8

    if-eqz v11, :cond_6

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlModel:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[readXML] model : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlModel:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_6
    if-eqz v11, :cond_7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[readXML] xmlConf : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    if-eqz v11, :cond_b

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlOtherConf:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[readXML] xmlOtherConf : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlOtherConf:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_8
    const/4 v6, 0x3

    if-ne v0, v6, :cond_b

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v11, :cond_9

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_5
    const/4 v11, 0x0

    goto :goto_6

    :cond_9
    if-eqz v11, :cond_a

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    if-eqz v11, :cond_b

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    :goto_6
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v8, v16

    move-object/from16 v7, v17

    move-object/from16 v6, v18

    goto/16 :goto_1

    :cond_c
    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-object/from16 v16, v8

    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v6, v0

    invoke-static {v13, v6, v12}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_7
    new-instance v0, Ljava/io/File;

    const-string v6, "/"

    invoke-static {v2, v6}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_24

    new-instance v0, Ljava/io/File;

    const-string v7, "/temp.conf"

    invoke-static {v2, v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v6}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v0, v8, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->decryptForRestore(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v8, -0x1

    if-ne v0, v8, :cond_d

    const-string v0, "decrypt fail"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const-string v5, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    const/4 v3, 0x1

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "Exception in loadWifiApConfig.."

    const-string v11, "SSID before restoring: "

    const-string v13, "mLoadedSoftApConfig:"

    const-string/jumbo v14, "version:"

    const-string v15, "loadWifiApConfig.."

    invoke-static {v12, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v15, v16

    invoke-virtual {v4, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v15, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    sget-boolean v8, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    iput-boolean v8, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->support5G:Z

    sget-boolean v8, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_6G_BASED_ON_COUNTRY:Z

    iput-boolean v8, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->support6G:Z

    :try_start_6
    invoke-virtual {v15}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v8

    new-instance v15, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v15, v8}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    new-instance v9, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v19, v7

    :try_start_7
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    invoke-virtual {v15, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v7
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 v10, 0x4

    if-ne v0, v10, :cond_e

    :try_start_9
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v10
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object/from16 v20, v3

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v19

    goto/16 :goto_f

    :catch_4
    move-object/from16 v2, v19

    goto/16 :goto_11

    :cond_e
    move-object/from16 v20, v3

    const/4 v10, 0x0

    :goto_8
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",apBand:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",apChannel:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",support5G:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->support5G:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",support6G:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->support6G:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v7, :cond_f

    const/4 v7, 0x0

    :cond_f
    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApDualAp:Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/16 v3, 0x95

    if-eqz v0, :cond_10

    const/4 v14, 0x3

    if-ne v10, v14, :cond_10

    :try_start_b
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$3;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v10, 0x1

    const/4 v14, 0x0

    invoke-virtual {v0, v10, v14}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v10, 0x2

    invoke-virtual {v0, v10, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v15, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto/16 :goto_9

    :cond_10
    if-eqz v0, :cond_11

    const/4 v14, 0x4

    if-ne v10, v14, :cond_11

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$3;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v3, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v14, v10}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v15, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_9

    :cond_11
    :try_start_c
    iget-boolean v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->support6G:Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v0, :cond_13

    const/4 v14, 0x2

    if-ne v10, v14, :cond_13

    if-nez v7, :cond_12

    :try_start_d
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$3;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v3, 0x0

    const/4 v10, 0x4

    invoke-virtual {v0, v10, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v15, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_9

    :cond_12
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$3;

    const/4 v3, 0x3

    invoke-direct {v0, v7, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$3;-><init>(II)V

    invoke-virtual {v15, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_9

    :cond_13
    const/16 v0, 0xb

    if-le v7, v0, :cond_14

    iget-boolean v10, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->support5G:Z

    if-eqz v10, :cond_14

    const-string/jumbo v0, "setting 5Ghz band"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$3;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v10, 0x2

    invoke-virtual {v0, v10, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v15, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_9

    :cond_14
    if-gt v7, v0, :cond_16

    if-nez v7, :cond_15

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$3;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v3, 0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v15, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_9

    :cond_15
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$3;

    const/4 v3, 0x6

    invoke-direct {v0, v7, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$3;-><init>(II)V

    invoke-virtual {v15, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannels(Landroid/util/SparseIntArray;)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_16
    :goto_9
    :try_start_e
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-nez v0, :cond_17

    const/4 v3, 0x0

    const/4 v10, 0x0

    :try_start_f
    invoke-virtual {v15, v3, v10}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_a

    :cond_17
    const/4 v3, 0x0

    const/4 v10, 0x5

    if-ne v0, v10, :cond_18

    invoke-virtual {v15, v3, v10}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_a

    :cond_18
    if-lez v0, :cond_1c

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x4

    if-ne v0, v10, :cond_19

    const/4 v10, 0x1

    invoke-virtual {v15, v3, v10}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_a

    :cond_19
    const/16 v10, 0x19

    if-ne v0, v10, :cond_1a

    iget-object v10, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v10}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApWpa3Supported()Z

    move-result v10

    if-eqz v10, :cond_1a

    const/4 v10, 0x3

    invoke-virtual {v15, v3, v10}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_a

    :cond_1a
    const/16 v10, 0x1a

    if-ne v0, v10, :cond_1b

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApWpa3Supported()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v10, 0x2

    invoke-virtual {v15, v3, v10}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_a

    :cond_1b
    const/4 v10, 0x1

    invoke-virtual {v15, v3, v10}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_1c
    :goto_a
    :try_start_10
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlModel:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->getModelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v0, :cond_1d

    :try_start_11
    const-string v0, "Both models are same"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_1d
    :try_start_12
    invoke-virtual {v15}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSsidBeforeRestoring:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSsidBeforeRestoring:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v8, "wifi_ap_settings_smart_switch_restoring"

    const/4 v10, 0x1

    invoke-static {v3, v8, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v3, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    const/16 v0, 0xe

    if-ge v7, v0, :cond_1e

    :try_start_13
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_ap_last_2g_channel"

    invoke-static {v0, v3, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :cond_1e
    :try_start_14
    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendConfigChangedBroadcastToSmartTethering(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :try_start_15
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5

    const-string/jumbo v0, "softap config loaded success"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-static {v2, v6}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlOtherConf:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_21

    new-instance v0, Ljava/io/File;

    const-string v3, "/MHStemprestore.conf"

    invoke-static {v2, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v6}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->xmlOtherConf:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, v20

    invoke-virtual {v1, v5, v0, v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->decryptForRestore(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_1f

    const-string v0, "decryptForRestore fail"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const-string v5, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    const/4 v3, 0x1

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->loadOtherConf(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, " other SoftAp config loaded fail"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const-string v5, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    const/4 v3, 0x1

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_20
    const/4 v2, 0x0

    const-string v5, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    const/4 v3, 0x0

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_21
    const-string v0, "can\'t read otherconf file"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const-string v5, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    const/4 v3, 0x3

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :catch_5
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v19

    :goto_b
    invoke-static {v2, v1, v12}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    goto :goto_12

    :goto_c
    move-object v1, v0

    goto :goto_f

    :catchall_2
    move-exception v0

    move-object/from16 v2, v19

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object/from16 v2, v19

    :goto_d
    const/4 v3, 0x0

    move-object v1, v0

    move-object v9, v3

    goto :goto_f

    :catch_6
    move-object/from16 v2, v19

    :goto_e
    const/4 v3, 0x0

    move-object v9, v3

    goto :goto_11

    :catchall_4
    move-exception v0

    move-object v2, v7

    goto :goto_d

    :catch_7
    move-object v2, v7

    goto :goto_e

    :goto_f
    if-eqz v9, :cond_22

    :try_start_16
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    move-object v3, v0

    invoke-static {v2, v3, v12}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    :cond_22
    :goto_10
    throw v1

    :goto_11
    if-eqz v9, :cond_23

    :try_start_17
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9

    goto :goto_12

    :catch_9
    move-exception v0

    move-object v1, v0

    goto :goto_b

    :cond_23
    :goto_12
    const-string v0, "Softap config loaded fail"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const-string v5, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    const/4 v3, 0x1

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_24
    const-string v0, "can\'t read configuration file"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const-string v5, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    const/4 v3, 0x3

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :catch_a
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    goto/16 :goto_2

    :catch_b
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    goto/16 :goto_3

    :catchall_5
    move-exception v0

    const/4 v3, 0x0

    move-object v1, v0

    move-object v9, v3

    goto/16 :goto_18

    :catch_c
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    const/4 v3, 0x0

    move-object v9, v3

    goto :goto_14

    :catch_d
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    const/4 v3, 0x0

    move-object v9, v3

    goto :goto_15

    :catchall_6
    move-exception v0

    move-object v3, v9

    :goto_13
    move-object v1, v0

    goto :goto_18

    :catch_e
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-object v3, v9

    goto :goto_14

    :catch_f
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-object v3, v9

    goto :goto_15

    :goto_14
    :try_start_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read XML Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    if-eqz v9, :cond_25

    :try_start_19
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_10

    goto :goto_16

    :catch_10
    move-exception v0

    move-object v1, v0

    invoke-static {v13, v1, v12}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_16

    :catchall_7
    move-exception v0

    goto :goto_13

    :goto_15
    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runtimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    if-eqz v9, :cond_25

    :try_start_1b
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_10

    :cond_25
    :goto_16
    const-string/jumbo v0, "xml parsing error"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const-string v5, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOTSPOT_SETTING"

    const/4 v3, 0x3

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->sendResponse(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    return-void

    :goto_18
    if-eqz v9, :cond_26

    :try_start_1c
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_11

    goto :goto_19

    :catch_11
    move-exception v0

    move-object v2, v0

    invoke-static {v13, v2, v12}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_26
    :goto_19
    throw v1

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->run$com$samsung$android$settings$wifi$mobileap$WifiApSmartSwitchBackupRestore$1()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
