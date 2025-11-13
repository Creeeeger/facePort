.class public final Lcom/android/settingslib/datastore/SharedPreferencesStorage;
.super Lcom/android/settingslib/datastore/BackupRestoreFileStorage;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/datastore/KeyedObservable;


# instance fields
.field public final synthetic $$delegate_0:Lcom/android/settingslib/datastore/KeyedDataObservable;

.field public final filter:Lkotlin/jvm/functions/Function2;

.field public final name:Ljava/lang/String;

.field public final sharedPreferences:Landroid/content/SharedPreferences;

.field public final sharedPreferencesListener:Lcom/android/settingslib/datastore/SharedPreferencesStorage$sharedPreferencesListener$1;

.field public final verbose:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lcom/android/settingslib/datastore/SharedPreferencesStorage$2;->INSTANCE:Lcom/android/settingslib/datastore/SharedPreferencesStorage$2;

    const-string v4, "filter"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "locale_notification"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "getSharedPreferences(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/android/settingslib/datastore/SharedPreferencesStorage$Companion;->getSharedPreferencesFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v9, Ljava/io/File;

    invoke-static {v7}, Lkotlin/io/FilesKt__FilePathComponentsKt;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    move-result-object v10

    invoke-static {v10}, Lkotlin/io/FilesKt;->normalize$FilesKt__UtilsKt(Lkotlin/io/FilePathComponents;)Lkotlin/io/FilePathComponents;

    move-result-object v10

    invoke-static {v8}, Lkotlin/io/FilesKt__FilePathComponentsKt;->toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;

    move-result-object v11

    invoke-static {v11}, Lkotlin/io/FilesKt;->normalize$FilesKt__UtilsKt(Lkotlin/io/FilePathComponents;)Lkotlin/io/FilePathComponents;

    move-result-object v11

    iget-object v12, v10, Lkotlin/io/FilePathComponents;->root:Ljava/io/File;

    iget-object v13, v11, Lkotlin/io/FilePathComponents;->root:Ljava/io/File;

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v16, v8

    :goto_0
    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_0
    iget-object v12, v11, Lkotlin/io/FilePathComponents;->segments:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    iget-object v14, v10, Lkotlin/io/FilePathComponents;->segments:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    move-result v15

    :goto_1
    if-ge v5, v15, :cond_1

    iget-object v13, v10, Lkotlin/io/FilePathComponents;->segments:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move/from16 v16, v15

    iget-object v15, v11, Lkotlin/io/FilePathComponents;->segments:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v16

    goto :goto_1

    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v15, v12, -0x1

    move-object/from16 v16, v8

    if-gt v5, v15, :cond_4

    :goto_2
    iget-object v8, v11, Lkotlin/io/FilePathComponents;->segments:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v11

    const-string v11, ".."

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v15, v5, :cond_3

    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    if-eq v15, v5, :cond_4

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v11, v17

    goto :goto_2

    :cond_4
    if-ge v5, v14, :cond_6

    if-ge v5, v12, :cond_5

    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v8, v10, Lkotlin/io/FilePathComponents;->segments:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v8, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Ljava/lang/Iterable;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v8, "separator"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x7c

    move-object/from16 v18, v13

    move-object/from16 v19, v5

    invoke-static/range {v17 .. v23}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)V

    :cond_6
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_3
    if-eqz v13, :cond_7

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "toString(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v5}, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->name:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    iput-boolean v2, v0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->verbose:Z

    iput-object v3, v0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->filter:Lkotlin/jvm/functions/Function2;

    new-instance v1, Lcom/android/settingslib/datastore/KeyedDataObservable;

    invoke-direct {v1}, Lcom/android/settingslib/datastore/KeyedDataObservable;-><init>()V

    iput-object v1, v0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->$$delegate_0:Lcom/android/settingslib/datastore/KeyedDataObservable;

    new-instance v1, Lcom/android/settingslib/datastore/SharedPreferencesStorage$sharedPreferencesListener$1;

    invoke-direct {v1, v0}, Lcom/android/settingslib/datastore/SharedPreferencesStorage$sharedPreferencesListener$1;-><init>(Lcom/android/settingslib/datastore/SharedPreferencesStorage;)V

    iput-object v1, v0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->sharedPreferencesListener:Lcom/android/settingslib/datastore/SharedPreferencesStorage$sharedPreferencesListener$1;

    invoke-interface {v6, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "this and base files have different roots: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic getIntermediateName$frameworks__base__packages__SettingsLib__DataStore__android_common__SeslSettingsLibDataStore$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final addObserver(Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->$$delegate_0:Lcom/android/settingslib/datastore/KeyedDataObservable;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/datastore/KeyedDataObservable;->addObserver(Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final defaultCodec()Lcom/android/settingslib/datastore/BackupCodec;
    .locals 0

    sget-object p0, Lcom/android/settingslib/datastore/BackupZipCodec;->BEST_COMPRESSION:Lcom/android/settingslib/datastore/BackupZipCodec;

    return-object p0
.end method

.method public final delete(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;->context:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "SharedPreferences "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " deleted"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupRestoreStorage"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void
.end method

.method public final getBackupFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->getIntermediateName$frameworks__base__packages__SettingsLib__DataStore__android_common__SeslSettingsLibDataStore()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settingslib/datastore/SharedPreferencesStorage$Companion;->getSharedPreferencesFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public final getIntermediateName$frameworks__base__packages__SettingsLib__DataStore__android_common__SeslSettingsLibDataStore()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->name:Ljava/lang/String;

    const-string v0, "_br_"

    invoke-static {v0, p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getSharedPreferences$frameworks__base__packages__SettingsLib__DataStore__android_common__SeslSettingsLibDataStore()Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public mergeSharedPreferences$frameworks__base__packages__SettingsLib__DataStore__android_common__SeslSettingsLibDataStore(Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entries"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->filter:Lkotlin/jvm/functions/Function2;

    invoke-interface {v2, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "="

    const-string v4, "] "

    const-string v5, "["

    const-string v6, "BackupRestoreStorage"

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->verbose:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->name:Ljava/lang/String;

    const-string v7, " skips "

    invoke-static {v5, v2, v4, p3, v7}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-boolean v2, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->verbose:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->name:Ljava/lang/String;

    const-string v7, " Boolean "

    invoke-static {v5, v2, v4, p3, v7}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    iget-boolean v2, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->verbose:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->name:Ljava/lang/String;

    const-string v7, " Float "

    invoke-static {v5, v2, v4, p3, v7}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-boolean v2, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->verbose:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->name:Ljava/lang/String;

    const-string v7, " Int "

    invoke-static {v5, v2, v4, p3, v7}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-interface {p1, v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-boolean v2, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->verbose:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->name:Ljava/lang/String;

    const-string v7, " Long "

    invoke-static {v5, v2, v4, p3, v7}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-boolean v2, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->verbose:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->name:Ljava/lang/String;

    const-string v7, " String "

    invoke-static {v5, v2, v4, p3, v7}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    instance-of v2, v0, Ljava/util/Set;

    const/4 v7, 0x0

    if-eqz v2, :cond_a

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/String;

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_7

    move-object v7, v8

    :cond_8
    const-string v2, " StringSet "

    if-eqz v7, :cond_9

    iget-object v8, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v5, v8, v4, p3, v2}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " but non string found: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string v7, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    check-cast v7, Ljava/util/Set;

    invoke-interface {p1, v1, v7}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    iget-boolean v7, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->verbose:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->name:Ljava/lang/String;

    invoke-static {v5, v7, v4, p3, v2}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->name:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    :cond_b
    const-string v8, " "

    invoke-static {v5, v2, v4, p3, v8}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", unknown type: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final notifyChange(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->$$delegate_0:Lcom/android/settingslib/datastore/KeyedDataObservable;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/datastore/KeyedDataObservable;->notifyChange(I)V

    return-void
.end method

.method public final onRestoreFinished(Ljava/io/File;)V
    .locals 3

    iget-object p1, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->sharedPreferencesListener:Lcom/android/settingslib/datastore/SharedPreferencesStorage$sharedPreferencesListener$1;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->getIntermediateName$frameworks__base__packages__SettingsLib__DataStore__android_common__SeslSettingsLibDataStore()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    const-string v2, "getAll(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Restore"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->mergeSharedPreferences$frameworks__base__packages__SettingsLib__DataStore__android_common__SeslSettingsLibDataStore(Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->sharedPreferencesListener:Lcom/android/settingslib/datastore/SharedPreferencesStorage$sharedPreferencesListener$1;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->getIntermediateName$frameworks__base__packages__SettingsLib__DataStore__android_common__SeslSettingsLibDataStore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->delete(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public final removeObserver(Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/datastore/SharedPreferencesStorage;->$$delegate_0:Lcom/android/settingslib/datastore/KeyedDataObservable;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/datastore/KeyedDataObservable;->removeObserver(Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;)V

    return-void
.end method
