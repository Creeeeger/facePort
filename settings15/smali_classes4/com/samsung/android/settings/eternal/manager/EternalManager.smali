.class public final Lcom/samsung/android/settings/eternal/manager/EternalManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSupplierManager:Lcom/samsung/android/settings/eternal/manager/SupplierManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/manager/EternalManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/eternal/manager/SupplierManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/eternal/manager/SupplierManager;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/manager/EternalManager;->mSupplierManager:Lcom/samsung/android/settings/eternal/manager/SupplierManager;

    return-void
.end method


# virtual methods
.method public final getValues(Lcom/samsung/android/settings/eternal/data/BackupInfo;Ljava/util/HashMap;)Lcom/samsung/android/settings/eternal/data/EpisodeHolder;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v6, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;

    invoke-direct {v6}, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;-><init>()V

    iget-object v0, v1, Lcom/samsung/android/settings/eternal/manager/EternalManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/eternal/utils/EternalUtils;->getLaunchablePackageList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v7, v1, Lcom/samsung/android/settings/eternal/manager/EternalManager;->mSupplierManager:Lcom/samsung/android/settings/eternal/manager/SupplierManager;

    iget-object v8, v7, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    const-string v9, "Eternal/EternalManager"

    if-eqz v8, :cond_0

    const-string v0, "getValues() - isSupplierEmpty"

    invoke-static {v9, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_0
    const/4 v8, 0x0

    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v10, p2

    goto :goto_2

    :cond_2
    :goto_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v11, "getValues() uid is empty"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, v7, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Ljava/lang/String;

    iget-object v13, v7, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_4

    move-object/from16 v16, v8

    goto :goto_4

    :cond_4
    iget-object v13, v7, Lcom/samsung/android/settings/eternal/manager/SupplierManager;->mSupplierMap:Ljava/util/HashMap;

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/settings/eternal/data/SupplierInfo;

    iget-object v13, v13, Lcom/samsung/android/settings/eternal/data/SupplierInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v16, v13

    :goto_4
    if-nez v16, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "getValues() ["

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "] uri is null"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    if-eqz v12, :cond_6

    const-string v14, "keyList"

    check-cast v12, Ljava/io/Serializable;

    invoke-virtual {v13, v14, v12}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_6
    iget v12, v2, Lcom/samsung/android/settings/eternal/data/BackupInfo;->mRequestFrom:I

    const-string/jumbo v14, "requestFrom"

    invoke-virtual {v13, v14, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/samsung/android/lib/episode/EpisodeUtils;->convertListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/lib/episode/EpisodeUtils;->compressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v14, "packageList"

    invoke-virtual {v13, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v14, v1, Lcom/samsung/android/settings/eternal/manager/EternalManager;->mContext:Landroid/content/Context;

    sget-object v12, Lcom/samsung/android/lib/episode/EpisodeConstant;->DTD_VERSION:Ljava/lang/String;

    const-string v18, "2.0"

    const-string v17, "get_value"

    move-object/from16 v19, v13

    invoke-static/range {v14 .. v19}, Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask;->createTask(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/settings/eternal/providercall/ProviderCallTask;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v13, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService$ProviderCallExecutorServiceHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v13, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;->mSingleExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v13, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_7
    sget-object v0, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService$ProviderCallExecutorServiceHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;->getResultByUid(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string/jumbo v8, "ro.build.characteristics"

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v11, "getValues() - ["

    if-nez v0, :cond_8

    const-string v0, "] fromSupplier is null"

    invoke-static {v11, v10, v0, v9}, Landroidx/compose/ui/text/SaversKt$LocaleSaver$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    :try_start_0
    const-class v12, Lcom/samsung/android/lib/episode/Scene;

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v12, "sceneList"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    if-nez v12, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "##### getValues() - ["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] is null"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/samsung/android/lib/episode/SourceInfo;

    invoke-direct {v13}, Lcom/samsung/android/lib/episode/SourceInfo;-><init>()V

    const-string/jumbo v14, "version"

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    const-string v14, "dtd_version"

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v6, v10, v12}, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->putBackupSceneList(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, v6, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mSourceInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :goto_6
    const-string v8, "] Exception "

    invoke-static {v11, v10, v8}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v0, "message null"

    goto :goto_7

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v7, v5

    :goto_8
    const/16 v9, 0x8

    if-ge v7, v9, :cond_18

    sget-object v9, Lcom/samsung/android/settings/eternal/manager/KeyListManager;->GENERAL_KEY_LIST:[Ljava/lang/String;

    aget-object v9, v9, v7

    new-instance v10, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v10, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    const-string v12, "/GeneralInfo/Version"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_9

    :cond_c
    const/4 v11, 0x7

    goto :goto_9

    :sswitch_1
    const-string v12, "/GeneralInfo/InitialOsVersion"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_9

    :cond_d
    const/4 v11, 0x6

    goto :goto_9

    :sswitch_2
    const-string v12, "/GeneralInfo/BuildNum"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto :goto_9

    :cond_e
    const/4 v11, 0x5

    goto :goto_9

    :sswitch_3
    const-string v12, "/GeneralInfo/PackageList"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    goto :goto_9

    :cond_f
    const/4 v11, 0x4

    goto :goto_9

    :sswitch_4
    const-string v12, "/GeneralInfo/OSVersion"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    goto :goto_9

    :cond_10
    const/4 v11, 0x3

    goto :goto_9

    :sswitch_5
    const-string v12, "/GeneralInfo/DeviceType"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    goto :goto_9

    :cond_11
    move v11, v3

    goto :goto_9

    :sswitch_6
    const-string v12, "/GeneralInfo/CreatedTime"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    goto :goto_9

    :cond_12
    move v11, v4

    goto :goto_9

    :sswitch_7
    const-string v12, "/GeneralInfo/OneUIVersion"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    goto :goto_9

    :cond_13
    move v11, v5

    :goto_9
    packed-switch v11, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    const-string v9, "2.00"

    invoke-virtual {v10, v9, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_b

    :pswitch_1
    const-string/jumbo v9, "ro.product.first_api_level"

    invoke-static {v9, v5}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_b

    :pswitch_2
    sget-object v9, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v10, v9, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_b

    :pswitch_3
    iget-object v9, v1, Lcom/samsung/android/settings/eternal/manager/EternalManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/settings/eternal/utils/EternalUtils;->getLaunchablePackageList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/lib/episode/EpisodeUtils;->convertListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/lib/episode/EpisodeUtils;->compressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_b

    :pswitch_4
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_b

    :pswitch_5
    invoke-static {v8}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_b

    :pswitch_6
    iget v9, v2, Lcom/samsung/android/settings/eternal/data/BackupInfo;->mRequestFrom:I

    if-ne v9, v3, :cond_14

    goto/16 :goto_c

    :cond_14
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyy-MM-dd HH:mm:ss"

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v11, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v11, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_b

    :pswitch_7
    iget-object v9, v1, Lcom/samsung/android/settings/eternal/manager/EternalManager;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "ro.build.version.oneui"

    invoke-static {v11, v5}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    const-string v13, "."

    if-lez v12, :cond_16

    invoke-static {v11, v5}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    div-int/lit16 v11, v9, 0x2710

    rem-int/lit16 v12, v9, 0x2710

    div-int/lit8 v12, v12, 0x64

    rem-int/lit8 v9, v9, 0x64

    if-nez v9, :cond_15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    :cond_15
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    :cond_16
    invoke-static {v9}, Lcom/samsung/android/settings/eternal/utils/EternalUtils;->isSemAvailable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_17

    sget v9, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v11, 0x15f90

    sub-int/2addr v9, v11

    div-int/lit16 v11, v9, 0x2710

    rem-int/lit16 v9, v9, 0x2710

    div-int/lit8 v9, v9, 0x64

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    :cond_17
    const-string v9, "1.0"

    :goto_a
    invoke-virtual {v10, v9, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    :goto_b
    invoke-virtual {v10}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/2addr v7, v4

    goto/16 :goto_8

    :cond_18
    iget-object v1, v6, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mGeneralInfoList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v6, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mGeneralInfoList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object v2, v6, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mBackupInfo:Lcom/samsung/android/settings/eternal/data/BackupInfo;

    return-object v6

    :sswitch_data_0
    .sparse-switch
        -0x493768da -> :sswitch_7
        -0x27ee0a53 -> :sswitch_6
        -0x245d3828 -> :sswitch_5
        0x1257dc4c -> :sswitch_4
        0x2b6f29dc -> :sswitch_3
        0x3c5a9960 -> :sswitch_2
        0x4b9cf698 -> :sswitch_1
        0x53762cb0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
