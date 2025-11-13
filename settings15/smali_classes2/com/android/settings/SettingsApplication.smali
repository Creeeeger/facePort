.class public Lcom/android/settings/SettingsApplication;
.super Landroid/app/Application;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBiometricsEnvironment:Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;

.field public mHomeActivity:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/SettingsApplication;->mHomeActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    new-instance p1, Lcom/android/settings/overlay/FeatureFactoryImpl;

    invoke-direct {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;-><init>()V

    sput-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_appContext:Landroid/content/Context;

    sput-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    return-void
.end method

.method public final getHomeActivity()Lcom/android/settings/homepage/SettingsHomepageActivity;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/SettingsApplication;->mHomeActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    return-object p0
.end method

.method public final onCreate()V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "SettingsApplication#onCreate"

    invoke-static {v3}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v3, "com.android.settings:remote"

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    :cond_0
    new-instance v3, Lcom/android/settings/SettingsApplication$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/SettingsApplication$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/SettingsApplication;I)V

    invoke-static {v3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/datastore/BackupRestoreStorageManager;

    move-result-object v3

    new-instance v4, Lcom/android/settings/fuelgauge/BatterySettingsStorage;

    invoke-direct {v4, p0}, Lcom/android/settings/fuelgauge/BatterySettingsStorage;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/settingslib/datastore/SharedPreferencesStorage;

    invoke-direct {v5, p0}, Lcom/android/settingslib/datastore/SharedPreferencesStorage;-><init>(Landroid/content/Context;)V

    filled-new-array {v4, v5}, [Lcom/android/settingslib/datastore/BackupRestoreStorage;

    move-result-object v4

    move v5, v1

    :goto_0
    if-ge v5, v0, :cond_7

    aget-object v6, v4, v5

    const-string v7, "storage"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v7, v6, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;

    if-eqz v7, :cond_4

    move-object v7, v6

    check-cast v7, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;

    iget-object v8, v7, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;->storageFilePath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v7, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;->storageFilePath:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sget-char v9, Ljava/io/File;->separatorChar:C

    if-eq v8, v9, :cond_3

    invoke-virtual {v7}, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;->getBackupFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->isAbsolute()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;->getBackupFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->isAbsolute()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "restoreFile is not absolute"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "backupFile is not absolute"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    iget-object v0, v7, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;->storageFilePath:Ljava/lang/String;

    const-string v1, " is not valid path"

    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    invoke-virtual {v6}, Lcom/android/settingslib/datastore/BackupRestoreStorage;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->storageWrappers:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v9, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;

    invoke-direct {v9, v3, v6}, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;-><init>(Lcom/android/settingslib/datastore/BackupRestoreStorageManager;Lcom/android/settingslib/datastore/BackupRestoreStorage;)V

    invoke-virtual {v8, v7, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;

    if-eqz v8, :cond_5

    iget-object v8, v8, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;->storage:Lcom/android/settingslib/datastore/BackupRestoreStorage;

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_6

    add-int/2addr v5, v2

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Storage name \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' conflicts:\n\told: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tnew: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;

    invoke-direct {v3, p0}, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;-><init>(Lcom/android/settings/SettingsApplication;)V

    iput-object v3, p0, Lcom/android/settings/SettingsApplication;->mBiometricsEnvironment:Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;

    :cond_8
    const-string v3, "SettingsApplication#ActivityEmbeddingUtils"

    invoke-static {v3}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->SHOULD_ENABLE_LARGE_SCREEN_OPTIMIZATION:Z

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object v3

    const-string v4, "isSettingsSplitEnabled"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v2

    goto :goto_3

    :cond_9
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isSettingsSplitEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->setBoolean(Ljava/lang/String;Z)V

    :cond_a
    :goto_3
    if-eqz v3, :cond_d

    const-string v3, "settings_support_large_screen"

    invoke-static {p0, v3}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "SettingsApplication#SettingsManager.getForceSingleView"

    invoke-static {v3}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/SettingsManager;->getForceSingleView()Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v2

    goto :goto_4

    :cond_b
    move v3, v1

    :goto_4
    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object v4

    const-string v5, "flag_force_single_view"

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->setBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object v1

    const-string v3, "flag_user_setup_complete"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->setBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object v1

    const-string v3, "flag_settings_support_large_screen"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->setBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;

    invoke-direct {v1, p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->initRules()V

    goto :goto_5

    :cond_c
    new-instance v3, Lcom/android/settings/SettingsApplication$DeviceProvisionedObserver;

    invoke-direct {v3, p0}, Lcom/android/settings/SettingsApplication$DeviceProvisionedObserver;-><init>(Lcom/android/settings/SettingsApplication;)V

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v3, Lcom/android/settings/SettingsApplication$DeviceProvisionedObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_d
    :goto_5
    new-instance v1, Lcom/android/settings/development/DeveloperOptionsActivityLifecycle;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/settings/development/DeveloperOptionsActivityLifecycle$1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, Lcom/android/settings/development/DeveloperOptionsActivityLifecycle;->mFragmentCallback:Lcom/android/settings/development/DeveloperOptionsActivityLifecycle$1;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    new-instance v1, Lcom/android/settings/SettingsApplication$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/SettingsApplication$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/SettingsApplication;I)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/android/settings/SettingsApplication$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/SettingsApplication$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/SettingsApplication;I)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public final onTerminate()V
    .locals 5

    invoke-static {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/datastore/BackupRestoreStorageManager;

    move-result-object v0

    iget-object v1, v0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->storageWrappers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/settingslib/datastore/BackupRestoreStorageManager;->storageWrappers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;->storage:Lcom/android/settingslib/datastore/BackupRestoreStorage;

    instance-of v4, v3, Lcom/android/settingslib/datastore/KeyedObservable;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/android/settingslib/datastore/KeyedObservable;

    invoke-interface {v3, v2}, Lcom/android/settingslib/datastore/KeyedObservable;->removeObserver(Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;)V

    goto :goto_0

    :cond_1
    instance-of v4, v3, Lcom/android/settingslib/datastore/Observable;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/settingslib/datastore/Observable;

    invoke-interface {v3, v2}, Lcom/android/settingslib/datastore/Observable;->removeObserver$1(Lcom/android/settingslib/datastore/BackupRestoreStorageManager$StorageWrapper;)V

    goto :goto_0

    :cond_2
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    invoke-static {}, Lcom/android/settingslib/applications/AppIconCacheManager;->getInstance()Lcom/android/settingslib/applications/AppIconCacheManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x28

    if-lt p1, p0, :cond_0

    sget-object v0, Lcom/android/settingslib/applications/AppIconCacheManager;->sAppIconCacheManager:Lcom/android/settingslib/applications/AppIconCacheManager;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/settingslib/applications/AppIconCacheManager;->mDrawableCache:Lcom/android/settingslib/applications/AppIconCacheManager$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->trimToSize(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    :cond_1
    sget-object v0, Lcom/android/settingslib/applications/AppIconCacheManager;->sAppIconCacheManager:Lcom/android/settingslib/applications/AppIconCacheManager;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/settingslib/applications/AppIconCacheManager;->mDrawableCache:Lcom/android/settingslib/applications/AppIconCacheManager$1;

    invoke-virtual {v0}, Landroid/util/LruCache;->maxSize()I

    move-result v0

    sget-object v1, Lcom/android/settingslib/applications/AppIconCacheManager;->sAppIconCacheManager:Lcom/android/settingslib/applications/AppIconCacheManager;

    iget-object v1, v1, Lcom/android/settingslib/applications/AppIconCacheManager;->mDrawableCache:Lcom/android/settingslib/applications/AppIconCacheManager$1;

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->trimToSize(I)V

    :cond_2
    :goto_0
    if-lt p1, p0, :cond_3

    sget-object p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;->INSTANCE:Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    sput-object p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;->INSTANCE:Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/samsung/android/settings/accessibility/recommend/UsingFunctionsProvider;->USING_FUNCTION_CONTROLLERS:Ljava/util/Map;

    :cond_4
    :goto_1
    return-void
.end method
