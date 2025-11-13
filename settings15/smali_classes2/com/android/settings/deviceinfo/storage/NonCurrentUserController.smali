.class public final Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public mIsVisible:Z

.field public mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field public final mProfiles:[I

.field public final mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

.field public mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field public mTotalSizeBytes:J

.field public final mUser:Landroid/content/pm/UserInfo;

.field public mUserIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/UserInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mUser:Landroid/content/pm/UserInfo;

    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v0, p1, v1}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    iget p1, p2, Landroid/content/pm/UserInfo;->id:I

    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mProfiles:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/UserInfo;[I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mUser:Landroid/content/pm/UserInfo;

    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v0, p1, p2}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mProfiles:[I

    return-void
.end method

.method public static getNonCurrentUserControllers(Landroid/content/Context;Landroid/os/UserManager;)Ljava/util/List;
    .locals 6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-eq v4, v0, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v4

    new-instance v5, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;

    invoke-direct {v5, p0, v3, v4}, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;-><init>(Landroid/content/Context;Landroid/content/pm/UserInfo;[I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_non_current_users"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mUser:Landroid/content/pm/UserInfo;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pref_user_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mUser:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    iget-object p1, p1, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "used_size_key"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v3, :cond_0

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mTotalSizeBytes:J

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mIsVisible:Z

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mUserIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final handleResult(Landroid/util/SparseArray;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    const-wide/16 v3, 0x0

    const-string v5, "used_size_key"

    const/4 v11, 0x0

    if-nez v1, :cond_1

    iget-object v1, v2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iget-object v6, v0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v6, :cond_0

    iget-wide v9, v0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mTotalSizeBytes:J

    invoke-virtual/range {v6 .. v11}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    :cond_0
    return-void

    :cond_1
    iget-object v6, v0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mUser:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mProfiles:[I

    array-length v7, v6

    :goto_0
    if-ge v11, v7, :cond_2

    aget v8, v6, v11

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;

    iget-object v8, v8, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    iget-wide v8, v8, Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;->totalBytes:J

    add-long/2addr v3, v8

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    iget-object v12, v0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mStoragePreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v12, :cond_3

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/storage/NonCurrentUserController;->mTotalSizeBytes:J

    const/16 v17, 0x1

    move-wide v13, v3

    move-wide v15, v0

    invoke-virtual/range {v12 .. v17}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    :cond_3
    iget-object v0, v2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return-void
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
