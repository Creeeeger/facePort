.class public Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BluetoothAdvancedSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field private static CSC_COMMON_CHINA_NAL_SECURITY_TYPE:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static final mAdvancedDeltaTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAskToUsePreference:Landroidx/preference/SwitchPreferenceCompat;

.field private mCloudNonSwitchPreference:Landroidx/preference/SecPreference;

.field private mCloudSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

.field private mControlHistoryPreference:Landroidx/preference/SecPreference;

.field public mIBRDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mIBRPreference:Landroidx/preference/SwitchPreferenceCompat;

.field private mIsConsentedToUseNetwork:Z

.field private mIsDisableSyncMenu:Z

.field private mIsSCBinded:Z

.field private mIsSCMenuUpdated:Z

.field private mIsScloudInstalled:Z

.field private mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mReceivedFilesPreference:Landroidx/preference/SecPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mRenamePreference:Landroidx/preference/SecPreference;

.field private mScProfile:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

.field private mScSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

.field private mScanActivityPreference:Landroidx/preference/SecPreference;

.field private mScreenId:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLocalBluetoothAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRenamePreference(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroidx/preference/SecPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mRenamePreference:Landroidx/preference/SecPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsSCBinded(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsSCBinded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misInBandRingtoneEnabled(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isInBandRingtoneEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateDeviceName(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->updateDeviceName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetCSC_COMMON_CHINA_NAL_SECURITY_TYPE()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->CSC_COMMON_CHINA_NAL_SECURITY_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smisDisableSyncOptionMenu(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isDisableSyncOptionMenu(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisUseDeltaOptionMenu()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isUseDeltaOptionMenu()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 144
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->CSC_COMMON_CHINA_NAL_SECURITY_TYPE:Ljava/lang/String;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "SPR"

    const-string v2, "VMU"

    const-string v3, "BST"

    const-string v4, "XAS"

    const-string v5, "VZW"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAdvancedDeltaTargets:Ljava/util/List;

    .line 763
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 837
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsDisableSyncMenu:Z

    .line 137
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsScloudInstalled:Z

    .line 140
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsSCBinded:Z

    .line 141
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsSCMenuUpdated:Z

    .line 159
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiverRegistered:Z

    .line 160
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsConsentedToUseNetwork:Z

    .line 647
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 717
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$3;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initPreferences()V
    .locals 7

    const-string v0, "key_bluetooth_received_files"

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceivedFilesPreference:Landroidx/preference/SecPreference;

    const-string v0, "key_bluetooth_rename"

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mRenamePreference:Landroidx/preference/SecPreference;

    const-string v0, "key_bluetooth_cloud_none_switch"

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudNonSwitchPreference:Landroidx/preference/SecPreference;

    const-string v0, "key_bluetooth_cloud_switch"

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    const-string v1, "key_bluetooth_ibr"

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroidx/preference/SwitchPreferenceCompat;

    const-string v1, "key_bluetooth_control_history"

    .line 188
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mControlHistoryPreference:Landroidx/preference/SecPreference;

    const-string v1, "key_bluetooth_scan_activity"

    .line 190
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScanActivityPreference:Landroidx/preference/SecPreference;

    const-string v1, "key_bluetooth_ask_to_use"

    .line 192
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAskToUsePreference:Landroidx/preference/SwitchPreferenceCompat;

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "persist.bluetooth.enableinbandringing"

    .line 195
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110201

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 197
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate:: isSupportIBR - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ,isVoiceCapable - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , isSupportSoftphone - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BluetoothAdvancedSettings"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    .line 199
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    const-string v2, "Softphone"

    .line 201
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 202
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mControlHistoryPreference:Landroidx/preference/SecPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 208
    :cond_2
    sget-object v1, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->CSC_COMMON_CHINA_NAL_SECURITY_TYPE:Ljava/lang/String;

    const-string v2, "ChinaNalSecurity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 209
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAskToUsePreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 212
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 213
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 216
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isUseDeltaOptionMenu()Z

    move-result v0

    if-nez v0, :cond_5

    .line 217
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceivedFilesPreference:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 218
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mRenamePreference:Landroidx/preference/SecPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 220
    :cond_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 222
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 223
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceivedFilesPreference:Landroidx/preference/SecPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    const-string v0, "adapter is null"

    .line 226
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceivedFilesPreference:Landroidx/preference/SecPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method private static isDisableSyncOptionMenu(Landroid/content/Context;)Z
    .locals 5

    .line 693
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "user"

    .line 695
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 694
    invoke-static {v1}, Lcom/android/settings/Utils;->isKnoxContainer(Landroid/os/UserManager;)Z

    move-result v1

    const-string v2, "com.samsung.android.scloud"

    .line 696
    invoke-static {p0, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    if-nez v0, :cond_3

    if-nez v2, :cond_3

    .line 701
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "samsungapps://ProductDetail/com.samsung.android.scloud/?source=Samsung Cloud"

    .line 702
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 703
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 704
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_2

    move v3, v4

    :cond_2
    move v0, v3

    :cond_3
    return v0
.end method

.method private isInBandRingtoneEnabled()Z
    .locals 1

    const-string p0, "persist.bluetooth.disableinbandringing"

    const/4 v0, 0x0

    .line 625
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isUseDeltaOptionMenu()Z
    .locals 2

    .line 684
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 685
    sget-object v1, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAdvancedDeltaTargets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateDeviceName()V
    .locals 2

    .line 580
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 582
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mRenamePreference:Landroidx/preference/SecPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateOppTransferHistory()V
    .locals 3

    .line 403
    invoke-static {}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isUseDeltaOptionMenu()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 408
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    .line 409
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceivedFilesPreference:Landroidx/preference/SecPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 411
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceivedFilesPreference:Landroidx/preference/SecPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "BluetoothAdvancedSettings"

    const-string v2, "Adapter is null"

    .line 414
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceivedFilesPreference:Landroidx/preference/SecPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private updateSwitch()V
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 381
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume :: Bluetooth Dual Play Settings will finish, adapter state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAdvancedSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_bluetooth_advanced_ibr_summary_tablet:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_bluetooth_advanced_ibr_summary:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 393
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroidx/preference/SwitchPreferenceCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isInBandRingtoneEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 396
    sget-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->CSC_COMMON_CHINA_NAL_SECURITY_TYPE:Ljava/lang/String;

    const-string v2, "ChinaNalSecurity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 397
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "bluetooth_security_on_check"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 398
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAskToUsePreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BluetoothAdvancedSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 2

    .line 856
    sget p0, Lcom/android/settings/R$xml;->sec_bluetooth_advanced_settings:I

    .line 857
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    sget p0, Lcom/android/settings/R$xml;->sec_bluetooth_advanced_settings_jpn:I

    goto :goto_0

    :cond_0
    const-string v0, "SamsungCloudBrandType"

    .line 859
    invoke-static {v0}, Lcom/samsung/android/settings/account/AccountUtils;->getSamsungCloudFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NA_NOBRAND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 860
    sget p0, Lcom/android/settings/R$xml;->sec_bluetooth_advanced_settings_vzw:I

    :cond_1
    :goto_0
    return p0
.end method

.method launchSCloudInstall()V
    .locals 3

    .line 952
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "samsungapps://ProductDetail/com.samsung.android.scloud/?source=Samsung Cloud"

    .line 953
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "type"

    const-string v2, "cover"

    .line 954
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x14000020

    .line 955
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 956
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 268
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothStateChanged :: state ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothAdvancedSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->updateSwitch()V

    .line 742
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->updateOppTransferHistory()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 474
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p0, "BluetoothAdvancedSettings"

    const-string p1, "onConfigurationChanged :: "

    .line 475
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 747
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->updateSwitch()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 234
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 242
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isDisableSyncOptionMenu(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsDisableSyncMenu:Z

    .line 243
    new-instance p1, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    invoke-direct {p1}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScProfile:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    .line 244
    new-instance p1, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;-><init>(Landroid/content/Context;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->screen_bluetooth_advanced_setting:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 262
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 263
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->initPreferences()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 868
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->close(Landroid/content/Context;)V

    .line 869
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 367
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    .line 371
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->event_bluetooth_advanced_settings_navigate_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 4

    .line 273
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroidx/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAskToUsePreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 282
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiverRegistered:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiverRegistered:Z

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudNonSwitchPreference:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 288
    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsSCMenuUpdated:Z

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .line 480
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange() :: preference - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isChecked - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAdvancedSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const-string v4, "key_bluetooth_ibr"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v7, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "key_bluetooth_cloud_switch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v7, v5

    goto :goto_0

    :sswitch_2
    const-string v2, "key_bluetooth_ask_to_use"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_0
    packed-switch v7, :pswitch_data_0

    const-string p0, "Wrong preference key!"

    .line 551
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :pswitch_0
    if-eqz p2, :cond_3

    .line 490
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isInBandRingtoneEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    if-nez p2, :cond_5

    .line 491
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isInBandRingtoneEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    const-string p0, "switchStateChange :: It is not user interaction"

    .line 492
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 496
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectionState()I

    move-result p1

    if-eq p1, v3, :cond_9

    if-ne p1, v5, :cond_6

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_7

    .line 501
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->detail_switch_on:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 502
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->detail_switch_off:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 504
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    .line 505
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->event_bluetooth_advanced_settings_ringtone_sync_onoff:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_8

    const-string p1, "true"

    goto :goto_2

    :cond_8
    const-string p1, "false"

    :goto_2
    const-string v0, "persist.bluetooth.disableinbandringing"

    .line 508
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.bt.hfp.intent.action.INBAND_RINGTONE_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.bt.hfp.intent.extra.INBAND_RINGTONE_STATE"

    .line 511
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p2, 0x1000000

    .line 512
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 513
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 498
    :cond_9
    :goto_3
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->showAskDialog(Ljava/lang/String;)V

    return v6

    .line 537
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getSamsungAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 539
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    const-string v3, "com.samsung.bt.btservice.btsettingsprovider"

    invoke-virtual {v2, v3, p2}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->switchOnOff(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "rcode"

    .line 540
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "20000000"

    .line 541
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 542
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cloud switch fail:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_a
    if-eqz p2, :cond_b

    .line 545
    iget-object p0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_4

    :cond_b
    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_advanced_auto_sync_disabled:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 546
    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, p2}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_7

    :pswitch_2
    if-eqz p2, :cond_c

    .line 518
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->detail_switch_on:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 519
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->detail_switch_off:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_5
    const-string v0, "bluetooth_security_on_check"

    if-eqz p2, :cond_d

    .line 523
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    .line 526
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 529
    :goto_6
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    .line 530
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->event_bluetooth_setting_china_popup_check_box:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 529
    invoke-static {p2, v2, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "KEY_ASK_TO_USE - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_7
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x772001a6 -> :sswitch_2
        -0x4d3a27b1 -> :sswitch_1
        -0x10862078 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 421
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "key_bluetooth_rename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "key_bluetooth_scan_activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "key_bluetooth_control_history"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "key_bluetooth_cloud_none_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "key_bluetooth_cloud_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_0

    :sswitch_5
    const-string v1, "key_bluetooth_received_files"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    const-string v0, "com.samsung.bt.btservice.btsettingsprovider"

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 437
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->event_bluetooth_advanced_settings_rename_phone:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 440
    sget v1, Lcom/android/settings/R$string;->phone_name_title:I

    .line 442
    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;->newInstance(I)Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceNameEditor;

    move-result-object v1

    .line 443
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    .line 449
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->event_bluetooth_advanced_settings_scan_activity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 446
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->event_bluetooth_advanced_settings_control_history:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 454
    :pswitch_3
    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsScloudInstalled:Z

    if-nez v1, :cond_6

    .line 455
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->launchSCloudInstall()V

    goto :goto_1

    .line 457
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    invoke-virtual {v1, v0}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->showSetting(Ljava/lang/String;)V

    goto :goto_1

    .line 461
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    invoke-virtual {v1, v0}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->showSetting(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    .line 426
    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->event_bluetooth_advanced_settings_received_files:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.bluetooth"

    const-string v4, "com.android.bluetooth.opp.BluetoothOppTransferHistory"

    .line 429
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x14000000

    .line 430
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "direction"

    .line 431
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "android.btopp.intent.extra.SHOW_ALL"

    .line 432
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 433
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_2
    if-eqz v0, :cond_7

    .line 466
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_7
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7128ddd6 -> :sswitch_5
        -0x4d3a27b1 -> :sswitch_4
        -0x17c3b220 -> :sswitch_3
        0x42e6e41 -> :sswitch_2
        0xd4ddce0 -> :sswitch_1
        0x27091fcf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 6

    .line 294
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 298
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 302
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mControlHistoryPreference:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mControlHistoryPreference:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isBleScanHistorySupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScanActivityPreference:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 315
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "com.samsung.android.scloud"

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsScloudInstalled:Z

    .line 317
    iget-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsDisableSyncMenu:Z

    const-string v4, "key_bluetooth_cloud_switch"

    const-string v5, "key_bluetooth_cloud_none_switch"

    if-eqz v3, :cond_4

    .line 318
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 319
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudNonSwitchPreference:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 321
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 322
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_6

    .line 324
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsSCBinded:Z

    if-nez v0, :cond_5

    goto :goto_1

    .line 339
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->updateCloudPreference()V

    goto :goto_3

    .line 325
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_7

    .line 326
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudNonSwitchPreference:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 328
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 329
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 331
    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsScloudInstalled:Z

    if-nez v0, :cond_a

    .line 332
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudNonSwitchPreference:Landroidx/preference/SecPreference;

    sget v3, Lcom/android/settings/R$string;->sec_bluetooth_advanced_scloud_not_installed:I

    new-array v4, v2, [Ljava/lang/Object;

    .line 333
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 334
    sget v5, Lcom/android/settings/R$string;->sec_bluetooth_advanced_galaxycloud_app_name:I

    goto :goto_2

    :cond_9
    sget v5, Lcom/android/settings/R$string;->sec_bluetooth_advanced_scloud_app_name:I

    .line 333
    :goto_2
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 332
    invoke-virtual {p0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 335
    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsSCBinded:Z

    if-nez v0, :cond_b

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudNonSwitchPreference:Landroidx/preference/SecPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 343
    :cond_b
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->updateSwitch()V

    .line 345
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->updateOppTransferHistory()V

    .line 347
    invoke-static {}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->isUseDeltaOptionMenu()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 348
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->updateDeviceName()V

    .line 349
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mRenamePreference:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 352
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 353
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAskToUsePreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 355
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.settings.DEVICE_NAME_CHANGED"

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mReceiverRegistered:Z

    .line 362
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScreenId:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 176
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 171
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    return-void
.end method

.method showAskDialog(Ljava/lang/String;)V
    .locals 2

    .line 558
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "key_bluetooth_ibr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "BluetoothAdvancedSettings"

    const-string p1, "Wrong preference key!"

    .line 569
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 560
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 561
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_ibr_ask_popup_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 562
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_ibr_ask_popup_content:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 563
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->common_ok:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 564
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->common_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIBRDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 565
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 574
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method updateCloudPreference()V
    .locals 9

    const-string v0, "BluetoothAdvancedSettings"

    const-string v1, "updateCloudPreference"

    .line 873
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsSCMenuUpdated:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsSCBinded:Z

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 879
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScSetting:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScProfile:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    const-string v3, "com.samsung.bt.btservice.btsettingsprovider"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->getProfile(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "rcode"

    .line 880
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 881
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScProfile:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    iget v2, v2, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->preCondition:I

    const/16 v3, 0x1000

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsConsentedToUseNetwork:Z

    .line 882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get sc profile result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "20000000"

    .line 883
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v6, "key_bluetooth_cloud_none_switch"

    const-string v7, "key_bluetooth_cloud_switch"

    if-nez v2, :cond_5

    const-string v2, "90000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 884
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get sc profile failed ison:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScProfile:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    iget v4, v4, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->isOn:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " precon:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScProfile:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    iget v4, v4, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->preCondition:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScProfile:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    iget-object v5, v5, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->authorityName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScProfile:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    iget-object v4, v4, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->accountName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " rcode:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 887
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 888
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 890
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_3

    .line 891
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudNonSwitchPreference:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 892
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudNonSwitchPreference:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 894
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsConsentedToUseNetwork:Z

    if-nez v0, :cond_4

    .line 895
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudNonSwitchPreference:Landroidx/preference/SecPreference;

    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_advanced_sync_no_consent_to_use_network_chn:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 897
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudNonSwitchPreference:Landroidx/preference/SecPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    .line 901
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScProfile:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    iget v1, v1, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->preCondition:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_6

    const-string v1, "SA not logged"

    .line 902
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_2

    :cond_6
    move v1, v5

    .line 905
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScProfile:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    iget v2, v2, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->preCondition:I

    const/16 v8, 0x100

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_7

    const-string v2, "has no personal info agreement"

    .line 906
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_3

    :cond_7
    move v0, v5

    .line 910
    :goto_3
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    if-eqz v1, :cond_d

    if-eqz v0, :cond_d

    if-nez v2, :cond_8

    goto :goto_5

    .line 932
    :cond_8
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 933
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudNonSwitchPreference:Landroidx/preference/SecPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 935
    :cond_9
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_a

    .line 936
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 938
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScProfile:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    iget v0, v0, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->isOn:I

    if-ne v0, v5, :cond_b

    move v4, v5

    .line 939
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 940
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    check-cast v0, Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v4, :cond_c

    .line 942
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mScProfile:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;

    iget-object v1, v1, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 944
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_advanced_auto_sync_disabled:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 946
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_6

    .line 913
    :cond_d
    :goto_5
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 914
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v7, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 915
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, v7}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 917
    :cond_e
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_f

    .line 918
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudNonSwitchPreference:Landroidx/preference/SecPreference;

    invoke-virtual {v3, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_f
    if-nez v1, :cond_11

    .line 921
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 922
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudNonSwitchPreference:Landroidx/preference/SecPreference;

    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_advanced_sign_in_galaxy_acount:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_6

    .line 924
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudNonSwitchPreference:Landroidx/preference/SecPreference;

    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_advanced_sign_in_sacount_to_sync:I

    new-array v2, v5, [Ljava/lang/Object;

    sget v3, Lcom/android/settings/R$string;->bluetooth_settings:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_11
    if-nez v0, :cond_12

    .line 927
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudNonSwitchPreference:Landroidx/preference/SecPreference;

    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_advanced_scloud_personal:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_6

    :cond_12
    if-nez v2, :cond_13

    .line 929
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mCloudNonSwitchPreference:Landroidx/preference/SecPreference;

    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_advanced_sync_turned_off:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 948
    :cond_13
    :goto_6
    iput-boolean v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->mIsSCMenuUpdated:Z

    :cond_14
    :goto_7
    return-void
.end method
