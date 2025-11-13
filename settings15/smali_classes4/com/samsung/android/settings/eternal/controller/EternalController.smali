.class public final Lcom/samsung/android/settings/eternal/controller/EternalController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDatabaseManager:Lcom/samsung/android/settings/eternal/database/DatabaseManager;

.field public final mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

.field public final mXmlManager:Lcom/samsung/android/settings/eternal/manager/XmlManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/eternal/manager/EternalManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/eternal/manager/EternalManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    new-instance v0, Lcom/samsung/android/settings/eternal/manager/XmlManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/eternal/manager/XmlManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mXmlManager:Lcom/samsung/android/settings/eternal/manager/XmlManager;

    new-instance v0, Lcom/samsung/android/settings/eternal/database/DatabaseManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/eternal/database/DatabaseManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDatabaseManager:Lcom/samsung/android/settings/eternal/database/DatabaseManager;

    return-void
.end method


# virtual methods
.method public final fetchBackup(Lcom/samsung/android/settings/eternal/data/BackupInfo;)Ljava/io/File;
    .locals 9

    const-string v0, "Eternal/EternalController"

    const-string v1, "## fetchBackup()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/eternal/policy/PolicyManager$LazyHolder;->sInstance:Lcom/samsung/android/settings/eternal/policy/PolicyManager;

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    iget-object v4, v3, Lcom/samsung/android/settings/eternal/manager/EternalManager;->mSupplierManager:Lcom/samsung/android/settings/eternal/manager/SupplierManager;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/settings/eternal/policy/PolicyManager;->initialize(Landroid/content/Context;Lcom/samsung/android/settings/eternal/manager/SupplierManager;)V

    new-instance v2, Lcom/samsung/android/settings/eternal/manager/KeyListManager;

    iget-object v4, v3, Lcom/samsung/android/settings/eternal/manager/EternalManager;->mSupplierManager:Lcom/samsung/android/settings/eternal/manager/SupplierManager;

    iget-object v5, v4, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    invoke-direct {v2, v5}, Lcom/samsung/android/settings/eternal/manager/KeyListManager;-><init>(Ljava/util/HashMap;)V

    iget v5, p1, Lcom/samsung/android/settings/eternal/data/BackupInfo;->mRequestFrom:I

    iget-object v6, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mXmlManager:Lcom/samsung/android/settings/eternal/manager/XmlManager;

    invoke-virtual {v2, v6, v5}, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->getKeyListHashMap(Lcom/samsung/android/settings/eternal/manager/XmlManager;I)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Lcom/samsung/android/settings/eternal/manager/EternalManager;->getValues(Lcom/samsung/android/settings/eternal/data/BackupInfo;Ljava/util/HashMap;)Lcom/samsung/android/settings/eternal/data/EpisodeHolder;

    move-result-object p1

    iget-object v2, v4, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mSupplierInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p1, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mSupplierInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/samsung/android/settings/eternal/constant/EternalRune;->isTestMode()V

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/controller/EternalController;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p1, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mBackupSceneMap:Ljava/util/HashMap;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/samsung/android/settings/eternal/validate/DataTypeValidationTask;

    new-instance v7, Lcom/samsung/android/settings/eternal/validate/DataTypeValidationTask$DataTypeValidationWorker;

    invoke-direct {v7, p0, p1}, Lcom/samsung/android/settings/eternal/validate/BaseValidationWorker;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/eternal/data/EpisodeHolder;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lcom/samsung/android/settings/eternal/validate/DataTypeValidationTask$DataTypeValidationWorker;->mDataTypeViolationItems:Ljava/util/List;

    invoke-direct {v5, v7}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationTask;

    new-instance v7, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationTask$KeyNameValidationWorker;

    invoke-direct {v7, p0, p1}, Lcom/samsung/android/settings/eternal/validate/KeyNameValidationTask$KeyNameValidationWorker;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/eternal/data/EpisodeHolder;)V

    invoke-direct {v5, v7}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/samsung/android/settings/eternal/constant/EternalRune;->SUPPORT_BACKUP_DATA_SIZE_VALIDATION:Z

    if-eqz v5, :cond_1

    new-instance v5, Lcom/samsung/android/settings/eternal/validate/SizeValidationTask;

    new-instance v7, Lcom/samsung/android/settings/eternal/validate/SizeValidationTask$SizeValidationWorker;

    invoke-direct {v7, p0, p1}, Lcom/samsung/android/settings/eternal/validate/SizeValidationTask$SizeValidationWorker;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/eternal/data/EpisodeHolder;)V

    invoke-direct {v5, v7}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const-string p0, "fetchBackup() validation fail"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v4, "Eternal/BackupValidationManager"

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/FutureTask;

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0xbb8

    invoke-virtual {v2, v7, v8, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const-class v5, Lcom/samsung/android/lib/episode/Scene;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v5, "dataTypeValidation"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/lib/episode/Scene;

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    iget-object v7, v5, Lcom/samsung/android/lib/episode/Scene;->mSceneKey:Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/settings/eternal/utils/EternalUtils;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "validateBackupItem() "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_5

    :cond_9
    iget-object p0, p1, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mBackupSceneMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {p0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v5, :cond_a

    if-nez v7, :cond_b

    goto :goto_3

    :cond_b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/lib/episode/Scene;

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    const-string/jumbo p0, "removeViolationItem() - "

    invoke-static {v3, p0, v4}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mBackupSceneMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    const-string v3, "Eternal/XmlManager"

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_e

    iget-object p0, v6, Lcom/samsung/android/settings/eternal/manager/XmlManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/eternal/utils/FileUtils;->getFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->buildGeneralInfo(Lcom/samsung/android/settings/eternal/data/EpisodeHolder;Lorg/w3c/dom/Document;)V

    iget-object v6, p1, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mSourceInfoMap:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mBackupSceneMap:Ljava/util/HashMap;

    invoke-static {v6, p1, v5}, Lcom/samsung/android/settings/eternal/manager/XmlManager;->buildBackupDataSetElement(Ljava/util/HashMap;Ljava/util/HashMap;Lorg/w3c/dom/Document;)V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p1

    const-string v6, "encoding"

    const-string v7, "UTF-8"

    invoke-virtual {p1, v6, v7}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "indent"

    const-string/jumbo v7, "yes"

    invoke-virtual {p1, v6, v7}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v6, v5}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v5, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v5, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v6, v5}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    :catch_1
    move-exception p0

    goto :goto_7

    :catchall_0
    move-exception p0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0
    :try_end_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "buildXml() failed : "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    move-object p0, v2

    goto :goto_9

    :cond_e
    const-string p0, "buildXml IllegalArgument"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "## fetchBackup() - backFile size = "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    goto :goto_a

    :cond_f
    const-wide/16 v3, 0x0

    :goto_a
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/samsung/android/settings/eternal/policy/PolicyManager;->mBackupPolicy:Lcom/samsung/android/settings/eternal/policy/BackupPolicy;

    iput-object v2, v1, Lcom/samsung/android/settings/eternal/policy/PolicyManager;->mRestorePolicy:Lcom/samsung/android/settings/eternal/policy/RestorePolicy;

    return-object p0
.end method

.method public final fetchRestore(Lcom/samsung/android/settings/eternal/data/RestoreInfo;)Lcom/samsung/android/settings/eternal/data/EpisodeHolder;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v4, "Eternal/EternalController"

    const-string v0, "## fetchRestore() START"

    invoke-static {v4, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/settings/eternal/policy/PolicyManager$LazyHolder;->sInstance:Lcom/samsung/android/settings/eternal/policy/PolicyManager;

    iget-object v0, v1, Lcom/samsung/android/settings/eternal/controller/EternalController;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/samsung/android/settings/eternal/controller/EternalController;->mEternalManager:Lcom/samsung/android/settings/eternal/manager/EternalManager;

    iget-object v7, v6, Lcom/samsung/android/settings/eternal/manager/EternalManager;->mSupplierManager:Lcom/samsung/android/settings/eternal/manager/SupplierManager;

    invoke-virtual {v5, v0, v7}, Lcom/samsung/android/settings/eternal/policy/PolicyManager;->initialize(Landroid/content/Context;Lcom/samsung/android/settings/eternal/manager/SupplierManager;)V

    iget-object v7, v6, Lcom/samsung/android/settings/eternal/manager/EternalManager;->mSupplierManager:Lcom/samsung/android/settings/eternal/manager/SupplierManager;

    iget-object v0, v7, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/samsung/android/settings/eternal/controller/EternalController;->mXmlManager:Lcom/samsung/android/settings/eternal/manager/XmlManager;

    const-string v10, "message null"

    const-string v11, "] Exception "

    const-string v12, "Eternal/EternalManager"

    if-nez v8, :cond_0

    const-string v0, "Eternal/KeyListManager"

    const-string v13, "getKeyListForRestore() - xmlManager is null"

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v10

    const/4 v13, 0x0

    goto/16 :goto_6

    :cond_0
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v7, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "getKeyListOfProvider() - isSupplierEmpty"

    invoke-static {v12, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v10

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v7, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_2

    const/16 v19, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/eternal/data/SupplierInfo;

    iget-object v15, v15, Lcom/samsung/android/settings/eternal/data/SupplierInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v15

    :goto_1
    const-string v15, "getKeyListOfProvider() ["

    if-nez v19, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] uri is null"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v9, v6, Lcom/samsung/android/settings/eternal/manager/EternalManager;->mContext:Landroid/content/Context;

    sget-object v17, Lcom/samsung/android/lib/episode/EpisodeConstant;->DTD_VERSION:Ljava/lang/String;

    const-string v21, "2.0"

    const/16 v22, 0x0

    const-string v20, "get_label"

    move-object/from16 v17, v9

    move-object/from16 v18, v3

    invoke-static/range {v17 .. v22}, Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask;->createTask(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v10

    sget-object v10, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService$ProviderCallExecutorServiceHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v10, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;->mSingleExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v10, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] requested"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, v17

    goto :goto_0

    :cond_4
    move-object/from16 v17, v10

    sget-object v3, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService$ProviderCallExecutorServiceHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;->getResultByUid(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "keyList"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "getKeyListOfProvider() - UID = "

    if-eqz v0, :cond_6

    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual {v13, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " / "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_6
    if-nez v0, :cond_7

    const-string v0, " / null"

    goto :goto_3

    :cond_7
    const-string v0, " / empty"

    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_4
    const-string v10, "getLabelInternal() - ["

    invoke-static {v10, v9, v11}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object/from16 v0, v17

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    :goto_6
    if-nez v13, :cond_a

    const/4 v3, 0x0

    return-object v3

    :cond_a
    iget-boolean v0, v2, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mIsDeferred:Z

    iget-object v3, v1, Lcom/samsung/android/settings/eternal/controller/EternalController;->mDatabaseManager:Lcom/samsung/android/settings/eternal/database/DatabaseManager;

    if-eqz v0, :cond_b

    const-string v0, "getRepositoryManager() : isDeferred"

    invoke-static {v4, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_7

    :cond_b
    move-object v0, v8

    :goto_7
    invoke-interface {v0, v2, v13}, Lcom/samsung/android/settings/eternal/manager/RepositoryManager;->createEpisodeHolder(Lcom/samsung/android/settings/eternal/data/RestoreInfo;Ljava/util/HashMap;)Lcom/samsung/android/settings/eternal/data/EpisodeHolder;

    move-result-object v9

    iget v10, v2, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mRequestFrom:I

    const-string v13, "OSVersion"

    if-nez v10, :cond_10

    iget-boolean v0, v2, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mIsDeferred:Z

    if-nez v0, :cond_10

    const-string v14, "data"

    const-string v15, "Eternal/DatabaseManager"

    if-nez v9, :cond_c

    const-string v0, "insertEpisodeHolderDataIfNeed() - episodeHolder is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_c
    iget-object v0, v5, Lcom/samsung/android/settings/eternal/policy/PolicyManager;->mRestorePolicy:Lcom/samsung/android/settings/eternal/policy/RestorePolicy;

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/policy/RestorePolicy;->mDeferredRestorationItems:Ljava/util/List;

    move-object/from16 v18, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v1, "getDeferredRestorationKeys() : "

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Eternal/PolicyManager"

    invoke-static {v5, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "insertEpisodeHolderDataIfNeed() - [Policy] deferredRestorationKeys : "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/settings/eternal/database/DatabaseManager;->getDatabase()Lcom/samsung/android/settings/eternal/database/DatabaseHelper;

    move-result-object v1

    const-string v5, "backup_scene"

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;->dropTable(Ljava/lang/String;)V

    const-string/jumbo v5, "skip_policy"

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;->dropTable(Ljava/lang/String;)V

    move-object/from16 v19, v8

    const-string v8, "general_info"

    invoke-virtual {v1, v8}, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;->dropTable(Ljava/lang/String;)V

    move/from16 v20, v10

    const-string/jumbo v10, "source_info"

    invoke-virtual {v1, v10}, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;->dropTable(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/settings/eternal/database/DatabaseManager;->getDatabase()Lcom/samsung/android/settings/eternal/database/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "getWritableDatabase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v9, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mBackupSceneMap:Ljava/util/HashMap;

    move-object/from16 v21, v11

    new-instance v11, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda0;

    move-object/from16 v22, v6

    const/4 v6, 0x0

    invoke-direct {v11, v1, v0, v6}, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/util/List;I)V

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_8

    :cond_d
    move-object/from16 v22, v6

    move-object/from16 v21, v11

    :goto_8
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v2, v9, v0, v6}, Lcom/samsung/android/settings/eternal/controller/EternalController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/util/List;I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "removeDeferredRestorationKeys() : "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :try_start_2
    invoke-virtual {v3}, Lcom/samsung/android/settings/eternal/database/DatabaseManager;->getDatabase()Lcom/samsung/android/settings/eternal/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/eternal/database/DatabaseManager$insertBackupSceneMap$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/eternal/database/DatabaseManager$insertBackupSceneMap$1;-><init>(Lcom/samsung/android/settings/eternal/database/DatabaseHelper;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insertBackupSceneMap() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    :try_start_3
    invoke-virtual {v3}, Lcom/samsung/android/settings/eternal/database/DatabaseManager;->getDatabase()Lcom/samsung/android/settings/eternal/database/DatabaseHelper;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "false"

    invoke-virtual {v1, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insertEnableDefaultValueSkipPolicy() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    iget-object v0, v9, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mGeneralInfoList:Ljava/util/List;

    const-string/jumbo v1, "scenes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_4
    invoke-virtual {v3}, Lcom/samsung/android/settings/eternal/database/DatabaseManager;->getDatabase()Lcom/samsung/android/settings/eternal/database/DatabaseHelper;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/lib/episode/Scene;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v11, 0x0

    :try_start_5
    invoke-virtual {v2, v6, v11}, Lcom/samsung/android/lib/episode/Scene;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v5, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v8, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    const/4 v11, 0x0

    goto :goto_c

    :cond_f
    const/4 v11, 0x0

    goto :goto_d

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insertGeneralInfoScenes() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    iget-object v0, v9, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mSourceInfoMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sourceInfoMap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_6
    invoke-virtual {v3}, Lcom/samsung/android/settings/eternal/database/DatabaseManager;->getDatabase()Lcom/samsung/android/settings/eternal/database/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/lib/episode/SourceInfo;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "Uid"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "DTDVersion"

    iget-object v6, v2, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "DeviceType"

    iget-object v6, v2, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Manufacturer"

    iget v6, v2, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v3, v2, Lcom/samsung/android/lib/episode/SourceInfo;->mOSVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "OneUIVersion"

    iget-object v6, v2, Lcom/samsung/android/lib/episode/SourceInfo;->mOneUIVersion:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "PackageList"

    iget-object v6, v2, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/samsung/android/lib/episode/EpisodeUtils;->convertListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "RequestFrom"

    iget v6, v2, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "RestoreViaFastTrack"

    iget-boolean v6, v2, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Version"

    iget-object v2, v2, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_e

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insertSourceInfoMap() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_10
    :goto_f
    move-object/from16 v18, v5

    move-object/from16 v22, v6

    move-object/from16 v19, v8

    move/from16 v20, v10

    move-object/from16 v21, v11

    const/4 v11, 0x0

    :cond_11
    :goto_10
    if-nez v9, :cond_12

    const-string/jumbo v0, "setValues() - episodeHolder is null"

    invoke-static {v12, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    move-object/from16 v6, v22

    const/4 v3, 0x0

    goto/16 :goto_21

    :cond_12
    iget-object v0, v7, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "setValues() - isSupplierEmpty"

    invoke-static {v12, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_13
    iget-object v1, v9, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mBackupSceneMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v9, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mBackupSceneMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string/jumbo v5, "setValues() - ["

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] backupSceneList is null"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_14
    iget-object v8, v7, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_15

    const/16 v25, 0x0

    goto :goto_13

    :cond_15
    iget-object v8, v7, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/eternal/data/SupplierInfo;

    iget-object v8, v8, Lcom/samsung/android/settings/eternal/data/SupplierInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v25, v8

    :goto_13
    if-nez v25, :cond_16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uri is null"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_16
    iget-object v8, v9, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mSourceInfoMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/lib/episode/SourceInfo;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v14, "sceneList"

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v10, v14, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    if-nez v8, :cond_17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " sourceInfo is null"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    move-object/from16 v6, v22

    goto :goto_15

    :cond_17
    iget-object v5, v8, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    const-string v6, "deviceType"

    invoke-virtual {v10, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v8, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    const-string/jumbo v6, "version"

    invoke-virtual {v10, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v8, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    const-string v6, "dtd_version"

    invoke-virtual {v10, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v8, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    const-string/jumbo v6, "requestFrom"

    invoke-virtual {v10, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v5, v8, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    const-string v6, "fastTrack"

    invoke-virtual {v10, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v5, v8, Lcom/samsung/android/lib/episode/SourceInfo;->mOneUIVersion:Ljava/lang/String;

    const-string/jumbo v6, "oneUIVersion"

    invoke-virtual {v10, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v8, Lcom/samsung/android/lib/episode/SourceInfo;->mOSVersion:I

    invoke-virtual {v10, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v5, v8, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/samsung/android/lib/episode/EpisodeUtils;->convertListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/lib/episode/EpisodeUtils;->compressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "packageList"

    invoke-virtual {v10, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v8, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    const-string v6, "manufacturer"

    invoke-virtual {v10, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_14

    :goto_15
    iget-object v5, v6, Lcom/samsung/android/settings/eternal/manager/EternalManager;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/samsung/android/lib/episode/EpisodeConstant;->DTD_VERSION:Ljava/lang/String;

    const-string v27, "2.0"

    const-string/jumbo v26, "set_value"

    move-object/from16 v23, v5

    move-object/from16 v24, v3

    move-object/from16 v28, v10

    invoke-static/range {v23 .. v28}, Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask;->createTask(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService$ProviderCallExecutorServiceHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;->mSingleExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move-object/from16 v22, v6

    goto/16 :goto_12

    :cond_18
    move-object/from16 v6, v22

    sget-object v2, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService$ProviderCallExecutorServiceHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;->getResultByUid(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iget-object v8, v9, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mSourceInfoMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/lib/episode/SourceInfo;

    const/4 v10, -0x1

    const-string v13, "] backupSceneList size = "

    if-nez v0, :cond_1b

    invoke-static {v5, v3, v13}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_19

    move v3, v11

    goto :goto_17

    :cond_19
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  / resultBundle is null  / manufacturer = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_1a

    goto :goto_18

    :cond_1a
    iget v10, v8, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    :goto_18
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_1b
    :try_start_7
    const-class v14, Lcom/samsung/android/lib/episode/SceneResult;

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v14, "sceneResult"

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v14, v9, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mRestoreResultMap:Ljava/util/HashMap;

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    if-nez v14, :cond_1c

    iget-object v14, v9, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mRestoreResultMap:Ljava/util/HashMap;

    invoke-virtual {v14, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_1c
    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1a

    :goto_19
    move-object/from16 v8, v21

    goto :goto_1e

    :cond_1d
    :goto_1a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_1e

    move v13, v11

    goto :goto_1b

    :cond_1e
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    :goto_1b
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "  / sceneResultList size = "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1f

    move v0, v11

    goto :goto_1c

    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1c
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  / manufacturer = "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_20

    goto :goto_1d

    :cond_20
    iget v10, v8, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    :goto_1d
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-object/from16 v8, v21

    goto :goto_20

    :catch_6
    move-exception v0

    goto :goto_19

    :goto_1e
    invoke-static {v5, v3, v8}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_21

    move-object/from16 v0, v17

    goto :goto_1f

    :cond_21
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    move-object/from16 v21, v8

    goto/16 :goto_16

    :cond_22
    move-object v3, v9

    :goto_21
    const-string v0, "## fetchRestore() END"

    invoke-static {v4, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    iget-boolean v0, v1, Lcom/samsung/android/settings/eternal/data/RestoreInfo;->mIsNeedValidation:Z

    if-eqz v0, :cond_24

    const-string v0, "fetchValidation()"

    invoke-static {v4, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_23

    const-string v0, "fetchValidation() - episodeHolder is null"

    invoke-static {v4, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_23
    new-instance v0, Lcom/samsung/android/settings/eternal/manager/KeyListManager;

    iget-object v1, v7, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/eternal/manager/KeyListManager;-><init>(Ljava/util/HashMap;)V

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->getKeyListHashMap(Lcom/samsung/android/settings/eternal/manager/XmlManager;I)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/eternal/data/BackupInfo;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v2, v1, Lcom/samsung/android/settings/eternal/data/BackupInfo;->mRequestFrom:I

    invoke-virtual {v6, v1, v0}, Lcom/samsung/android/settings/eternal/manager/EternalManager;->getValues(Lcom/samsung/android/settings/eternal/data/BackupInfo;Ljava/util/HashMap;)Lcom/samsung/android/settings/eternal/data/EpisodeHolder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/samsung/android/settings/eternal/controller/EternalController;->mContext:Landroid/content/Context;

    iget-object v4, v7, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v1, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mSupplierMap:Ljava/util/HashMap;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v1, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mBaseSceneMap:Ljava/util/HashMap;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v1, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mCompareSceneMap:Ljava/util/HashMap;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v1, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mRestoreResultMap:Ljava/util/HashMap;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v1, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mBaseSourceInfo:Ljava/util/HashMap;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v1, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mCompareSourceInfo:Ljava/util/HashMap;

    iput-object v2, v1, Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;->mContext:Landroid/content/Context;

    iget-object v2, v3, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mBackupSceneMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v2, v3, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mGeneralInfoList:Ljava/util/List;

    const-string v11, "GeneralInfo"

    invoke-virtual {v6, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mBackupSceneMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v2, v0, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mGeneralInfoList:Ljava/util/List;

    invoke-virtual {v7, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v3, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mSourceInfoMap:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mSourceInfoMap:Ljava/util/HashMap;

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, v3, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mRestoreResultMap:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v0, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;

    invoke-direct {v0}, Lcom/samsung/android/settings/eternal/validate/RestoreValidationTask;-><init>()V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    filled-new-array {v1}, [Lcom/samsung/android/settings/eternal/validate/RestoreValidationSource;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_24
    :goto_22
    move-object/from16 v1, v18

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/settings/eternal/policy/PolicyManager;->mBackupPolicy:Lcom/samsung/android/settings/eternal/policy/BackupPolicy;

    iput-object v2, v1, Lcom/samsung/android/settings/eternal/policy/PolicyManager;->mRestorePolicy:Lcom/samsung/android/settings/eternal/policy/RestorePolicy;

    return-object v3
.end method
