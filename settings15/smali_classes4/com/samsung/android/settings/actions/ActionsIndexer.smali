.class public final Lcom/samsung/android/settings/actions/ActionsIndexer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mConverter:Lcom/samsung/android/settings/actions/ActionDataConverter;

.field public mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;


# direct methods
.method public static insertActionData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "insertActionData() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Command/ActionsIndexer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/actions/ActionData;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/settings/actions/ActionData;->mKey:Ljava/lang/String;

    const-string v3, "key"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "title"

    iget-object v3, v0, Lcom/samsung/android/settings/actions/ActionData;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "summary"

    iget-object v3, v0, Lcom/samsung/android/settings/actions/ActionData;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/settings/actions/ActionData;->mScreenTitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string/jumbo v3, "screentitle"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "keywords"

    iget-object v3, v0, Lcom/samsung/android/settings/actions/ActionData;->mKeywords:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v0, Lcom/samsung/android/settings/actions/ActionData;->mIconResource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "icon"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "fragment"

    iget-object v3, v0, Lcom/samsung/android/settings/actions/ActionData;->mFragmentClassName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "controller"

    iget-object v3, v0, Lcom/samsung/android/settings/actions/ActionData;->mPreferenceController:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v0, Lcom/samsung/android/settings/actions/ActionData;->mActionType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "action_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-boolean v2, v0, Lcom/samsung/android/settings/actions/ActionData;->mRecoverable:Z

    if-eqz v2, :cond_1

    const-string v2, "1"

    goto :goto_2

    :cond_1
    const-string v2, "0"

    :goto_2
    const-string/jumbo v3, "recoverable"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "restore_key"

    iget-object v3, v0, Lcom/samsung/android/settings/actions/ActionData;->mRestoreKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "target_fragment"

    iget-object v3, v0, Lcom/samsung/android/settings/actions/ActionData;->mTargetFragment:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/samsung/android/settings/actions/ActionData;->mPayload:Lcom/samsung/android/settings/actions/LaunchPayload;

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/settings/actions/LaunchPayload;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    :cond_2
    move-object v0, v2

    :goto_3
    const-string/jumbo v3, "payload"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "actions_index"

    invoke-virtual {p0, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final getActionData()Ljava/util/List;
    .locals 11

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionsIndexer;->mConverter:Lcom/samsung/android/settings/actions/ActionDataConverter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "getActionData Started"

    const-string v1, "Command/ActionDataConverter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mIndexableDataMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    sget-object v2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProviderImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/search/SearchFeatureProviderImpl;->getSearchIndexableResources()Lcom/android/settingslib/search/SearchIndexableResources;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/search/SearchIndexableResourcesBase;

    iget-object v2, v2, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->mProviders:Ljava/util/Set;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bundles: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "Added: "

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/search/SearchIndexableData;

    iget-object v7, v5, Lcom/android/settingslib/search/SearchIndexableData;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v5, v5, Lcom/android/settingslib/search/SearchIndexableData;->mSearchIndexProvider:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    if-nez v5, :cond_0

    const-string v5, "Dose not implement Search Index Provider: "

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-class v8, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v5, "Skip development options"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v8, "Start getActionData from Provider: "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0, v5, v7}, Lcom/samsung/android/settings/actions/ActionDataConverter;->getActionDataFromProvider(Lcom/android/settingslib/search/Indexable$SearchIndexProvider;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End getActionData from Provider: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "Cannot get ActionData from: "

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    const-string v2, "Start getActionData from Non-Searchable list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/samsung/android/settings/actions/ActionIndexableResources;->mInstance:Lcom/samsung/android/settings/actions/ActionIndexableResources;

    if-nez v5, :cond_3

    new-instance v5, Lcom/samsung/android/settings/actions/ActionIndexableResources;

    invoke-direct {v5}, Lcom/samsung/android/settings/actions/ActionIndexableResources;-><init>()V

    sput-object v5, Lcom/samsung/android/settings/actions/ActionIndexableResources;->mInstance:Lcom/samsung/android/settings/actions/ActionIndexableResources;

    :cond_3
    sget-object v5, Lcom/samsung/android/settings/actions/ActionIndexableResources;->mInstance:Lcom/samsung/android/settings/actions/ActionIndexableResources;

    iget-object v5, v5, Lcom/samsung/android/settings/actions/ActionIndexableResources;->mProviders:Ljava/util/Set;

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    :try_start_1
    iget-object v8, p0, Lcom/samsung/android/settings/actions/ActionDataConverter;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10, v8}, Lcom/samsung/android/settings/actions/ActionDataConverter;->buildActionData(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/core/BasePreferenceController;)Lcom/samsung/android/settings/actions/ActionData;

    move-result-object v9

    if-nez v9, :cond_4

    new-instance v9, Lcom/samsung/android/settings/actions/ActionData$Builder;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v8}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/samsung/android/settings/actions/ActionData$Builder;->mKey:Ljava/lang/String;

    iput-object v7, v9, Lcom/samsung/android/settings/actions/ActionData$Builder;->mPrefControllerClassName:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/settings/core/BasePreferenceController;->getControlType()I

    move-result v7

    iput v7, v9, Lcom/samsung/android/settings/actions/ActionData$Builder;->mActionType:I

    invoke-virtual {v9}, Lcom/samsung/android/settings/actions/ActionData$Builder;->build()Lcom/samsung/android/settings/actions/ActionData;

    move-result-object v9

    goto :goto_2

    :catch_1
    move-exception v7

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :goto_3
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "End getActionData from Non-Searchable list"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/actions/ActionDataConverter;->uniqueActionData(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string p0, "getActionData Done"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/actions/ActionData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/samsung/android/settings/actions/ActionData;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", fragmentClass :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/samsung/android/settings/actions/ActionData;->mFragmentClassName:Ljava/lang/String;

    const-string v4, " is added to ActionData"

    invoke-static {v3, v2, v4, v1}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    return-object v0

    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final indexActionData()V
    .locals 7

    const-string v0, "indexActionData() FINISH took: "

    iget-object v1, p0, Lcom/samsung/android/settings/actions/ActionsIndexer;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;->isActionDataIndexed()Z

    move-result v1

    const-string v2, "Command/ActionsIndexer"

    if-eqz v1, :cond_0

    const-string p0, "indexActionData() Actions already indexed - returning."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "indexActionData() START"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/actions/ActionsIndexer;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/actions/ActionsIndexer;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    invoke-virtual {v5, v1}, Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/actions/ActionsIndexer;->getActionData()Ljava/util/List;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/settings/actions/ActionsIndexer;->insertActionData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionsIndexer;->mHelper:Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/actions/ActionsDatabaseHelper;->setIndexedState()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method

.method public final run()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/actions/ActionsIndexer;->indexActionData()V

    return-void
.end method
