.class public final Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sSingleton:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;


# instance fields
.field public final mListeners:Ljava/util/Set;

.field public mPostureDefaultRotationLockSettings:Landroid/util/SparseIntArray;

.field public mPostureRotationLockDefaults:[Ljava/lang/String;

.field public mPostureRotationLockFallbackSettings:Landroid/util/SparseIntArray;

.field public mPostureRotationLockSettings:Landroid/util/SparseIntArray;

.field public final mPosturesHelper:Lcom/android/settingslib/devicestate/PosturesHelper;

.field public final mSecureSettings:Lcom/android/settingslib/devicestate/SecureSettings;

.field public mSettableDeviceStates:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/devicestate/SecureSettings;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mListeners:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mSecureSettings:Lcom/android/settingslib/devicestate/SecureSettings;

    new-instance v1, Lcom/android/settingslib/devicestate/PosturesHelper;

    invoke-direct {v1, p1}, Lcom/android/settingslib/devicestate/PosturesHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPosturesHelper:Lcom/android/settingslib/devicestate/PosturesHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x107013e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockDefaults:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->loadDefaults()V

    invoke-virtual {p0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->initializeInMemoryMap()V

    new-instance p1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager$1;

    invoke-direct {p1, p0, v0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager$1;-><init>(Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;Landroid/os/Handler;)V

    check-cast p2, Lcom/android/settingslib/devicestate/AndroidSecureSettings;

    iget-object p0, p2, Lcom/android/settingslib/devicestate/AndroidSecureSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "device_state_rotation_lock"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-virtual {p0, p2, v0, p1, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;
    .locals 3

    const-class v0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->sSingleton:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/settingslib/devicestate/AndroidSecureSettings;

    invoke-direct {v2, v1}, Lcom/android/settingslib/devicestate/AndroidSecureSettings;-><init>(Landroid/content/ContentResolver;)V

    new-instance v1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/devicestate/SecureSettings;)V

    sput-object v1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->sSingleton:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->sSingleton:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized resetInstance()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->sSingleton:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final initializeInMemoryMap()V
    .locals 9

    iget-object v0, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mSecureSettings:Lcom/android/settingslib/devicestate/SecureSettings;

    check-cast v0, Lcom/android/settingslib/devicestate/AndroidSecureSettings;

    iget-object v0, v0, Lcom/android/settingslib/devicestate/AndroidSecureSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "device_state_rotation_lock"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->loadDefaults()V

    invoke-virtual {p0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->persistSettings()V

    return-void

    :cond_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    rem-int/lit8 v1, v1, 0x2

    const-string v2, "DSRotLockSettingsMngr"

    if-eqz v1, :cond_1

    const-string v0, "Can\'t deserialize saved settings, falling back on defaults"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->loadDefaults()V

    invoke-virtual {p0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->persistSettings()V

    return-void

    :cond_1
    new-instance v1, Landroid/util/SparseIntArray;

    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockSettings:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    array-length v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_5

    add-int/lit8 v4, v3, 0x1

    :try_start_0
    aget-object v6, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v3, v3, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_1
    iget-object v8, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureDefaultRotationLockSettings:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    if-eq v7, v5, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conflict for ignored device state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Falling back on defaults"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->loadDefaults()V

    invoke-virtual {p0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->persistSettings()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockSettings:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_3
    const-string v1, "Error deserializing one of the saved settings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->loadDefaults()V

    invoke-virtual {p0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->persistSettings()V

    :cond_5
    return-void
.end method

.method public final loadDefaults()V
    .locals 14

    const-string v0, "DSRotLockSettingsMngr"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockDefaults:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mSettableDeviceStates:Ljava/util/List;

    new-instance v1, Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockDefaults:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureDefaultRotationLockSettings:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockDefaults:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockSettings:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockFallbackSettings:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockDefaults:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_8

    aget-object v6, v1, v5

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    :try_start_0
    aget-object v8, v7, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v9, v7, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-nez v9, :cond_1

    array-length v12, v7

    if-ne v12, v11, :cond_0

    aget-object v7, v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v12, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockFallbackSettings:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Rotation lock setting is IGNORED, but values have unexpected size of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    iget-object v12, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPosturesHelper:Lcom/android/settingslib/devicestate/PosturesHelper;

    if-eqz v8, :cond_6

    if-eq v8, v2, :cond_5

    if-eq v8, v10, :cond_4

    if-eq v8, v11, :cond_3

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    iget-object v10, v12, Lcom/android/settingslib/devicestate/PosturesHelper;->rearDisplayDeviceStates:[I

    invoke-static {v10}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_3

    :cond_4
    iget-object v10, v12, Lcom/android/settingslib/devicestate/PosturesHelper;->unfoldedDeviceStates:[I

    invoke-static {v10}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_3

    :cond_5
    iget-object v10, v12, Lcom/android/settingslib/devicestate/PosturesHelper;->halfFoldedDeviceStates:[I

    invoke-static {v10}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_3

    :cond_6
    iget-object v10, v12, Lcom/android/settingslib/devicestate/PosturesHelper;->foldedDeviceStates:[I

    invoke-static {v10}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([I)Ljava/lang/Integer;

    move-result-object v10

    :goto_3
    if-eqz v10, :cond_7

    iget-object v11, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mSettableDeviceStates:Ljava/util/List;

    new-instance v12, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager$SettableDeviceState;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v12, v10, v7}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager$SettableDeviceState;-><init>(IZ)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No matching device state for posture: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object v7, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockSettings:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v7, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureDefaultRotationLockSettings:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :goto_5
    const-string v1, "Error parsing settings entry. Entry was: "

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    return-void
.end method

.method public onPersistedSettingsChanged()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->initializeInMemoryMap()V

    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mListeners:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager$DeviceStateRotationLockSettingsListener;

    invoke-interface {v0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager$DeviceStateRotationLockSettingsListener;->onSettingsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final persistSettingIfChanged(Ljava/lang/String;)V
    .locals 5

    iget-object p0, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mSecureSettings:Lcom/android/settingslib/devicestate/SecureSettings;

    move-object v0, p0

    check-cast v0, Lcom/android/settingslib/devicestate/AndroidSecureSettings;

    iget-object v0, v0, Lcom/android/settingslib/devicestate/AndroidSecureSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "device_state_rotation_lock"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "persistSettingIfChanged: last="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", new="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DSRotLockSettingsMngr"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lcom/android/settingslib/devicestate/AndroidSecureSettings;

    iget-object p0, p0, Lcom/android/settingslib/devicestate/AndroidSecureSettings;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public final persistSettings()V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockSettings:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->persistSettingIfChanged(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockSettings:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockSettings:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockSettings:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockSettings:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockSettings:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->persistSettingIfChanged(Ljava/lang/String;)V

    return-void
.end method

.method public resetStateForTesting(Landroid/content/res/Resources;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const v0, 0x107013e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockDefaults:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->loadDefaults()V

    invoke-virtual {p0}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->persistSettings()V

    return-void
.end method
