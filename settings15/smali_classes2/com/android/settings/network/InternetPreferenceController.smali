.class public final Lcom/android/settings/network/InternetPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;
.implements Lcom/android/settings/network/InternetUpdater$InternetChangeListener;
.implements Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;
.implements Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;


# static fields
.field static sIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final sSummaryMap:Ljava/util/Map;


# instance fields
.field public final mDataSubscriptionChangedReceiver:Lcom/android/settings/network/DefaultSubscriptionReceiver;

.field public mDefaultDataSubId:I

.field public mInternetType:I

.field public final mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public final mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

.field public mPreference:Landroidx/preference/Preference;

.field public mSubInfoEntityList:Ljava/util/List;

.field mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

.field mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/network/InternetPreferenceController;->sIconMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f080543

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/network/InternetPreferenceController;->sIconMap:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f080542

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/network/InternetPreferenceController;->sIconMap:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0806a6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/network/InternetPreferenceController;->sIconMap:Ljava/util/Map;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f08053f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/settings/network/InternetPreferenceController;->sIconMap:Ljava/util/Map;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0805e9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/network/InternetPreferenceController;->sSummaryMap:Ljava/util/Map;

    const v6, 0x7f1409da

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v6, 0x7f141972

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f142f38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mSubInfoEntityList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mDefaultDataSubId:I

    invoke-static {}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->isDeviceConfigEnabled()Z

    move-result v0

    if-eqz p2, :cond_1

    new-instance v1, Lcom/android/settings/wifi/WifiSummaryUpdater;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/android/settings/wifi/WifiSummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;Lcom/android/settingslib/wifi/WifiStatusTracker;)V

    iput-object v1, p0, Lcom/android/settings/network/InternetPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    new-instance v1, Lcom/android/settings/network/InternetUpdater;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/settings/network/InternetUpdater;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/InternetUpdater$InternetChangeListener;)V

    iget v1, v1, Lcom/android/settings/network/InternetUpdater;->mInternetType:I

    iput v1, p0, Lcom/android/settings/network/InternetPreferenceController;->mInternetType:I

    iput-object p3, p0, Lcom/android/settings/network/InternetPreferenceController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Lcom/android/settings/network/MobileNetworkRepository;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/MobileNetworkRepository;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/network/InternetPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    new-instance p3, Lcom/android/settings/network/DefaultSubscriptionReceiver;

    invoke-direct {p3, p1, p0}, Lcom/android/settings/network/DefaultSubscriptionReceiver;-><init>(Landroid/content/Context;Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;)V

    iput-object p3, p0, Lcom/android/settings/network/InternetPreferenceController;->mDataSubscriptionChangedReceiver:Lcom/android/settings/network/DefaultSubscriptionReceiver;

    if-eqz v0, :cond_0

    new-instance p3, Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    invoke-direct {p3, p2, p1, p0}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    iput-object p3, p0, Lcom/android/settings/network/InternetPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    :cond_0
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Lifecycle must be set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "internet_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getDefaultDataSubscriptionId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/network/InternetPreferenceController;->mDefaultDataSubId:I

    return p0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "internet_settings"

    return-object p0
.end method

.method public getSubscriptionInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/network/InternetPreferenceController;->mSubInfoEntityList:Ljava/util/List;

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050039

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final onAirplaneModeChanged(Z)V
    .locals 1

    new-instance p1, Lcom/android/settings/network/InternetPreferenceController$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/settings/network/InternetPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/InternetPreferenceController;I)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAvailableSubInfoChanged(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/InternetPreferenceController;->mSubInfoEntityList:Ljava/util/List;

    iget-object p1, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/InternetPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final onDefaultDataChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/InternetPreferenceController;->mDefaultDataSubId:I

    iget-object p1, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/InternetPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final onInternetTypeChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mInternetType:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/android/settings/network/InternetPreferenceController;->mInternetType:I

    if-eqz v0, :cond_1

    new-instance p1, Lcom/android/settings/network/InternetPreferenceController$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/network/InternetPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/InternetPreferenceController;I)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final onNumSavedNetworksChanged()V
    .locals 0

    return-void
.end method

.method public final onNumSavedSubscriptionsChanged()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/MobileNetworkRepository;->removeRegister(Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;)V

    iget-object v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSummaryUpdater;->register(Z)V

    iget-object p0, p0, Lcom/android/settings/network/InternetPreferenceController;->mDataSubscriptionChangedReceiver:Lcom/android/settings/network/DefaultSubscriptionReceiver;

    iget-object v0, p0, Lcom/android/settings/network/DefaultSubscriptionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settings/network/InternetPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {v2, v0, p0, v1}, Lcom/android/settings/network/MobileNetworkRepository;->addRegister(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;I)V

    invoke-virtual {v2}, Lcom/android/settings/network/MobileNetworkRepository;->updateEntity()V

    iget-object v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSummaryUpdater;->register(Z)V

    iget-object v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mDataSubscriptionChangedReceiver:Lcom/android/settings/network/DefaultSubscriptionReceiver;

    invoke-virtual {v0}, Lcom/android/settings/network/DefaultSubscriptionReceiver;->registerReceiver()V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mDefaultDataSubId:I

    return-void
.end method

.method public final onWifiEntriesChanged()V
    .locals 2

    iget v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mInternetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/InternetPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public final onWifiStateChanged()V
    .locals 0

    return-void
.end method

.method public updateCellularSummary()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/network/InternetPreferenceController;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iget-boolean v4, v3, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isActiveDataSubscriptionId:Z

    if-eqz v4, :cond_1

    move-object v1, v3

    :cond_1
    invoke-virtual {v3}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->getSubId()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/network/InternetPreferenceController;->getDefaultDataSubscriptionId()I

    move-result v5

    if-ne v4, v5, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_6

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    iget-boolean v0, v1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isSubscriptionVisible:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, v1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f141805

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object p0, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public updateHotspotNetwork()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/InternetPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiPickerTracker;->mConnectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    instance-of v2, v0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    if-nez v2, :cond_1

    return v1

    :cond_1
    check-cast v0, Lcom/android/wifitrackerlib/HotspotNetworkEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/WifiUtils;->getHotspotIconResource(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x1010429

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/HotspotNetworkEntry;->getAlternateSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 3

    iget-object p1, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/android/settings/network/InternetPreferenceController;->mInternetType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/network/InternetPreferenceController;->updateHotspotNetwork()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/android/settings/network/InternetPreferenceController;->sIconMap:Ljava/util/Map;

    iget v1, p0, Lcom/android/settings/network/InternetPreferenceController;->mInternetType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x1010429

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget p1, p0, Lcom/android/settings/network/InternetPreferenceController;->mInternetType:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/network/InternetPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSummaryUpdater;->getSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/network/InternetPreferenceController;->updateCellularSummary()V

    return-void

    :cond_4
    sget-object v0, Lcom/android/settings/network/InternetPreferenceController;->sSummaryMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/settings/network/InternetPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_5
    return-void
.end method
