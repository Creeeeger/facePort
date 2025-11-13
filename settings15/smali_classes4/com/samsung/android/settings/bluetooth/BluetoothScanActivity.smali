.class public final Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# instance fields
.field public mApplicationCategory:Landroidx/preference/PreferenceGroup;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mDescription:Landroidx/preference/Preference;

.field public mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field public mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public final mScanServerityList:Ljava/util/List;

.field public mScreen:Landroidx/preference/PreferenceScreen;

.field public mScreenId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addToList(Lorg/json/JSONArray;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;

    aget-object v6, v4, v2

    aget-object v7, v4, v1

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v6, v5, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->mPackageName:Ljava/lang/String;

    iput-object v7, v5, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->mSeverity:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Adding to severity list:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v4, v1

    const-string v8, "BluetoothScanActivity"

    invoke-static {v6, v7, v8}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "High"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    move v6, v0

    goto :goto_1

    :sswitch_1
    const-string v7, "Mid"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v6, v1

    goto :goto_1

    :sswitch_2
    const-string v7, "Low"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    packed-switch v6, :pswitch_data_0

    const-string v4, "addToList: Ignore none severity"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/2addr v3, v1

    goto/16 :goto_0

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x12b34 -> :sswitch_2
        0x12e28 -> :sswitch_1
        0x2251c2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public final onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public final onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public final onBluetoothStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->setPadding(IIII)V

    return-void
.end method

.method public final onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f170160

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f14221c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v0, "applications_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mDescription:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mDescription:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f142012

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScreenId:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1, v1, p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->setPadding(IIII)V

    return-void
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    const-string p0, "BluetoothScanActivity"

    const-string/jumbo v0, "onDestroyView::"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public final onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public final onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onPreferenceTreeClick :: Launch Application info about"

    const-string v1, "BluetoothScanActivity"

    invoke-static {v0, p1, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140efd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x18

    iget-object v1, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const-class p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/4 p0, 0x0

    const v0, 0x7f1403c9

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x0

    return p0
.end method

.method public final onResume()V
    .locals 12

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    const/4 v3, 0x2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v0, "refreshApplicationPreferences :: "

    const-string v3, "BluetoothScanActivity"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mDescription:Landroidx/preference/Preference;

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mDescription:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getCurrentScanStats()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_c

    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->addToList(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    const-string v0, "Added to list!! now creating pref"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScanServerityList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "createApplicationPreference :: package name is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->mPackageName:Ljava/lang/String;

    const-string v8, ""

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    move-object v7, v8

    :goto_3
    iget-object v9, v5, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->mSeverity:Ljava/lang/String;

    invoke-static {v6, v7, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, v5, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->mPackageName:Ljava/lang/String;

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    move-object v7, v8

    :goto_4
    invoke-virtual {v6, v7, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Low"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f142221

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_4
    const-string v7, "Mid"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f142222

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_5
    const-string v7, "High"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f14221b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_6
    move-object v7, v8

    :goto_5
    iget-object v9, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, v5, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->mPackageName:Ljava/lang/String;

    if-eqz v10, :cond_7

    goto :goto_6

    :cond_7
    move-object v10, v8

    :goto_6
    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    new-instance v10, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0d0932

    invoke-virtual {v10, v11}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iget-object v5, v5, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->mPackageName:Ljava/lang/String;

    if-eqz v5, :cond_9

    move-object v8, v5

    :cond_9
    invoke-virtual {v10, v8}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v9}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :catch_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "createApplicationPreference :: Occurs NameNotFoundException about "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity$ScanAppInfo;->mPackageName:Ljava/lang/String;

    if-eqz v5, :cond_a

    move-object v8, v5

    :cond_a
    invoke-static {v6, v8, v3}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v2

    :goto_7
    if-eqz v10, :cond_b

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v5, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto/16 :goto_2

    :cond_b
    const-string v5, "addApplicationPreferences :: Can\'t get Application Information about : "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const-string v2, "addApplicationPreferences :: listAppCount: "

    invoke-static {v0, v2, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-ltz v0, :cond_f

    const/16 v2, 0xa

    if-gt v0, v2, :cond_d

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_d
    const/16 v2, 0x14

    if-gt v0, v2, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f140c39

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f140c3a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f141fba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f140e90

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-nez v0, :cond_10

    const-string v0, "addNoApplicationsPreference :: Does not found Bluetooth scan application"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0934

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string v2, "idle"

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mApplicationCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_10
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanActivity;->mScreenId:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method public final onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method
