.class public Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EnabledNetworkMode"


# instance fields
.field private mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

.field private mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

.field private mCallState:I

.field private mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mPreference:Landroidx/preference/Preference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private mTelephonyCallback:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method public static synthetic $r8$lambda$q-agZiSX_cCdoIt8vwGrOPXq2yo(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->lambda$init$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBuilder(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCallState(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCallState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePreference(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updatePreference()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCallState:I

    new-instance p2, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-static {p1}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

    invoke-direct {p1, p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;-><init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic lambda$init$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->updateConfig()V

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updatePreference()V

    return-void
.end method

.method private updatePreference()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "hide_carrier_network_settings_bool"

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "hide_preferred_network_type_bool"

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "world_phone_bool"

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->isCallStateIdle()Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p0, 0x2

    :goto_1
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTelephonyCallback()Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public init(ILandroidx/fragment/app/FragmentManager;)V
    .locals 1

    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    iput-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget p2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance p1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-direct {p1, p0, p2, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;-><init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/settings/network/AllowedNetworkTypesListener;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/network/AllowedNetworkTypesListener;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    new-instance p2, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/network/AllowedNetworkTypesListener;->setAllowedNetworkTypesListener(Lcom/android/settings/network/AllowedNetworkTypesListener$OnAllowedNetworkTypesListener;)V

    :cond_0
    return-void
.end method

.method public isCallStateIdle()Z
    .locals 0

    iget p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCallState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    check-cast p1, Landroidx/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-virtual {v0, p2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setPreferenceValueAndSummary(I)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    iget v0, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSelectedEntry:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    iget-object v0, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewLifecycleOwner"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceControllerHelperKt$setAllowedNetworkTypes$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceControllerHelperKt$setAllowedNetworkTypes$1;-><init>(Landroid/telephony/TelephonyManager;ILkotlin/coroutines/Continuation;)V

    const/4 p1, 0x2

    invoke-static {p0, v0, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    const/4 p0, 0x1

    return p0
.end method

.method public onStart()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/network/AllowedNetworkTypesListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    iput-object v1, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result p0

    iput p0, v2, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCallState:I

    iget-object p0, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-static {v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->access$000(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v0, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    iget-object v0, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

    invoke-virtual {p0, v1, v0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCallState:I

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->updateConfig()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mViewLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroidx/preference/ListPreference;

    iget-object v1, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->newBuilder()Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    move-result-object v1

    sget-object v3, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_UNKNOWN:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    iget-object v4, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    sget-object v5, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CHOICES_EXCEPT_GSM_3G:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    sget-object v6, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_4G_CHOICES_EXCEPT_GSM_3G:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    sget-object v7, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne v4, v8, :cond_2

    iget-object v8, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "lte_service_forced"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getPreferredNetworkMode()I

    move-result v10

    iget-object v11, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isLteCdmaEvdoGsmWcdmaEnabled()Z

    move-result v11

    if-eqz v11, :cond_c

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    packed-switch v10, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_ONLY_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_1

    :pswitch_2
    sget-object v3, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CDMA_NO_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    if-ne v4, v8, :cond_c

    iget-boolean v3, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mIsGlobalCdma:Z

    if-eqz v3, :cond_3

    :goto_0
    move-object v3, v7

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isTdscdmaSupported(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_TDSCDMA_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_1

    :cond_4
    iget-boolean v3, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mDisplay2gOptions:Z

    if-nez v3, :cond_6

    iget-boolean v7, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mDisplay3gOptions:Z

    if-nez v7, :cond_6

    iget-boolean v3, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz v3, :cond_5

    move-object v3, v6

    goto :goto_1

    :cond_5
    move-object v3, v5

    goto :goto_1

    :cond_6
    if-nez v3, :cond_7

    iget-boolean v7, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mLteEnabled:Z

    if-nez v7, :cond_7

    sget-object v3, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_1

    :cond_7
    if-nez v3, :cond_9

    iget-boolean v3, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_4G_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_1

    :cond_8
    sget-object v3, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_GSM_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_1

    :cond_9
    iget-boolean v3, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mLteEnabled:Z

    if-nez v3, :cond_a

    sget-object v3, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_EXCEPT_LTE_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_1

    :cond_a
    iget-boolean v3, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_4G_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    goto :goto_1

    :cond_b
    sget-object v3, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_CHOICES:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    :cond_c
    :goto_1
    iget-object v7, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mContext:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v3, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->PREFERRED_NETWORK_MODE_CHOICES_WORLD_MODE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    :cond_d
    const-string v2, "EnabledNetworkMode"

    if-nez v4, :cond_f

    const-string v3, "phoneType: PHONE_TYPE_NONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mShow4gForLTE:Z

    if-eqz v3, :cond_e

    move-object v5, v6

    :cond_e
    move-object v3, v5

    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "enabledNetworkType: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    invoke-static {v2, v3}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->-$$Nest$msetType(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;)V

    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    invoke-virtual {v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->getType()Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    sget-object v3, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add1xEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    sget-object v4, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->addGlobalEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    sget-object v5, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add5gAnd4gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    sget-object v6, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add2gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    sget-object v7, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add5gAndLteEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    sget-object v8, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->add3gEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    const v10, 0x7f0300da

    const v11, 0x7f0300dd

    packed-switch v2, :pswitch_data_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not supported enabled network types."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    invoke-virtual {v1, v11}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)V

    invoke-virtual {v1, v7}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    goto/16 :goto_2

    :pswitch_4
    const v2, 0x7f0300d8

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)V

    invoke-virtual {v1, v5}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    goto/16 :goto_2

    :pswitch_5
    const v2, 0x7f030141

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)V

    invoke-virtual {v1, v4}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->addWorldModeCdmaEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->addWorldModeGsmEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {v1, v11}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)V

    invoke-virtual {v1, v7}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    invoke-virtual {v1, v8}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    invoke-virtual {v1, v6}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {v1, v11}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)V

    invoke-virtual {v1, v5}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    invoke-virtual {v1, v8}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    invoke-virtual {v1, v6}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    goto :goto_2

    :pswitch_8
    const v2, 0x7f0300db

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)V

    invoke-virtual {v1, v8}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    invoke-virtual {v1, v6}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    goto :goto_2

    :pswitch_9
    invoke-virtual {v1, v10}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)V

    invoke-virtual {v1, v7}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    invoke-virtual {v1, v8}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    goto :goto_2

    :pswitch_a
    invoke-virtual {v1, v10}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)V

    invoke-virtual {v1, v5}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    invoke-virtual {v1, v8}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    goto :goto_2

    :pswitch_b
    const v2, 0x7f0300d9

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)V

    invoke-virtual {v1, v8}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    goto :goto_2

    :pswitch_c
    const v2, 0x7f0300dc

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)V

    invoke-virtual {v1, v7}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    invoke-virtual {v1, v8}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    invoke-virtual {v1, v6}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    goto :goto_2

    :pswitch_d
    const v2, 0x7f0300d5

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)V

    sget-object v2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->addLteEntry:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    invoke-virtual {v1, v4}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    goto :goto_2

    :pswitch_e
    const v2, 0x7f0300d4

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)V

    invoke-virtual {v1, v8}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    invoke-virtual {v1, v3}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    goto :goto_2

    :pswitch_f
    const v2, 0x7f0300d6

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->setChoices(I)V

    invoke-virtual {v1, v7}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    invoke-virtual {v1, v8}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    invoke-virtual {v1, v3}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    invoke-virtual {v1, v4}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    :goto_2
    iget-object v2, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->this$0:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    invoke-virtual {v3}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->getChoices()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    iget-object v3, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    invoke-virtual {v3}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->getFormatList()Ljava/util/List;

    move-result-object v3

    array-length v4, v2

    check-cast v3, Lcom/google/protobuf/Internal$ListAdapter;

    iget-object v5, v3, Lcom/google/protobuf/Internal$ListAdapter;->fromList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_12

    iget-object v1, v3, Lcom/google/protobuf/Internal$ListAdapter;->fromList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v9, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v4, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0, v3, v2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;Lcom/google/protobuf/Internal$ListAdapter;[I)V

    invoke-interface {v1, v4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->getPreferredNetworkMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setPreferenceValueAndSummary(I)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    iget-object v0, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntries:Ljava/util/List;

    new-array v1, v9, [Ljava/lang/String;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    iget-object v0, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mEntriesValue:Ljava/util/List;

    new-array v1, v9, [Ljava/lang/Integer;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    iget v0, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSelectedEntry:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    iget-object v0, v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->isCallStateIdle()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    instance-of v0, p1, Landroidx/preference/ListPreferenceDialogFragmentCompat;

    if-eqz v0, :cond_10

    check-cast p1, Landroidx/preference/ListPreferenceDialogFragmentCompat;

    invoke-virtual {p1, v9, v9}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    goto :goto_3

    :cond_11
    return-void

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->getType()Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " index error."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
