.class public Lcom/android/settings/datausage/DataUsageSummary;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field public mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

.field public mDataSaverPreferenceController:Lcom/samsung/android/settings/datausage/SecDataSaverSummaryPreferenceController;

.field public mDataSaverPreferencePco:Lcom/android/settings/datausage/DataSaverPreference;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mIsSecureFolderMode:Z

.field public final mPcoSettingObserver:Lcom/android/settings/datausage/DataUsageSummary$5;

.field public mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

.field public mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field public final mSimHotSwapReceiver:Lcom/android/settings/datausage/DataUsageSummary$1;

.field public mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

.field public mSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

.field public mUDSPreference:Landroidx/preference/SecPreference;

.field public final mUDSStateObserver:Lcom/android/settings/datausage/DataUsageSummary$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummary;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$4;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSecureFolderMode:Z

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageSummary$1;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSimHotSwapReceiver:Lcom/android/settings/datausage/DataUsageSummary$1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/datausage/DataUsageSummary$5;-><init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoSettingObserver:Lcom/android/settings/datausage/DataUsageSummary$5;

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/datausage/DataUsageSummary$5;-><init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSStateObserver:Lcom/android/settings/datausage/DataUsageSummary$5;

    return-void
.end method

.method public static formatUsage(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, p2, p3, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p2

    new-instance p3, Landroid/text/SpannableString;

    iget-object v0, p2, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-direct {p3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const/high16 v1, 0x3fc80000    # 1.5625f

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x12

    invoke-virtual {p3, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/SpannableString;

    const v1, 0x104055e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "%1$s"

    const-string v4, "^1"

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "%2$s"

    const-string v4, "^2"

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/CharSequence;

    aput-object p3, p0, v2

    iget-object p2, p2, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 p3, 0x1

    aput-object p2, p0, p3

    invoke-static {v0, p0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    const v0, 0x3f23d70a    # 0.64f

    invoke-direct {p1, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {p2, p1, v2, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-array p1, p3, [Ljava/lang/CharSequence;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p3

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    invoke-static {p2, p1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addMobileSection(I)V
    .locals 4

    const v0, 0x7f170084

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settings/datausage/lib/DataUsageLib;->getMobileTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mTemplate:Landroid/net/NetworkTemplate;

    iput p1, v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mSubId:I

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/datausage/TemplatePreference;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/TemplatePreference;

    iget-object v2, v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mTemplate:Landroid/net/NetworkTemplate;

    iget v3, v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mSubId:I

    invoke-interface {v1, v2, v3}, Lcom/android/settings/datausage/TemplatePreference;->setTemplate(Landroid/net/NetworkTemplate;I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    return-void
.end method

.method public addWifiSection()V
    .locals 2

    const v0, 0x7f170087

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mTemplate:Landroid/net/NetworkTemplate;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mSubId:I

    return-void
.end method

.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public enableProxySubscriptionManager(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/network/ProxySubscriptionManager;->setLifecycle(Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DataUsageSummary"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x25

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170171

    return p0
.end method

.method public hasActiveSubscription()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager;->mSubscriptionMonitor:Lcom/android/settings/network/ActiveSubscriptionsListener;

    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->getActiveSubscriptionsInfo()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final inflatePreferences(I)Landroidx/preference/Preference;
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-object v0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/datausage/SecDataSaverSummaryPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/datausage/SecDataSaverSummaryPreferenceController;

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreferenceController:Lcom/samsung/android/settings/datausage/SecDataSaverSummaryPreferenceController;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "DataUsageSummary"

    const-string v0, "onCreate start"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->hasActiveSim(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v2

    const-string v3, "Default Sub Id : "

    invoke-static {v2, v3, p1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v0, v4

    :cond_0
    const-string v3, "status_header"

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/DataUsageSummaryPreference;

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSecureFolderMode:Z

    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportPco()Z

    move-result v5

    const-string v6, "restrict_background"

    if-eqz v5, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/DataSaverPreference;

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreferencePco:Lcom/android/settings/datausage/DataSaverPreference;

    :cond_1
    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreferenceController:Lcom/samsung/android/settings/datausage/SecDataSaverSummaryPreferenceController;

    invoke-virtual {v5}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v6}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/DataSaverPreference;

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    :cond_2
    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    if-eqz v5, :cond_3

    iget-boolean v6, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSecureFolderMode:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-boolean v5, Lcom/samsung/android/settings/Rune;->SUPPORT_SMARTMANAGER_CN:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    const v6, 0x7f140b7d

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    const-class v6, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataSaverSummaryCHN;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_3
    const-string v5, "mobile_category"

    invoke-virtual {p0, v5}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Landroidx/preference/SecPreferenceCategory;

    const-string v6, "sim1_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/SecPreferenceCategory;

    const-string v7, "sim2_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Landroidx/preference/SecPreferenceCategory;

    const-string v8, "roaming_category"

    invoke-virtual {p0, v8}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    check-cast v8, Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {v7, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {v8, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "hasMobileData : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", hasSimCard : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageUtils;->isDataRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v8, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/android/settings/datausage/DataUsageSummary$2;

    invoke-direct {v1}, Lcom/android/settings/datausage/DataUsageSummary$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isEnabledHidingByOpportunisticEsim(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Opportunistic Esim Active"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v6, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {v7, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_7
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v6, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_8
    invoke-virtual {v7, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    move v2, v9

    goto :goto_4

    :cond_9
    move v1, v4

    move v2, v1

    :goto_1
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v8

    invoke-static {v8}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v10

    if-nez v10, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v5, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v9, :cond_c

    if-nez v8, :cond_b

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v6, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/android/settings/datausage/DataUsageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v2, "Add Sim Slot 0 Mobile Section"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    if-ne v8, v9, :cond_c

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v7, v9}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/android/settings/datausage/DataUsageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v2, "Add Sim Slot 1 Mobile Section"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_2
    move v2, v9

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_d
    move v2, v4

    :cond_e
    :goto_4
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_f
    if-eqz v2, :cond_11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "com.samsung.android.uds.SHOW_UDS_ACTIVITY"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x7f170177

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroidx/preference/Preference;

    const-string v0, "ultra_data_saver"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSPreference:Landroidx/preference/SecPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "udsState"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSPreference:Landroidx/preference/SecPreference;

    if-eqz v1, :cond_11

    invoke-static {v1, v9}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSPreference:Landroidx/preference/SecPreference;

    if-ne v0, v9, :cond_10

    const v0, 0x7f142e1f

    :goto_5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_10
    const v0, 0x7f142e1e

    goto :goto_5

    :goto_6
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSPreference:Landroidx/preference/SecPreference;

    new-instance v1, Lcom/android/settings/datausage/DataUsageSummary$7;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/DataUsageSummary$7;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_11
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_12
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    :cond_13
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSimHotSwapReceiver:Lcom/android/settings/datausage/DataUsageSummary$1;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string p0, "onCreate - end"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSimHotSwapReceiver:Lcom/android/settings/datausage/DataUsageSummary$1;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_SMARTMANAGER_CN:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSStateObserver:Lcom/android/settings/datausage/DataUsageSummary$5;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoSettingObserver:Lcom/android/settings/datausage/DataUsageSummary$5;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState$3()V

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_SMARTMANAGER_CN:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "udsState"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSStateObserver:Lcom/android/settings/datausage/DataUsageSummary$5;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSPreference:Landroidx/preference/SecPreference;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const v0, 0x7f142e1f

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f142e1e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "background_data_by_pco"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoSettingObserver:Lcom/android/settings/datausage/DataUsageSummary$5;

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p0, "DataUsageSummary"

    const-string v0, "onResume - end"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateState$3()V
    .locals 4

    const-string v0, "DataUsageSummary"

    const-string v1, "updateState-start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    const-string v1, "roaming_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SecPreferenceCategory;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->isDataRoaming(I)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSecureFolderMode:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_5
    return-void
.end method
