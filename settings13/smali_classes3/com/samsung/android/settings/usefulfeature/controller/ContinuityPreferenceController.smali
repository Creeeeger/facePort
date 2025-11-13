.class public Lcom/samsung/android/settings/usefulfeature/controller/ContinuityPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ContinuityPreferenceController.java"


# static fields
.field public static final COPY_AND_PASTE:I = 0x8

.field public static final HAND_OFF:I = 0x4

.field private static final KEY_CONTINUITY:Ljava/lang/String; = "continuity_setting"

.field private static final MCF_CONTINUITY_TYPE:I

.field public static final SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String; = "com.osp.app.signin"


# instance fields
.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/usefulfeature/controller/ContinuityPreferenceController;->MCF_CONTINUITY_TYPE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/controller/ContinuityPreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    :cond_0
    const-string p2, "wifi"

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/ContinuityPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private setWifiBtEnabled()Z
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/ContinuityPreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/ContinuityPreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/controller/ContinuityPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/ContinuityPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "continuity_setting"

    .line 58
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/ContinuityPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 129
    sget p0, Lcom/samsung/android/settings/usefulfeature/controller/ContinuityPreferenceController;->MCF_CONTINUITY_TYPE:I

    const/4 v0, 0x3

    if-gtz p0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/16 v1, 0x8

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSamsungAccount()Landroid/accounts/Account;
    .locals 2

    .line 105
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.osp.app.signin"

    .line 110
    invoke-virtual {p0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 111
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 112
    aget-object p0, p0, v0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 52
    sget p0, Lcom/android/settings/R$string;->menu_key_advanced_features:I

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->getContinuitySettingValue(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/ContinuityPreferenceController;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/ContinuityPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->setContinuitySettingValue(Landroid/content/Context;I)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/controller/ContinuityPreferenceController;->startActivityForResult(I)V

    return v0

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/controller/ContinuityPreferenceController;->setWifiBtEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->continuity_set_enable_description:I

    new-array v4, v0, [Ljava/lang/Object;

    sget v5, Lcom/android/settings/R$string;->continuity_title:I

    .line 79
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 78
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 84
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->setContinuitySettingValue(Landroid/content/Context;I)V

    return v0
.end method

.method public startActivityForResult(I)V
    .locals 3

    .line 118
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/settings/usefulfeature/ContinuityAddAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "requestCode"

    .line 119
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
