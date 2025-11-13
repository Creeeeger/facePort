.class public Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final CARRIER_FEATURE_SATELLITE_TAG:Ljava/lang/String; = "CarrierFeature_Common_Support_Satellite"

.field private static final KEY_SATELLITE_ATTACH_SUPPORTED_BOOL:Ljava/lang/String; = "satellite_attach_supported_bool"

.field private static final KEY_SATELLITE_ESOS_SUPPORTED_BOOL:Ljava/lang/String; = "satellite_esos_supported_bool"

.field private static final TAG:Ljava/lang/String; = "SecSatelliteNetworksPreferenceController"

.field private static final TIANTONG_INTRO_CLASSNAME:Ljava/lang/String; = "com.samsung.android.satellite.pointing.ui.activity.SatelliteIntroChnActivity"

.field private static final TIANTONG_INTRO_PACKAGE:Ljava/lang/String; = "com.samsung.android.satellite.pointing.ui"


# instance fields
.field private final EXTRA_MULTI_SIM:Ljava/lang/String;

.field private final EXTRA_NET_SETTINGS_ACTION:Ljava/lang/String;

.field private final EXTRA_ROOT_KEY:Ljava/lang/String;

.field private final EXTRA_SATELLITE_CATEGOTY:Ljava/lang/String;

.field private final EXTRA_SUBID:Ljava/lang/String;

.field private final KEY_SATELLITE_NETWORKS:Ljava/lang/String;

.field private final PACKAGE_PATH:Ljava/lang/String;

.field private mMultiSimState:Z

.field private mSatelliteManager:Landroid/telephony/satellite/SatelliteManager;

.field private mSecPreference:Landroidx/preference/SecPreference;

.field private mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

.field private mSimSlot0SupportSatellite:Z

.field private mSimSlot1SupportSatellite:Z

.field private mSubId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTmobileCarrierId:I

.field private mVerizonCarrierId:I

.field public mVerizonMVNOCarrierID:[I


# direct methods
.method public static synthetic $r8$lambda$P1BKhPV5RrYnU3B9S91RETBduGo(II)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->lambda$checkSatelliteMessaging$0(II)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo p2, "satellite_networks"

    iput-object p2, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->KEY_SATELLITE_NETWORKS:Ljava/lang/String;

    const-string p2, "com.samsung.android.app.telephonyui.action.OPEN_NET_SETTINGS"

    iput-object p2, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->EXTRA_NET_SETTINGS_ACTION:Ljava/lang/String;

    const-string p2, "SATELLITE_MESSAGING_CATEGORY"

    iput-object p2, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->EXTRA_SATELLITE_CATEGOTY:Ljava/lang/String;

    const-string/jumbo p2, "root_key"

    iput-object p2, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->EXTRA_ROOT_KEY:Ljava/lang/String;

    const-string/jumbo p2, "sub_id"

    iput-object p2, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->EXTRA_SUBID:Ljava/lang/String;

    const-string/jumbo p2, "multi_sim"

    iput-object p2, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->EXTRA_MULTI_SIM:Ljava/lang/String;

    const-string p2, "com.samsung.android.app.telephonyui"

    iput-object p2, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->PACKAGE_PATH:Ljava/lang/String;

    const/4 p2, -0x1

    iput p2, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubId:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSimSlot0SupportSatellite:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSimSlot1SupportSatellite:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mMultiSimState:Z

    const/16 p2, 0x72f

    iput p2, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mVerizonCarrierId:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mTmobileCarrierId:I

    const/16 p2, 0x8

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mVerizonMVNOCarrierID:[I

    sget-object p2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    check-cast p2, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p2, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telephony_subscription_service"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-class p2, Landroid/telephony/satellite/SatelliteManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/SatelliteManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSatelliteManager:Landroid/telephony/satellite/SatelliteManager;

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->makeSubscriptions()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 4
        0x72f
        0x7f0
        0x84e
        0x862
        0x991
        0x9e4
        0x9fc
        0x2718
    .end array-data
.end method

.method private containsValue(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getSatelliteSubscribe(II)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->isVerizonSatelliteMode(I)Z

    move-result v0

    const-string/jumbo v1, "slot : "

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isVerizonSupported : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "satellite_entitlement_status"

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v3, p0}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v3

    :goto_0
    sget-object p1, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, ", subscribed : "

    invoke-static {v1, v0, p2, p0, p1}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    if-ne p0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method private isVerizonSatelliteMode(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->isSupportedESOS(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->isSupportedP2PEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$checkSatelliteMessaging$0(II)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeSubscriptions()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController$1;

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController$1;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method private supportSummary(II)Z
    .locals 6

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->isVerizonSatelliteMode(I)Z

    move-result v0

    iget p0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mTmobileCarrierId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    sget-object v3, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "subId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isVerizonSupported : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", CarrierId : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, p2, v3}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-nez v0, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method


# virtual methods
.method public checkSatelliteMessaging(III)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sim slot : "

    const-string v2, ", Carrier Id : "

    invoke-static {v1, v2, p1, p3, v0}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->isSupportSatellite(II)Z

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->isSupportedTiantong()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p0, "isTiantong."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mVerizonMVNOCarrierID:[I

    invoke-static {v1}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p3}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p3

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->isVerizonSatelliteMode(I)Z

    move-result p0

    const-string p1, "isVerizonSupported : "

    invoke-static {p1, v0, p0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "checkSatelliteMessagingSim : remove menu by CarrierFeature"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    return v2
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSecPreference:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->makeSubscriptions()V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubId:I

    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    sget-object v3, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "slotIndex : "

    invoke-static {v0, v4, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->checkSatelliteMessaging(III)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubId:I

    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v5

    invoke-virtual {p0, v0, v4, v5}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->checkSatelliteMessaging(III)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSimSlot0SupportSatellite:Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v5

    invoke-virtual {p0, v0, v4, v5}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->checkSatelliteMessaging(III)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubId:I

    iput-boolean v3, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSimSlot1SupportSatellite:Z

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSimSlot0SupportSatellite:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSimSlot1SupportSatellite:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubId:I

    iput-boolean v3, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mMultiSimState:Z

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSimSlot0SupportSatellite:Z

    if-nez v0, :cond_5

    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSimSlot1SupportSatellite:Z

    if-eqz p0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1

    :cond_7
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "there isn\'t subscriptions"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->isSupportedTiantong()Z

    move-result p0

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMultiSimState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mMultiSimState:Z

    return p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->isSupportedTiantong()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mMultiSimState:Z

    const v2, 0x7f1426a2

    const v3, 0x7f1426a1

    const-string v4, ": "

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iget-object v7, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v7

    invoke-direct {p0, v0, v7}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->supportSummary(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget-object v7, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    check-cast v0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getSimSlotName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-direct {p0, v7, v6}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->getSatelliteSubscribe(II)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v0, v4}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0, v4}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->supportSummary(II)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget-object v7, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    check-cast v6, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getSimSlotName(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-direct {p0, v7, v5}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->getSatelliteSubscribe(II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v6, v4}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {v6, v4}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    move-object p0, v1

    :goto_1
    sget-object v2, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "slot0 Name : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", slot1 Name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    const-string v1, "\n"

    invoke-static {v0, v1, p0}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-eqz v0, :cond_6

    return-object v0

    :cond_6
    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    return-object v1

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_a

    sget-object v0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->TAG:Ljava/lang/String;

    const-string v4, "mSubscriptions.size() == 1"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->supportSummary(II)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->getSatelliteSubscribe(II)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "sec_satellite_networks_include"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string/jumbo v1, "sec_satellite_networks_not_include"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    sget-object v0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->TAG:Ljava/lang/String;

    const-string v7, "mSubscriptions.size() > 1"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSimSlot0SupportSatellite:Z

    if-eqz v7, :cond_c

    iget-object v5, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    iget-object v7, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v7

    invoke-direct {p0, v5, v7}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->supportSummary(II)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget-object v5, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    check-cast v1, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getSimSlotName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    iget-object v7, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->getSatelliteSubscribe(II)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {v1, v4}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_b
    invoke-static {v1, v4}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    const-string/jumbo v1, "sim0Name : "

    invoke-static {v1, p0, v0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_c
    iget-boolean v6, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSimSlot1SupportSatellite:Z

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->supportSummary(II)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSecSimFeatureProvider:Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    iget-object v6, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    check-cast v1, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getSimSlotName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubscriptions:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->getSatelliteSubscribe(II)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v1, v4}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_d
    invoke-static {v1, v4}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    const-string/jumbo v1, "sim1Name : "

    invoke-static {v1, p0, v0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_e
    return-object v1
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "satellite_networks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->isSupportedTiantong()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.satellite.pointing.ui"

    const-string v2, "com.samsung.android.satellite.pointing.ui.activity.SatelliteIntroChnActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.telephonyui.action.OPEN_NET_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "root_key"

    const-string v2, "SATELLITE_MESSAGING_CATEGORY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "sub_id"

    iget v2, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "multi_sim"

    iget-boolean v2, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mMultiSimState:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.samsung.android.app.telephonyui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

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

.method public isSupportSatellite(II)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, "CarrierFeature_Common_Support_Satellite"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result p1

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->isSupportedSatelliteDevice(I)Z

    move-result p0

    sget-object p2, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "carrierFeature : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", boolFeature : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isSupportedESOS(I)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "CCT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CHA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "TFV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "FKR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "LRA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const-string v0, "Rune"

    const-string v1, "isVzwSatelliteModel() return true"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "carrier_config"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    const-string/jumbo p1, "satellite_esos_supported_bool"

    if-eqz p0, :cond_2

    sget-object v0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isSupportedESOS : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public isSupportedP2PEnabled(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    const-string v0, "carrier_supported_satellite_services_per_provider_bundle"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->parseSupportedSatelliteServices(Landroid/os/PersistableBundle;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->containsValue(Ljava/util/Map;)Z

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "carrierSupportSatellite : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->mSatelliteManager:Landroid/telephony/satellite/SatelliteManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/satellite/SatelliteManager;->getNtnSmsSupported()Z

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    sget-object p1, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "carrierSupportedSms : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , getNtnSmsSupported : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public isSupportedSatelliteDevice(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "carrier_config"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo p1, "satellite_attach_supported_bool"

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportedTiantong()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaOpen()Z

    move-result p0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SM-S938"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/connection/SecSatelliteNetworksPreferenceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSupportedTiantong, isChinaOpen "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " / isPA3Model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
