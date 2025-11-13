.class public final Lcom/samsung/android/settings/eternal/database/DatabaseManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/eternal/manager/RepositoryManager;


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/database/DatabaseManager;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final createEpisodeHolder(Lcom/samsung/android/settings/eternal/data/RestoreInfo;Ljava/util/HashMap;)Lcom/samsung/android/settings/eternal/data/EpisodeHolder;
    .locals 17

    const-string/jumbo v1, "source_info"

    const-string v2, "general_info"

    const-string/jumbo v3, "skip_policy"

    const-string/jumbo v4, "true"

    const-string v5, "data"

    const-string v6, "Eternal/DatabaseManager"

    const-string v0, "createEpisodeHolder()"

    invoke-static {v6, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;

    invoke-direct {v7}, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/eternal/database/DatabaseManager;->getBackupSceneMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v7, v9, v8}, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->putBackupSceneList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/eternal/database/DatabaseManager;->getDatabase()Lcom/samsung/android/settings/eternal/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "insertEnableDefaultValueSkipPolicy() - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/eternal/database/DatabaseManager;->getDatabase()Lcom/samsung/android/settings/eternal/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    sget-object v10, Lcom/samsung/android/lib/episode/Scene;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    array-length v12, v9

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v13, v12}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {v10, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    check-cast v9, Lcom/samsung/android/lib/episode/Scene;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "getGeneralInfoScenes() - "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object v0, v7, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mGeneralInfoList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v7, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mGeneralInfoList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/eternal/database/DatabaseManager;->getDatabase()Lcom/samsung/android/settings/eternal/database/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 v16, v3

    goto/16 :goto_7

    :cond_6
    :goto_3
    const-string v8, "Uid"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "DTDVersion"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "DeviceType"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Manufacturer"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "OSVersion"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v13, "OneUIVersion"

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "PackageList"

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "RequestFrom"

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-object/from16 p1, v1

    :try_start_3
    const-string v1, "RestoreViaFastTrack"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 p2, v2

    :try_start_4
    const-string v2, "Version"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v16, v3

    :try_start_5
    new-instance v3, Lcom/samsung/android/lib/episode/SourceInfo;

    invoke-direct {v3}, Lcom/samsung/android/lib/episode/SourceInfo;-><init>()V

    iput-object v9, v3, Lcom/samsung/android/lib/episode/SourceInfo;->mDTDVersion:Ljava/lang/String;

    iput-object v10, v3, Lcom/samsung/android/lib/episode/SourceInfo;->mDeviceType:Ljava/lang/String;

    iput v11, v3, Lcom/samsung/android/lib/episode/SourceInfo;->mManufacturer:I

    iput v12, v3, Lcom/samsung/android/lib/episode/SourceInfo;->mOSVersion:I

    iput-object v13, v3, Lcom/samsung/android/lib/episode/SourceInfo;->mOneUIVersion:Ljava/lang/String;

    invoke-static {v14}, Lcom/samsung/android/lib/episode/EpisodeUtils;->convertStringToArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v3, Lcom/samsung/android/lib/episode/SourceInfo;->mPackageList:Ljava/util/ArrayList;

    iput v15, v3, Lcom/samsung/android/lib/episode/SourceInfo;->mRequestFrom:I

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v3, Lcom/samsung/android/lib/episode/SourceInfo;->mRestoreViaFastTrack:Z

    iput-object v2, v3, Lcom/samsung/android/lib/episode/SourceInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v5, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_7
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    goto/16 :goto_3

    :catch_3
    move-exception v0

    :goto_4
    move-object/from16 v16, v3

    goto :goto_6

    :catch_4
    move-exception v0

    :goto_5
    move-object/from16 p2, v2

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 p1, v1

    goto :goto_5

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSourceInfoMap() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/lib/episode/SourceInfo;

    iget-object v3, v7, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mSourceInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/eternal/database/DatabaseManager;->getDatabase()Lcom/samsung/android/settings/eternal/database/DatabaseHelper;

    move-result-object v0

    const-string v1, "backup_scene"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;->dropTable(Ljava/lang/String;)V

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;->dropTable(Ljava/lang/String;)V

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;->dropTable(Ljava/lang/String;)V

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;->dropTable(Ljava/lang/String;)V

    return-object v7
.end method

.method public final getBackupSceneMap()Ljava/util/HashMap;
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/eternal/database/DatabaseManager;->getDatabase()Lcom/samsung/android/settings/eternal/database/DatabaseHelper;

    move-result-object p0

    const-string v1, "backup_scene"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "key"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const-string v3, "isDefault"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/lib/episode/Scene;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    array-length v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v5, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {v4, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    check-cast v2, Lcom/samsung/android/lib/episode/Scene;

    new-instance v4, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v4, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Lcom/samsung/android/lib/episode/Scene;)V

    const-string/jumbo v2, "true"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    invoke-virtual {v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object v2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    return-object v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getBackupSceneMap() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Eternal/DatabaseManager"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method public final getDatabase()Lcom/samsung/android/settings/eternal/database/DatabaseHelper;
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;->instance:Lcom/samsung/android/settings/eternal/database/DatabaseHelper;

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/database/DatabaseManager;->context:Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;->instance:Lcom/samsung/android/settings/eternal/database/DatabaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getApplicationContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;->instance:Lcom/samsung/android/settings/eternal/database/DatabaseHelper;

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/eternal/database/DatabaseHelper;->instance:Lcom/samsung/android/settings/eternal/database/DatabaseHelper;

    const-string/jumbo v0, "null cannot be cast to non-null type com.samsung.android.settings.eternal.database.DatabaseHelper"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
