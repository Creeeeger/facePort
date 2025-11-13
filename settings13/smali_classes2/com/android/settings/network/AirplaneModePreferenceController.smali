.class public Lcom/android/settings/network/AirplaneModePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AirplaneModePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field public static final REQUEST_CODE_EXIT_ECM:I = 0x1

.field public static final SLICE_URI:Landroid/net/Uri;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mServiceState:[I

.field private mSimCount:I

.field private mSupportCellularVoice:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAirplaneModePreference(Lcom/android/settings/network/AirplaneModePreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceState(Lcom/android/settings/network/AirplaneModePreferenceController;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mServiceState:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportCellularVoice(Lcom/android/settings/network/AirplaneModePreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mSupportCellularVoice:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmSupportCellularVoice(Lcom/android/settings/network/AirplaneModePreferenceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mSupportCellularVoice:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/network/AirplaneModePreferenceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 79
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android.settings.slices"

    .line 80
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "action"

    .line 81
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "airplane_mode"

    .line 82
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/AirplaneModePreferenceController;->SLICE_URI:Landroid/net/Uri;

    const-string v0, "AirplaneModePreferenceController"

    .line 94
    sput-object v0, Lcom/android/settings/network/AirplaneModePreferenceController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mSupportCellularVoice:Z

    .line 100
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/network/AirplaneModePreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    new-instance p1, Lcom/android/settings/AirplaneModeEnabler;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;)V

    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    :cond_0
    return-void
.end method

.method private getPhoneId(I)I
    .locals 0

    .line 269
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    .line 270
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1

    .line 242
    new-instance v0, Lcom/android/settings/network/AirplaneModePreferenceController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/AirplaneModePreferenceController$1;-><init>(Lcom/android/settings/network/AirplaneModePreferenceController;I)V

    return-object v0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_show_toggle_airplane:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerPhoneStateListener()V
    .locals 11

    .line 201
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 202
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v1

    .line 203
    invoke-interface {v1}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isMultiSimModel()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 204
    :goto_0
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/overlay/FeatureFactory;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getEnabledSimCnt()I

    move-result v4

    iput v4, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mSimCount:I

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 207
    iput-object v5, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mServiceState:[I

    return-void

    .line 210
    :cond_1
    sget-object v4, Lcom/android/settings/network/AirplaneModePreferenceController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " registerPhoneStateListener: ActiveSimCnt "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mSimCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v2, [Landroid/telephony/PhoneStateListener;

    .line 211
    iput-object v2, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 212
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mServiceState:[I

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_4

    .line 214
    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    if-eqz v6, :cond_3

    .line 216
    aget v6, v6, v2

    .line 217
    invoke-direct {p0, v6}, Lcom/android/settings/network/AirplaneModePreferenceController;->getPhoneId(I)I

    move-result v7

    if-ltz v6, :cond_2

    if-ne v4, v7, :cond_2

    .line 219
    sget-object v8, Lcom/android/settings/network/AirplaneModePreferenceController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "registerPhoneStateListener subId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " phoneId "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v6, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v7}, Lcom/android/settings/network/AirplaneModePreferenceController;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v8

    aput-object v8, v6, v7

    .line 221
    iget-object v6, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v6, v6, v7

    invoke-virtual {v0, v6, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_2

    .line 223
    :cond_2
    iget-object v6, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v5, v6, v7

    .line 225
    :goto_2
    iget-object v6, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mServiceState:[I

    aput v2, v6, v7

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 6

    .line 231
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 232
    iget v1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mSimCount:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 234
    iget-object v3, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 235
    sget-object v3, Lcom/android/settings/network/AirplaneModePreferenceController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterPhoneStateListener  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v3, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 137
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
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

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 1

    .line 341
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings;

    .line 342
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x179

    .line 343
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->airplane_mode:I

    .line 344
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const v0, 0x10008000

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 159
    sget p0, Lcom/android/settings/R$string;->menu_key_network:I

    return p0
.end method

.method public getSliceUri()Landroid/net/Uri;
    .locals 0

    .line 132
    sget-object p0, Lcom/android/settings/network/AirplaneModePreferenceController;->SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 116
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "airplane_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 117
    invoke-virtual {p1}, Lcom/android/settings/AirplaneModeEnabler;->isInEcmMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 119
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    .line 120
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
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

    .line 302
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn()Z

    move-result p0

    return p0
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPublicSlice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 295
    :goto_0
    iget-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    .line 296
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    .line 295
    invoke-virtual {p1, p3, p0}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    :cond_1
    return-void
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz p0, :cond_0

    .line 329
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/network/GlobalSettingsChangeListener;->close()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 197
    invoke-direct {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->unregisterPhoneStateListener()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 171
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_0
    const-string v0, "false"

    .line 176
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v4, "isAirplaneModeAllowed"

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 182
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    .line 183
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "no_airplane_mode"

    .line 189
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 192
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->registerPhoneStateListener()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeEnabler;->start()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeEnabler;->stop()V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method setAirplaneModeEnabler(Lcom/android/settings/AirplaneModeEnabler;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isOnCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_1

    .line 313
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->airplane_mode_toast_impossible_during_call:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->hasSim(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    .line 322
    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0, p1}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneMode(Z)V

    return v2
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
