.class public Lcom/android/settings/deviceinfo/PublicVolumeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PublicVolumeSettings.java"


# instance fields
.field private mDisk:Landroid/os/storage/DiskInfo;

.field private mFormatPrivate:Landroidx/preference/Preference;

.field private mFormatPublic:Landroidx/preference/Preference;

.field private mIsPermittedToAdopt:Z

.field private mMount:Landroidx/preference/Preference;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSummary:Lcom/android/settingslib/widget/UsageProgressBarPreference;

.field private mUnmount:Lcom/samsung/android/settings/widget/SecButtonPreference;

.field private final mUnmountListener:Landroid/view/View$OnClickListener;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmStorageManager(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVolume(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVolumeId(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmVolume(Lcom/android/settings/deviceinfo/PublicVolumeSettings;Landroid/os/storage/VolumeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 269
    new-instance v0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;-><init>(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmountListener:Landroid/view/View$OnClickListener;

    .line 279
    new-instance v0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings$2;-><init>(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private addPreference(Landroidx/preference/Preference;)V
    .locals 1

    const v0, 0x7fffffff

    .line 213
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 214
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private buildAction(I)Landroidx/preference/Preference;
    .locals 1

    .line 218
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 219
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    return-object v0
.end method

.method private isVolumeValid()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 79
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 150
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 153
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 98
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.action.DOCUMENT_ROOT_SETTINGS"

    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 112
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    .line 118
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    .line 122
    sget v0, Lcom/android/settings/R$xml;->device_info_storage_volume:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 123
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 125
    new-instance v0, Lcom/android/settingslib/widget/UsageProgressBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/UsageProgressBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    .line 127
    sget v0, Lcom/android/settings/R$string;->storage_menu_mount:I

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mMount:Landroidx/preference/Preference;

    .line 133
    new-instance v0, Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/widget/SecButtonPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Lcom/samsung/android/settings/widget/SecButtonPreference;

    const/16 v1, 0x3e8

    .line 134
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Lcom/samsung/android/settings/widget/SecButtonPreference;

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->storage_menu_unmount:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonText(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Lcom/samsung/android/settings/widget/SecButtonPreference;

    sget v1, Lcom/android/settings/R$drawable;->sec_widget_color_round_button_background:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonBackGroundResource(I)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Lcom/samsung/android/settings/widget/SecButtonPreference;

    sget v1, Lcom/android/settings/R$color;->sec_widget_color_round_button_text_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonTextColor(I)V

    .line 139
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Lcom/samsung/android/settings/widget/SecButtonPreference;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    sget p1, Lcom/android/settings/R$string;->storage_menu_format:I

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroidx/preference/Preference;

    .line 143
    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    if-eqz p1, :cond_3

    .line 144
    sget p1, Lcom/android/settings/R$string;->storage_menu_format_private:I

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroidx/preference/Preference;

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 246
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 247
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mMount:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 253
    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/storage/StorageUtils$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroidx/preference/Preference;

    const/16 v1, 0x1268

    if-ne p1, v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getMetricsCategory()I

    move-result v0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 258
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->showPublic(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getMetricsCategory()I

    move-result v0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->showPrivate(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 266
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 225
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 227
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 235
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->update()V

    return-void
.end method

.method public update()V
    .locals 7

    .line 166
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 178
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreference(Landroidx/preference/Preference;)V

    .line 181
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 186
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    sget v6, Lcom/android/settings/R$string;->storage_usage_summary:I

    invoke-static {v0, v6, v4, v5}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->getStorageSummary(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setUsageSummary(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    sget v6, Lcom/android/settings/R$string;->storage_total_summary:I

    invoke-static {v0, v6, v2, v3}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->getStorageSummary(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setTotalSummary(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settingslib/widget/UsageProgressBarPreference;

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/android/settingslib/widget/UsageProgressBarPreference;->setPercent(JJ)V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-nez v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mMount:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreference(Landroidx/preference/Preference;)V

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreference(Landroidx/preference/Preference;)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreference(Landroidx/preference/Preference;)V

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->mUnmount:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreference(Landroidx/preference/Preference;)V

    :cond_4
    return-void
.end method
