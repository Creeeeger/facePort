.class public Lcom/android/settings/network/telephony/NetworkSelectSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final EVENT_SET_NETWORK_SELECTION_MANUALLY_DONE:I = 0x1

.field private static final PREF_KEY_NETWORK_OPERATORS:Ljava/lang/String; = "network_operators_preference"

.field private static final TAG:Ljava/lang/String; = "NetworkSelectSettings"


# instance fields
.field private mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field mCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForbiddenPlmns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

.field private mNetworkScanJob:Lkotlinx/coroutines/Job;

.field private mNetworkScanRepository:Lcom/android/settings/network/telephony/scan/NetworkScanRepository;

.field private mNetworkSelectRepository:Lcom/android/settings/network/telephony/NetworkSelectRepository;

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mProgressHeader:Landroid/view/View;

.field private mSatelliteManager:Landroid/telephony/satellite/SatelliteManager;

.field mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

.field private mShouldFilterOutSatellitePlmn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mShow4GForLTE:Z

.field private mStatusMessagePreference:Landroidx/preference/Preference;

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$0aBWKhkuEkt0yMeFm8zJT4rO1l4(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/settings/network/telephony/NetworkSelectRepository$NetworkRegistrationAndForbiddenInfo;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->lambda$onViewCreated$1(Lcom/android/settings/network/telephony/NetworkSelectRepository$NetworkRegistrationAndForbiddenInfo;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E99ImGfWLxhQDz0nycdBWT6qFO8(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/internal/telephony/OperatorInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->lambda$onPreferenceTreeClick$3(Lcom/android/internal/telephony/OperatorInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kyaVaWuiwBOlbfFCWoAK9lhJjsc(Ljava/util/List;Landroid/telephony/CellInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->lambda$filterOutSatellitePlmn$4(Ljava/util/List;Landroid/telephony/CellInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tfPv9WbAoegsRTeFhYeXmlxopi4(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanResult;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->lambda$launchNetworkScan$2(Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ul6psB6U3Ki-BRBTlyFVO1k-Vyc(Lcom/android/settings/network/telephony/NetworkSelectSettings;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->lambda$onCreateInitialization$0(IIII)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShouldFilterOutSatellitePlmn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanJob:Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mStatusMessagePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mStatusMessagePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method private clearPreferenceSummary()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private forceUpdateConnectedPreferenceCategory(Lcom/android/settings/network/telephony/NetworkSelectRepository$NetworkRegistrationAndForbiddenInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p1, Lcom/android/settings/network/telephony/NetworkSelectRepository$NetworkRegistrationAndForbiddenInfo;->networkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/NetworkRegistrationInfo;

    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Lcom/android/settings/network/telephony/NetworkSelectRepository$NetworkRegistrationAndForbiddenInfo;->forbiddenPlmns:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateCell(Landroid/telephony/CellInfo;Landroid/telephony/CellIdentity;)V

    iget-object v1, v2, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->forbiddenPlmns:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    iget-object v4, v2, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->cellId:Landroid/telephony/CellIdentity;

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/android/settings/network/telephony/CellInfoUtil;->getOperatorNumeric(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const p1, 0x7f141949

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 p1, 0x4

    invoke-virtual {v2, p1}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->setIcon(I)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_3
    return-void
.end method

.method private handleCarrierConfigChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    const-string v1, "remove_satellite_plmn_in_manual_network_scan_bool"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShouldFilterOutSatellitePlmn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShouldFilterOutSatellitePlmn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$filterOutSatellitePlmn$4(Ljava/util/List;Landroid/telephony/CellInfo;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/network/telephony/CellInfoUtil;->getOperatorNumeric(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$launchNetworkScan$2(Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanResult;)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->isPreferenceScreenEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->scanResultHandler(Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanResult;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$onCreateInitialization$0(IIII)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->handleCarrierConfigChanged(I)V

    return-void
.end method

.method private synthetic lambda$onPreferenceTreeClick$3(Lcom/android/internal/telephony/OperatorInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1, v1}, Landroid/telephony/TelephonyManager;->setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Lcom/android/settings/network/telephony/NetworkSelectRepository$NetworkRegistrationAndForbiddenInfo;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->forceUpdateConnectedPreferenceCategory(Lcom/android/settings/network/telephony/NetworkSelectRepository$NetworkRegistrationAndForbiddenInfo;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private launchNetworkScan()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanRepository:Lcom/android/settings/network/telephony/scan/NetworkScanRepository;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/scan/NetworkScanRepository;->launchNetworkScan(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda0;)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private updateAllPreferenceCategory()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    const/4 v3, 0x0

    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    instance-of v5, v4, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    goto :goto_2

    :cond_1
    move-object v5, v3

    :goto_2
    invoke-virtual {v4, v2, v5}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateCell(Landroid/telephony/CellInfo;Landroid/telephony/CellIdentity;)V

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    move-object v4, v3

    :goto_3
    if-nez v4, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->createNetworkOperatorPreference(Landroid/telephony/CellInfo;)Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_4
    iget-object v2, v4, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->cellId:Landroid/telephony/CellIdentity;

    if-eqz v2, :cond_5

    invoke-static {v2}, Lcom/android/settings/network/telephony/CellInfoUtil;->getNetworkTitle(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v2, v3

    :goto_4
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    invoke-virtual {v2}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f141949

    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_5

    :cond_6
    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method


# virtual methods
.method public createNetworkOperatorPreference(Landroid/telephony/CellInfo;)Lcom/android/settings/network/telephony/NetworkOperatorPreference;
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mForbiddenPlmns:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->updateForbiddenPlmns()V

    :cond_0
    new-instance v0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mForbiddenPlmns:Ljava/util/List;

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p1, p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateCell(Landroid/telephony/CellInfo;Landroid/telephony/CellIdentity;)V

    return-object v0
.end method

.method public enablePreferenceScreen(Z)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public filterOutSatellitePlmn(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getSatellitePlmnsForCarrierWrapper()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShouldFilterOutSatellitePlmn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda3;

    invoke-direct {p1, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public bridge synthetic getAppContext()Lcom/samsung/android/settings/bixby/AppContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCarrierConfigManager(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-class p0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    return-object p0
.end method

.method public bridge synthetic getHelpResource()I
    .locals 0

    const p0, 0x7f14114a

    return p0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NetworkSelectSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x62d

    return p0
.end method

.method public getMetricsFeatureProvider(Landroid/content/Context;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPreferenceCategory(Ljava/lang/String;)Landroidx/preference/PreferenceCategory;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method public getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170076

    return p0
.end method

.method public getSatelliteManager(Landroid/content/Context;)Landroid/telephony/satellite/SatelliteManager;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-class p0, Landroid/telephony/satellite/SatelliteManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/satellite/SatelliteManager;

    return-object p0
.end method

.method public getSatellitePlmnsForCarrierWrapper()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSatelliteManager:Landroid/telephony/satellite/SatelliteManager;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    invoke-virtual {v0, p0}, Landroid/telephony/satellite/SatelliteManager;->getSatellitePlmnsForCarrier(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "NetworkSelectSettings"

    const-string v0, "mSatelliteManager is null, return empty list"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getSubId()I
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    const-string v1, "android.provider.extra.SUB_ID"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-class p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method public isPreferenceScreenEnabled()Z
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->onCreateInitialization()V

    return-void
.end method

.method public onCreateInitialization()V
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Lcom/android/internal/annotations/Initializer;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getSubId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    const-string v1, "network_operators_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getPreferenceCategory(Ljava/lang/String;)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    new-instance v1, Landroidx/preference/Preference;

    invoke-direct {v1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mStatusMessagePreference:Landroidx/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    iget v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getSatelliteManager(Landroid/content/Context;)Landroid/telephony/satellite/SatelliteManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSatelliteManager:Landroid/telephony/satellite/SatelliteManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getCarrierConfigManager(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget v3, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    const-string v4, "show_4g_for_lte_data_icon_bool"

    const-string v5, "remove_satellite_plmn_in_manual_network_scan_bool"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShouldFilterOutSatellitePlmn:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v5, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getMetricsFeatureProvider(Landroid/content/Context;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    new-instance v1, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCarrierConfigChangeListener:Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v2, v3, v1}, Landroid/telephony/CarrierConfigManager;->registerCarrierConfigChangeListener(Ljava/util/concurrent/Executor;Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;)V

    new-instance v1, Lcom/android/settings/network/telephony/scan/NetworkScanRepository;

    iget v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    invoke-direct {v1, v0, v2}, Lcom/android/settings/network/telephony/scan/NetworkScanRepository;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanRepository:Lcom/android/settings/network/telephony/scan/NetworkScanRepository;

    new-instance v1, Lcom/android/settings/network/telephony/NetworkSelectRepository;

    iget v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    invoke-direct {v1, v0, v2}, Lcom/android/settings/network/telephony/NetworkSelectRepository;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkSelectRepository:Lcom/android/settings/network/telephony/NetworkSelectRepository;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    const-string v1, "NetworkSelectSettings"

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const-string p0, "onPreferenceTreeClick: preference is mSelectedPreference. Do nothing."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    instance-of v0, p1, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string p0, "onPreferenceTreeClick: preference is not the NetworkOperatorPreference."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanJob:Lkotlinx/coroutines/Job;

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->clearPreferenceSummary()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    if-eqz v0, :cond_3

    const v4, 0x7f141959

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_3
    check-cast p1, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    const v0, 0x7f14194a

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v4, 0x4ba

    new-array v5, v3, [Landroid/util/Pair;

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    invoke-virtual {p0, v3}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->enablePreferenceScreen(Z)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    iget-object v4, p1, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->cellId:Landroid/telephony/CellIdentity;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/telephony/CellIdentity;->getOperatorAlphaLong()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_4
    move-object v4, v1

    :goto_0
    const-string v5, ""

    invoke-static {v4, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p1, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->cellId:Landroid/telephony/CellIdentity;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/telephony/CellIdentity;->getOperatorAlphaShort()Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_1

    :cond_5
    move-object v6, v1

    :goto_1
    invoke-static {v6, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->cellId:Landroid/telephony/CellIdentity;

    if-eqz v6, :cond_6

    invoke-static {v6}, Lcom/android/settings/network/telephony/CellInfoUtil;->getOperatorNumeric(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    iget-object p1, p1, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->cellInfo:Landroid/telephony/CellInfo;

    instance-of v6, p1, Landroid/telephony/CellInfoGsm;

    if-eqz v6, :cond_7

    move v3, v2

    goto :goto_3

    :cond_7
    instance-of v6, p1, Landroid/telephony/CellInfoCdma;

    if-eqz v6, :cond_8

    const/4 v3, 0x4

    goto :goto_3

    :cond_8
    instance-of v6, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz v6, :cond_9

    move v6, v2

    goto :goto_2

    :cond_9
    instance-of v6, p1, Landroid/telephony/CellInfoTdscdma;

    :goto_2
    if-eqz v6, :cond_a

    const/4 v3, 0x2

    goto :goto_3

    :cond_a
    instance-of v6, p1, Landroid/telephony/CellInfoLte;

    if-eqz v6, :cond_b

    const/4 v3, 0x3

    goto :goto_3

    :cond_b
    instance-of p1, p1, Landroid/telephony/CellInfoNr;

    if-eqz p1, :cond_c

    const/4 v3, 0x6

    :cond_c
    :goto_3
    invoke-direct {v0, v4, v5, v1, v3}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p1, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/internal/telephony/OperatorInfo;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0d0562

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0bd2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mProgressHeader:Landroid/view/View;

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkSelectRepository:Lcom/android/settings/network/telephony/NetworkSelectRepository;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "lifecycleOwner"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v1

    new-instance v2, Lcom/android/settings/network/telephony/NetworkSelectRepository$launchUpdateNetworkRegistrationInfo$1;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v0, p1, v3}, Lcom/android/settings/network/telephony/NetworkSelectRepository$launchUpdateNetworkRegistrationInfo$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lcom/android/settings/network/telephony/NetworkSelectRepository;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v1, v3, v3, v2, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->launchNetworkScan()V

    return-void
.end method

.method public scanResultHandler(Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanResult;)V
    .locals 8

    iget-object v0, p1, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanResult;->cellInfos:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->filterOutSatellitePlmn(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    const-string v1, "cellInfos"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    const-string v0, "lineSeparator(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/android/settings/network/telephony/CellInfoUtil$cellInfoListToString$1;->INSTANCE:Lcom/android/settings/network/telephony/CellInfoUtil$cellInfoListToString$1;

    const/4 v5, 0x0

    const/16 v7, 0x1e

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CellInfoList: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkSelectSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->updateAllPreferenceCategory()V

    sget-object v0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanState;->ERROR:Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanState;

    iget-object p1, p1, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanResult;->state:Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanState;

    if-ne p1, v0, :cond_0

    const v0, 0x7f141961

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->addMessagePreference(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f140dc9

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->addMessagePreference(I)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanState;->ACTIVE:Lcom/android/settings/network/telephony/scan/NetworkScanRepository$NetworkScanState;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    return-void
.end method

.method public setProgressBarVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mProgressHeader:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateForbiddenPlmns()V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getForbiddenPlmns()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mForbiddenPlmns:Ljava/util/List;

    return-void
.end method
