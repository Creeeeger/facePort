.class public final synthetic Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/util/List;

.field public final synthetic f$7:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;->f$5:I

    iput-object p7, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;->f$6:Ljava/util/List;

    iput-object p8, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;->f$7:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;

    iget-object v2, v0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iget v6, v0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;->f$5:I

    iget-object v7, v0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;->f$6:Ljava/util/List;

    iget-object v8, v0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda0;->f$7:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "startBackupInfo, source="

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " basePath="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " sessionTime="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " securityLevel="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "KeyCustomizationBackupRestore"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->isAvailableFreeSpace(Ljava/lang/String;)Z

    move-result v0

    sget-object v2, Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;->RESULT_FAIL:Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;

    if-nez v0, :cond_0

    sget-object v3, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->STORAGE_FULL:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    const-string v6, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOT_KEY"

    move-object v0, v1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->sendResponseToSmartSwitch(Ljava/lang/String;Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "Can\'t startBackup. "

    invoke-static {v9, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v7, v11

    :goto_0
    sget-object v12, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->UNKNOWN_ERROR:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    if-nez v7, :cond_1

    const-string v0, "Can\'t startBackupInfo, uri is null"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOT_KEY"

    move-object v0, v1

    move-object v1, v3

    move-object v3, v12

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->sendResponseToSmartSwitch(Ljava/lang/String;Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_1
    new-instance v13, Ljava/io/File;

    invoke-static {v10}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string v14, "key_customization_temp_backup_info.xml"

    invoke-direct {v13, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_2
    const-string v14, "Unable to close. "

    const-string v15, "Unable to open "

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "createTargetXmlFile uri="

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_1
    new-instance v10, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v10}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    invoke-virtual {v10, v0}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5

    move-object/from16 v16, v2

    :try_start_2
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v11, v2}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v10, v8}, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->writeKeyCustomizationAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    invoke-virtual {v10}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    invoke-virtual {v10}, Lcom/android/internal/util/FastXmlSerializer;->flush()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v13}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_3
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v0, 0xa

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v2, v11}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    new-instance v2, Ljava/io/File;

    const/4 v8, 0x0

    invoke-static {v8}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string v8, "key_customization_backup_info.xml"

    invoke-direct {v2, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    :try_start_5
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v6, v8, v3}, Lcom/samsung/android/settings/inputmethod/bnr/EncryptionNDecryption;->encryptStream(ILjava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/16 v0, 0x400

    :try_start_8
    new-array v6, v0, [B

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v9, v6, v10, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    const/4 v14, -0x1

    if-eq v11, v14, :cond_4

    invoke-virtual {v3, v6, v10, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, v0

    goto :goto_2

    :cond_4
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v3, v0

    goto :goto_4

    :goto_2
    :try_start_c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_d
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_4
    :try_start_e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v6, v0

    :try_start_f
    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :goto_6
    :try_start_10
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v6, v0

    :try_start_11
    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    :goto_8
    const-string v3, "EncryptionNDecryption"

    const-string v6, "Can\'t encryptionBackupFile. "

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_5
    iget-object v0, v1, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v7}, Lcom/samsung/android/settings/inputmethod/bnr/DocumentStorageAccessHelper;->copyFileToDirUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)I

    move-result v0

    if-lez v0, :cond_6

    sget-object v0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->SUCCESS:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    move-object v3, v0

    goto :goto_d

    :cond_6
    :goto_a
    move-object v3, v12

    goto :goto_d

    :catch_2
    move-exception v0

    move-object v2, v0

    invoke-static {v9, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :catchall_6
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    :try_start_12
    invoke-virtual {v2, v11}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for persisting. "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    if-eqz v11, :cond_6

    :try_start_13
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    goto :goto_a

    :goto_b
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2

    :cond_7
    throw v0

    :catch_4
    move-exception v0

    goto :goto_c

    :catch_5
    move-exception v0

    move-object/from16 v16, v2

    :goto_c
    const-string v2, "failed createTargetXmlFile. "

    invoke-static {v9, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_d
    sget-object v0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;->RESULT_OK:Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;

    invoke-virtual {v3}, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v2, v16

    goto :goto_e

    :cond_8
    move-object v2, v0

    :goto_e
    const-string v6, "com.samsung.android.intent.action.RESPONSE_BACKUP_HOT_KEY"

    move-object v0, v1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->sendResponseToSmartSwitch(Ljava/lang/String;Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void
.end method
