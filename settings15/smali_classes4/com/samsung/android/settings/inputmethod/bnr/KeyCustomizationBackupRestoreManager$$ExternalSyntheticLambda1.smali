.class public final synthetic Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda1;->f$4:I

    iput-object p6, p0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda1;->f$5:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;

    iget-object v4, v0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget v5, v0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda1;->f$4:I

    iget-object v0, v0, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager$$ExternalSyntheticLambda1;->f$5:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "startRestoreInfo source="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " basePath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KeyCustomizationBackupRestore"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->isAvailableFreeSpace(Ljava/lang/String;)Z

    move-result v2

    sget-object v6, Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;->RESULT_FAIL:Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;

    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->STORAGE_FULL:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOT_KEY"

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->sendResponseToSmartSwitch(Ljava/lang/String;Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_0
    new-instance v2, Ljava/io/File;

    const/4 v8, 0x0

    invoke-static {v8}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v9

    const-string v10, "key_customization_temp_backup_info.xml"

    invoke-direct {v2, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 v9, 0x1

    :try_start_0
    iget-object v10, v1, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v0, v9, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v10, v11, v0, v2}, Lcom/samsung/android/settings/inputmethod/bnr/DocumentStorageAccessHelper;->moveUrisToDir(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Collection;Ljava/io/File;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v10, "Can\'t startRestoreInfo. "

    invoke-static {v7, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v8

    :goto_0
    const-string v10, "doRestore, copyCount="

    invoke-static {v0, v10, v7}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->UNKNOWN_ERROR:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    if-nez v0, :cond_2

    const-string v0, "Can\'t startRestoreInfo, copyCount is zero"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOT_KEY"

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v6

    move-object v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->sendResponseToSmartSwitch(Ljava/lang/String;Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_2
    new-instance v11, Ljava/io/File;

    invoke-static {v8}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string v12, "key_customization_backup_info.xml"

    invoke-direct {v11, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_3
    :try_start_1
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    :try_start_2
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v12, v2}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/4 v14, 0x2

    const/4 v15, 0x0

    if-gtz v13, :cond_4

    :goto_1
    move-object v2, v15

    goto :goto_3

    :cond_4
    new-instance v13, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v13, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    if-ne v5, v9, :cond_6

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-virtual {v12, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v2, v3}, Lcom/samsung/android/settings/inputmethod/bnr/EncryptionNDecryption;->generatePBKDF2SecretKey([BLjava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    goto :goto_2

    :cond_6
    invoke-static {v3}, Lcom/samsung/android/settings/inputmethod/bnr/EncryptionNDecryption;->generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v14, v2, v13}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-direct {v2, v12, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :goto_3
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/16 v0, 0x400

    :try_start_4
    new-array v5, v0, [B

    :goto_4
    invoke-virtual {v2, v5, v8, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    const/4 v0, -0x1

    if-eq v13, v0, :cond_7

    invoke-virtual {v3, v5, v8, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v0, 0x400

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v5, v0

    goto/16 :goto_10

    :cond_7
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "loadXmlFileInfo path="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_8
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v5, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    :cond_8
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-ne v5, v14, :cond_9

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "hot_key"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static {v3, v0}, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->parseKeyCustomizationAttributes(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_6

    :goto_5
    move-object v15, v2

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_9
    :goto_6
    if-ne v5, v9, :cond_8

    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :catch_2
    move-object v15, v0

    goto :goto_a

    :catchall_2
    move-exception v0

    goto/16 :goto_f

    :catch_3
    move-exception v0

    move-object v2, v15

    goto :goto_7

    :catch_4
    move-object v2, v15

    goto :goto_9

    :goto_7
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_8
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_a

    :catch_5
    :goto_9
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File not found "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_8

    :catch_6
    :goto_a
    if-nez v15, :cond_b

    :cond_a
    move-object v3, v10

    goto :goto_d

    :cond_b
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    const-string v2, "hotKeyInfoArray size="

    invoke-static {v0, v2, v7}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->mRestoreKeyCustomizationInfoCallback:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_e
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, v15}, Landroid/view/IWindowManager;->restoreKeyCustomizationInfo(Ljava/util/List;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_b

    :catch_7
    const-string/jumbo v0, "restoreKeyCustomizationInfo failed, RemoteException."

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    move v8, v9

    :cond_c
    const-string/jumbo v0, "successCount="

    invoke-static {v8, v0, v7}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-ne v8, v9, :cond_d

    sget-object v0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->SUCCESS:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    :goto_c
    move-object v3, v0

    goto :goto_d

    :cond_d
    if-lez v8, :cond_a

    if-ge v8, v9, :cond_a

    sget-object v0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->PARTIAL_SUCCESS:Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;

    goto :goto_c

    :goto_d
    sget-object v0, Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;->RESULT_OK:Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;

    invoke-virtual {v3}, Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_e

    move-object v2, v6

    goto :goto_e

    :cond_e
    move-object v2, v0

    :goto_e
    const-string v5, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOT_KEY"

    const/4 v6, 0x0

    move-object v0, v1

    move-object v1, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->sendResponseToSmartSwitch(Ljava/lang/String;Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :goto_f
    :try_start_f
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    :catch_8
    throw v0

    :catch_9
    move-exception v0

    goto :goto_16

    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_14

    :catchall_4
    move-exception v0

    move-object v3, v0

    goto :goto_12

    :goto_10
    :try_start_10
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_11

    :catchall_5
    move-exception v0

    move-object v3, v0

    :try_start_11
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_11
    throw v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :goto_12
    if-eqz v2, :cond_f

    :try_start_12
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto :goto_13

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_13
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_13
    throw v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :goto_14
    :try_start_14
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_15

    :catchall_7
    move-exception v0

    move-object v3, v0

    :try_start_15
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15
    throw v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    :goto_16
    const-string v2, "EncryptionNDecryption"

    const-string v3, "Can\'t decryptionBackupFile. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "Can\'t startRestoreInfo, decryptionResult is fail"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.samsung.android.intent.action.RESPONSE_RESTORE_HOT_KEY"

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v6

    move-object v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/inputmethod/bnr/KeyCustomizationBackupRestoreManager;->sendResponseToSmartSwitch(Ljava/lang/String;Lcom/samsung/android/settings/inputmethod/bnr/Constants$RESULT_CODE;Lcom/samsung/android/settings/inputmethod/bnr/Constants$ERROR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    return-void
.end method
