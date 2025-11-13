.class public Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "MobileWIPSPrefController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static final DBG:Z

.field private static final KEY_MWIPS:Ljava/lang/String; = "MobileWIPS"

.field private static final TAG:Ljava/lang/String; = "MobileWIPSPrefController"

.field private static final WIPS_GOING_OFF:I = 0x2

.field private static final WIPS_GOING_ON:I = 0x3

.field private static final WIPS_OFF:I = 0x0

.field private static final WIPS_ON:I = 0x1

.field private static final defaultMWIPS:I


# instance fields
.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mMobileWipsPref:Landroidx/preference/SwitchPreferenceCompat;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWipsObserver:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMobileWipsPref(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;)Landroidx/preference/SwitchPreferenceCompat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->mMobileWipsPref:Landroidx/preference/SwitchPreferenceCompat;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    new-instance p2, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController$1;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    new-instance p2, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController$2;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController$2;-><init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->mWipsObserver:Landroid/database/ContentObserver;

    .line 66
    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 67
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 68
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isLargeScreen()Z
    .locals 3

    .line 137
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 138
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v1, 0x140

    if-gt v0, v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    const v2, 0x3f8ccccd    # 1.1f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    const/16 v1, 0x19b

    if-ge v0, v1, :cond_2

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const v0, 0x3fa66666    # 1.3f

    cmpg-float p0, p0, v0

    if-ltz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setPreferenceBadge(Landroidx/preference/Preference;)V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_mwips"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->isNewItemForWips(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MobileWIPSPrefController"

    const-string v1, "There is new item for MobileWips. Show N badge"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->isLargeScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 157
    sget p0, Lcom/android/settings/R$layout;->sec_preference_intelligent_wifi_item_with_badge_large:I

    goto :goto_0

    .line 158
    :cond_0
    sget p0, Lcom/android/settings/R$layout;->sec_preference_intelligent_wifi_item_with_badge:I

    .line 156
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_2

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->isLargeScreen()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 161
    sget p0, Lcom/android/settings/R$layout;->sec_preference_intelligent_wifi_item_large:I

    goto :goto_1

    .line 162
    :cond_2
    sget p0, Lcom/android/settings/R$layout;->sec_preference_intelligent_wifi_item:I

    .line 160
    :goto_1
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :goto_2
    return-void
.end method

.method private setPreferenceEnabled(Landroidx/preference/Preference;)V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_mwips"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 144
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 146
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->mMobileWipsPref:Landroidx/preference/SwitchPreferenceCompat;

    .line 75
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 98
    sget-boolean v0, Lcom/android/settings/Utils;->isSupportMobileWips:Z

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "wifi_mwips"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    const/4 p0, 0x5

    return p0
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

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 133
    sget p0, Lcom/android/settings/R$string;->menu_key_connections:I

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
    .locals 3

    .line 80
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_mwips"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MobileWIPSPrefController:isChecked ->  isEnabled = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MobileWIPSPrefController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
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

.method public onPause()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->mWipsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 113
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_mwips"

    .line 119
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->mWipsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 120
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->mMobileWipsPref:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    const-string v2, "wifi_mwips"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->mMobileWipsPref:Landroidx/preference/SwitchPreferenceCompat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p1, :cond_1

    const-wide/16 p0, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 p0, 0x0

    :goto_1
    const-string v0, "WIFI_200"

    const-string v1, "1341"

    .line 91
    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->setPreferenceBadge(Landroidx/preference/Preference;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->setPreferenceEnabled(Landroidx/preference/Preference;)V

    .line 128
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
