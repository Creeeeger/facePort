.class public final Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final APPS_KEY:Ljava/lang/String; = "pref_apps"

.field static final AUDIO_KEY:Ljava/lang/String; = "pref_audio"

.field static final CATEGORY_SPLITTER:Ljava/lang/String; = "storage_category_splitter"

.field static final DOCUMENTS_KEY:Ljava/lang/String; = "pref_documents"

.field static final GAMES_KEY:Ljava/lang/String; = "pref_games"

.field static final IMAGES_KEY:Ljava/lang/String; = "pref_images"

.field static final OTHER_KEY:Ljava/lang/String; = "pref_other"

.field static final PUBLIC_STORAGE_KEY:Ljava/lang/String; = "pref_public_storage"

.field static final SYSTEM_KEY:Ljava/lang/String; = "pref_system"

.field static final TEMPORARY_FILES_KEY:Ljava/lang/String; = "temporary_files"

.field static final TRASH_KEY:Ljava/lang/String; = "pref_trash"

.field static final VIDEOS_KEY:Ljava/lang/String; = "pref_videos"


# instance fields
.field mAppsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field final mAudioUri:Landroid/net/Uri;

.field mCategorySplitterPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field mDocumentsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field final mDocumentsUri:Landroid/net/Uri;

.field public final mFragment:Landroidx/fragment/app/Fragment;

.field mGamesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field mImagesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field final mImagesUri:Landroid/net/Uri;

.field public mIsDocumentsPrefShown:Z

.field public mIsPreferenceOrderedBySize:Z

.field public final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

.field mOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field final mOtherUri:Landroid/net/Uri;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPrivateStorageItemPreferences:Ljava/util/List;

.field public final mProfileType:I

.field mPublicStoragePreference:Landroidx/preference/Preference;

.field public mScreen:Landroidx/preference/PreferenceScreen;

.field public final mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

.field public final mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

.field mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field mTemporaryFilesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field public mTotalSize:J

.field mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field public mUsedBytes:J

.field public final mUserId:I

.field public final mUserManager:Landroid/os/UserManager;

.field mVideosPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field final mVideosUri:Landroid/net/Uri;

.field public mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserManager:Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    iput p4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mProfileType:I

    sget-object p2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getCurrentUserId()I

    move-result p2

    iput p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    iget-object p4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object p3, p3, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p3, p4}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsDocumentsPrefShown:Z

    new-instance p3, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    iget-object p4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p3, p4, p2}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f140a10

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f140a31

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1409f8

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f140a08

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140a15

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mOtherUri:Landroid/net/Uri;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "pref_public_storage"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPublicStoragePreference:Landroidx/preference/Preference;

    const-string v0, "pref_images"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_videos"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_audio"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_apps"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_games"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_documents"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_other"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "storage_category_splitter"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mCategorySplitterPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "pref_system"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "temporary_files"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTemporaryFilesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string v0, "pref_trash"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    return-void
.end method

.method public getCurrentUserId()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mProfileType:I

    invoke-static {v0, p0}, Lcom/android/settings/Utils;->getCurrentUserIdOfType(Landroid/os/UserManager;I)I

    move-result p0

    return p0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getWorkAnnotatedBundle(I)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(I)V

    const-string p1, ":settings:show_fragment_tab"

    iget p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mProfileType:I

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 11

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    const-string v4, "android.intent.extra.USER_ID"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    const/4 v6, 0x0

    const-string v7, "classname"

    iget-object v8, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v9, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v10, "pref_documents"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v9, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v10, "pref_videos"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v9, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v10, "pref_system"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v9, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v10, "temporary_files"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v9, 0x7

    goto :goto_0

    :sswitch_4
    const-string v10, "pref_images"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v9, 0x6

    goto :goto_0

    :sswitch_5
    const-string v10, "pref_public_storage"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v9, 0x5

    goto :goto_0

    :sswitch_6
    const-string v10, "pref_apps"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v9, 0x4

    goto :goto_0

    :sswitch_7
    const-string v10, "pref_trash"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    move v9, v0

    goto :goto_0

    :sswitch_8
    const-string v10, "pref_other"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v9, 0x2

    goto :goto_0

    :sswitch_9
    const-string v10, "pref_games"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    move v9, v1

    goto :goto_0

    :sswitch_a
    const-string v10, "pref_audio"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    move v9, v3

    :goto_0
    packed-switch v9, :pswitch_data_0

    return v3

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchActivityWithUri(Landroid/net/Uri;)V

    return v1

    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchActivityWithUri(Landroid/net/Uri;)V

    return v1

    :pswitch_2
    new-instance p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$SystemInfoFragment;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageUtils$SystemInfoFragment;-><init>()V

    invoke-virtual {p0, v8, v3}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "SystemInfo"

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v1

    :pswitch_3
    new-instance p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$TemporaryFilesInfoFragment;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageUtils$TemporaryFilesInfoFragment;-><init>()V

    invoke-virtual {p0, v8, v3}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "TemporaryFilesInfo"

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v1

    :pswitch_4
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchActivityWithUri(Landroid/net/Uri;)V

    return v1

    :pswitch_5
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_1

    :cond_c
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_1
    return v1

    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    const-string v3, "volumeUuid"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v3, "volumeName"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v3, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const p0, 0x7f1403d4

    invoke-virtual {v0, p0, v6}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iput-object p1, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result p0

    iput p0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v8, p0}, Lcom/android/settings/Utils;->launchIntent(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    return v1

    :pswitch_7
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.VIEW_TRASH"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, v3, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v7, p1, Lcom/android/settings/deviceinfo/StorageItemPreference;->mStorageSize:J

    const-wide/16 v4, 0x0

    cmp-long p1, v7, v4

    if-lez p1, :cond_d

    new-instance p1, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    iget v6, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    move-object v4, p1

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;-><init>(Landroidx/fragment/app/Fragment;IJLcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;)V

    iget-object p0, p1, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "empty_trash"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f142d97

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_e
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_2
    return v1

    :pswitch_8
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mOtherUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchActivityWithUri(Landroid/net/Uri;)V

    return v1

    :pswitch_9
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/android/settings/Settings$GamesStorageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v3, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const p0, 0x7f141067

    invoke-virtual {v0, p0, v6}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    iput-object p1, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result p0

    iput p0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v8, p0}, Lcom/android/settings/Utils;->launchIntent(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    return v1

    :pswitch_a
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchActivityWithUri(Landroid/net/Uri;)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6228c546 -> :sswitch_a
        -0x61dd2e5b -> :sswitch_9
        -0x6163e20c -> :sswitch_8
        -0x611e6de4 -> :sswitch_7
        -0x4d7d40f2 -> :sswitch_6
        -0x36b1fbbf -> :sswitch_5
        0x2a44c014 -> :sswitch_4
        0x303ddb09 -> :sswitch_3
        0x3c06afcb -> :sswitch_2
        0x403cb8f4 -> :sswitch_1
        0x4314df9c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isValidPrivateVolume()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final launchActivityWithUri(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final onLoadFinished(Landroid/util/SparseArray;I)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsPreferenceOrderedBySize:Z

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v9, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    if-nez p1, :cond_1

    invoke-virtual {v9}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->retrieveCachedSize()Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;

    move-result-object p2

    goto :goto_2

    :cond_1
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;

    new-instance v3, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->imagesSize:J

    iput-wide v4, v3, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->imagesSize:J

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->videosSize:J

    iput-wide v4, v3, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->videosSize:J

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->audioSize:J

    iput-wide v4, v3, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->audioSize:J

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->allAppsExceptGamesSize:J

    iput-wide v4, v3, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->allAppsExceptGamesSize:J

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->gamesSize:J

    iput-wide v4, v3, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->gamesSize:J

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->documentsSize:J

    iput-wide v4, v3, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->documentsSize:J

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->otherSize:J

    iput-wide v4, v3, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->otherSize:J

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->trashSize:J

    iput-wide v4, v3, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->trashSize:J

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->systemSize:J

    iput-wide v4, v3, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->systemSize:J

    const-wide/16 v4, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;

    iget-wide v7, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->gamesSize:J

    iget-wide v10, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->audioSize:J

    add-long/2addr v7, v10

    iget-wide v10, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->videosSize:J

    add-long/2addr v7, v10

    iget-wide v10, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->imagesSize:J

    add-long/2addr v7, v10

    iget-wide v10, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->documentsSize:J

    add-long/2addr v7, v10

    iget-wide v10, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->otherSize:J

    add-long/2addr v7, v10

    iget-wide v10, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->trashSize:J

    add-long/2addr v7, v10

    iget-wide v10, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->allAppsExceptGamesSize:J

    add-long/2addr v7, v10

    add-long/2addr v7, v4

    iget-wide v4, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->duplicateCodeSize:J

    sub-long v4, v7, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-wide v6, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->systemSize:J

    add-long/2addr v4, v6

    sget-object p2, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v6

    iget-wide v10, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUsedBytes:J

    sub-long/2addr v10, v4

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->temporaryFilesSize:J

    move-object p2, v3

    :goto_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->imagesSize:J

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->videosSize:J

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->audioSize:J

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->allAppsExceptGamesSize:J

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->gamesSize:J

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->documentsSize:J

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->otherSize:J

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->trashSize:J

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v3, :cond_3

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->systemSize:J

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f142d82

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTemporaryFilesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v3, :cond_4

    iget-wide v4, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->temporaryFilesSize:J

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    :cond_4
    if-eqz p1, :cond_5

    iget-object p1, v9, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->imagesSize:J

    const-string v0, "images_size_key"

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "videos_size_key"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->videosSize:J

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "audio_size_key"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->audioSize:J

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "apps_size_key"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->allAppsExceptGamesSize:J

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "games_size_key"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->gamesSize:J

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "documents_size_key"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->documentsSize:J

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "other_size_key"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->otherSize:J

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "trash_size_key"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->trashSize:J

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "system_size_key"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->systemSize:J

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "temporary_files_size_key"

    iget-wide v2, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->temporaryFilesSize:J

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsPreferenceOrderedBySize:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->updatePrivateStorageCategoryPreferencesOrder()V

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsPreferenceOrderedBySize:Z

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setPrivateStorageCategoryPreferencesVisibility(Z)V

    return-void
.end method

.method public setPrivateStorageCategoryPreferencesVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTemporaryFilesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mCategorySplitterPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsDocumentsPrefShown:Z

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsDocumentsPrefShown:Z

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public final setVolume(Landroid/os/storage/VolumeInfo;)V
    .locals 4

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPublicStoragePreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result p1

    const/4 v3, 0x5

    if-ne p1, v3, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result p1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result p1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    :cond_1
    iget p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mProfileType:I

    if-ne p1, v1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->isValidPrivateVolume()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    check-cast v0, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    iget-object v0, v0, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsDocumentsPrefShown:Z

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setPrivateStorageCategoryPreferencesVisibility(Z)V

    :goto_2
    return-void
.end method

.method public final updatePrivateStorageCategoryPreferencesOrder()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->isValidPrivateVolume()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    new-instance v1, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0xc8

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/StorageItemPreference;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    move v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
