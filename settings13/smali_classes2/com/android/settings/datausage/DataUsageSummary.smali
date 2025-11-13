.class public Lcom/android/settings/datausage/DataUsageSummary;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/datausage/DataUsageEditController;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/network/MobileDataEnabledListener$Client;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static mRoamingNetworkTemplate:Landroid/net/NetworkTemplate;


# instance fields
.field private isSecureFolderMode:Z

.field private mAirplaneObserver:Landroid/database/ContentObserver;

.field private mConfirmAtBootPreference:Landroidx/preference/SecSwitchPreference;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

.field private mDataSaverPreferencePco:Lcom/android/settings/datausage/DataSaverPreference;

.field private mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

.field private mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

.field private mDefaultTemplate:Landroid/net/NetworkTemplate;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mIsVPNConnected:Z

.field private mMobileDataATT:Landroidx/preference/Preference;

.field private mMobileDataOnlyPreference:Landroidx/preference/SecPreferenceScreen;

.field private mMobileSectionCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/TemplatePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mPcoSettingObserver:Landroid/database/ContentObserver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field private mRoamingATT:Landroidx/preference/Preference;

.field private mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

.field private mSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

.field private mUDSPreference:Landroidx/preference/SecPreference;

.field private mUDSStateObserver:Landroid/database/ContentObserver;

.field private mVpnCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDataSaverPreference(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataSaverPreferencePco(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreferencePco:Lcom/android/settings/datausage/DataSaverPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMobileDataATT(Lcom/android/settings/datausage/DataUsageSummary;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMobileDataOnlyPreference(Lcom/android/settings/datausage/DataUsageSummary;)Landroidx/preference/SecPreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataOnlyPreference:Landroidx/preference/SecPreferenceScreen;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoamingATT(Lcom/android/settings/datausage/DataUsageSummary;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingATT:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUDSPreference(Lcom/android/settings/datausage/DataUsageSummary;)Landroidx/preference/SecPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSPreference:Landroidx/preference/SecPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDataSaverPreference(Lcom/android/settings/datausage/DataUsageSummary;Lcom/android/settings/datausage/DataSaverPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsVPNConnected(Lcom/android/settings/datausage/DataUsageSummary;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVPNConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateState(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetSubFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1119
    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$9;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageSummary$9;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummary;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    .line 1142
    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$10;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageSummary$10;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 130
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingATT:Landroidx/preference/Preference;

    .line 197
    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 198
    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVPNConnected:Z

    .line 211
    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->isSecureFolderMode:Z

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileSectionCategories:Ljava/util/List;

    .line 218
    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageSummary$1;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 234
    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageSummary$2;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mVpnCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 253
    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/DataUsageSummary$3;-><init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoSettingObserver:Landroid/database/ContentObserver;

    .line 294
    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/DataUsageSummary$4;-><init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSStateObserver:Landroid/database/ContentObserver;

    .line 305
    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/DataUsageSummary$5;-><init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mAirplaneObserver:Landroid/database/ContentObserver;

    .line 1085
    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageSummary$8;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private addATTMobileSection(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V
    .locals 5

    .line 790
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    .line 791
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$xml;->sec_data_usage_att:I

    const/4 v3, 0x0

    .line 790
    invoke-virtual {v0, v1, v2, v3}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 795
    :try_start_0
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    sub-int v4, v2, v1

    .line 796
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 797
    invoke-virtual {p1, v3}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v3, "DataUsageSummary"

    const-string v4, "exception handling need from Q OS"

    .line 799
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;->isSupportATTMobileDataAndRoaming(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v1, "roaming_att"

    const-string/jumbo v2, "mobile_data_att"

    if-eqz v0, :cond_1

    .line 804
    invoke-virtual {p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removeMobileDataPreference()V

    .line 805
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroidx/preference/Preference;

    .line 806
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingATT:Landroidx/preference/Preference;

    goto :goto_2

    .line 808
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private addEthernetSection()V
    .locals 3

    .line 686
    sget v0, Lcom/android/settings/R$xml;->data_usage_ethernet:I

    .line 687
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 688
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    return-void
.end method

.method private addMobileSection(ILandroid/telephony/SubscriptionInfo;)V
    .locals 3

    .line 662
    sget v0, Lcom/android/settings/R$xml;->data_usage_cellular:I

    .line 663
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 664
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settings/datausage/lib/DataUsageLib;->getMobileTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 666
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 668
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 667
    invoke-static {p2, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 669
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "mobile_category"

    .line 670
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 671
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private addRoamingSection(IZ)Lcom/android/settings/datausage/TemplatePreferenceCategory;
    .locals 4

    const-string v0, "DataUsageSummary"

    const-string v1, "addRoamingSection-start"

    .line 776
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    sget v1, Lcom/android/settings/R$xml;->sec_data_usage_roaming:I

    .line 778
    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 779
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getRoamingNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 780
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v1, p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 781
    invoke-virtual {v1, p2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setPrimary(Z)V

    const/4 p0, 0x1

    .line 782
    invoke-virtual {v1, p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setRoaming(Z)V

    const-string p0, "addRoamingSection-end"

    .line 783
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private addUDSSection()V
    .locals 3

    .line 754
    sget v0, Lcom/android/settings/R$xml;->sec_data_usage_uds:I

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroidx/preference/Preference;

    const-string/jumbo v0, "ultra_data_saver"

    .line 755
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreference;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSPreference:Landroidx/preference/SecPreference;

    .line 756
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "udsState"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 757
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSPreference:Landroidx/preference/SecPreference;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 758
    invoke-virtual {v1, v2}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 759
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSPreference:Landroidx/preference/SecPreference;

    if-ne v0, v2, :cond_0

    sget v0, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSPreference:Landroidx/preference/SecPreference;

    new-instance v1, Lcom/android/settings/datausage/DataUsageSummary$7;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/DataUsageSummary$7;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    return-void
.end method

.method static formatUsage(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;
    .locals 6

    const/high16 v4, 0x3fc80000    # 1.5625f

    const v5, 0x3f23d70a    # 0.64f

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 962
    invoke-static/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageSummary;->formatUsage(Landroid/content/Context;Ljava/lang/String;JFF)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static formatUsage(Landroid/content/Context;Ljava/lang/String;JFF)Ljava/lang/CharSequence;
    .locals 5

    .line 970
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p2, p3, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p2

    .line 975
    new-instance p3, Landroid/text/SpannableString;

    iget-object v0, p2, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-direct {p3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 976
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, p4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result p4

    const/4 v2, 0x0

    const/16 v3, 0x12

    invoke-virtual {p3, v0, v2, p4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 978
    new-instance p4, Landroid/text/SpannableString;

    const v0, 0x104051e

    .line 979
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%1$s"

    const-string v4, "^1"

    .line 980
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%2$s"

    const-string v4, "^2"

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-array p0, v1, [Ljava/lang/CharSequence;

    aput-object p3, p0, v2

    .line 981
    iget-object p2, p2, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 p3, 0x1

    aput-object p2, p0, p3

    invoke-static {p4, p0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 984
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 985
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {p1, p5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result p4

    invoke-virtual {p2, p1, v2, p4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-array p1, p3, [Ljava/lang/CharSequence;

    .line 987
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p3

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    .line 986
    invoke-static {p2, p1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getRoamingNetworkTemplate(I)Landroid/net/NetworkTemplate;
    .locals 0

    .line 818
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "DataUsageSummary"

    const-string p1, "getRoamingNetworkTemplate subId null"

    .line 820
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 826
    :cond_0
    new-instance p0, Landroid/net/NetworkTemplate$Builder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {p0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0
.end method

.method private static getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1277
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1278
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private inflatePreferences(I)Landroidx/preference/Preference;
    .locals 3

    .line 693
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    .line 694
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 693
    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    .line 695
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 696
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 698
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    .line 699
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 700
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method

.method private updateState()V
    .locals 5

    const-string v0, "DataUsageSummary"

    const-string/jumbo v1, "updateState-start"

    .line 992
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 998
    :goto_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1002
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 1003
    instance-of v4, v3, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-eqz v4, :cond_0

    .line 1004
    check-cast v3, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 1005
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/Rune;->isSupportFeatureDataUsageMobileDataOnlyApps(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1006
    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVPNConnected:Z

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->updateMobileCategoryUI(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1012
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroidx/preference/SecSwitchPreference;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1013
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mobile_data_question"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1019
    :cond_3
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroidx/preference/Preference;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1020
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1021
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1022
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingATT:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 1024
    :cond_4
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1025
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingATT:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1031
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    if-eqz v0, :cond_8

    .line 1032
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 1033
    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1034
    :cond_6
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 1036
    :cond_7
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1044
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    if-eqz v0, :cond_9

    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->isSecureFolderMode:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    .line 1045
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1048
    :cond_9
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v0, :cond_a

    .line 1049
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_a
    return-void
.end method


# virtual methods
.method protected addMobileSection(IZ)Lcom/android/settings/datausage/TemplatePreferenceCategory;
    .locals 4

    const-string v0, "DataUsageSummary"

    const-string v1, "addMobileSection-start"

    .line 708
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    sget v1, Lcom/android/settings/R$xml;->data_usage_cellular:I

    .line 710
    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 711
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/settingslib/net/DataUsageUtils;->getMobileTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 712
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v1, p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 713
    invoke-virtual {v1, p2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setPrimary(Z)V

    .line 714
    invoke-virtual {v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->updateMobileCategory()V

    .line 715
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;->isSupportATTMobileDataAndRoaming(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 716
    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->addATTMobileSection(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V

    .line 720
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportBootPopup()Z

    move-result p1

    const-string p2, "confirm_at_boot"

    if-eqz p1, :cond_1

    .line 721
    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_2

    .line 723
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 725
    :cond_1
    invoke-virtual {v1, p2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 730
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->isSecureFolderMode:Z

    if-eqz p1, :cond_3

    const-string p1, "billing_preference"

    .line 731
    invoke-virtual {v1, p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    const-string p1, "data_usage_enable"

    .line 732
    invoke-virtual {v1, p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 737
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isOverseaArea(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 738
    invoke-virtual {v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removeMobileDataPreference()V

    .line 741
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportFeatureDataUsageMobileDataOnlyApps(Landroid/content/Context;)Z

    move-result p1

    const-string/jumbo p2, "mobile_data_only"

    if-eqz p1, :cond_5

    .line 742
    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataOnlyPreference:Landroidx/preference/SecPreferenceScreen;

    goto :goto_1

    .line 744
    :cond_5
    invoke-virtual {v1, p2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    :goto_1
    const-string p0, "addMobileSection-end"

    .line 747
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method addMobileSection(I)V
    .locals 1

    const/4 v0, 0x0

    .line 643
    invoke-direct {p0, p1, v0}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(ILandroid/telephony/SubscriptionInfo;)V

    return-void
.end method

.method addWifiSection()V
    .locals 3

    .line 678
    sget v0, Lcom/android/settings/R$xml;->data_usage_wifi:I

    .line 679
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 681
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    return-void
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 631
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 633
    new-instance v1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    .line 634
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    .line 635
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v1, p1, v2, p0, v3}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;I)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    .line 636
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-object v0
.end method

.method enableProxySubscriptionManager(Landroid/content/Context;)V
    .locals 0

    .line 650
    invoke-static {p1}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    .line 651
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/network/ProxySubscriptionManager;->setLifecycle(Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 332
    sget p0, Lcom/android/settings/R$string;->help_url_data_usage:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DataUsageSummary"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x25

    return p0
.end method

.method public getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;
    .locals 0

    .line 1065
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p0, p0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 621
    sget p0, Lcom/android/settings/R$xml;->data_usage:I

    return p0
.end method

.method hasActiveSubscription()Z
    .locals 0

    .line 656
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    .line 657
    invoke-virtual {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionsInfo()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 658
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const-string v0, "DataUsageSummary"

    const-string/jumbo v1, "onCreate - start"

    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 343
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getDataUsageFeatureProvider()Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    .line 344
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->enableProxySubscriptionManager(Landroid/content/Context;)V

    .line 349
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v1

    .line 352
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    move v1, v3

    .line 358
    :cond_0
    invoke-static {p1, v2}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    .line 361
    invoke-direct {p0, v2}, Lcom/android/settings/datausage/DataUsageSummary;->getRoamingNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v4

    sput-object v4, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingNetworkTemplate:Landroid/net/NetworkTemplate;

    const-string/jumbo v4, "status_header"

    .line 365
    invoke-virtual {p0, v4}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/DataUsageSummaryPreference;

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    .line 367
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->isSecureFolderMode:Z

    .line 382
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportPco()Z

    move-result v5

    const-string/jumbo v6, "restrict_background"

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    .line 383
    invoke-virtual {p0, v6}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/DataSaverPreference;

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreferencePco:Lcom/android/settings/datausage/DataSaverPreference;

    .line 385
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "background_data_by_pco"

    .line 384
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v7, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    if-eqz v1, :cond_4

    .line 389
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->isAdmin()Z

    move-result v8

    if-nez v8, :cond_2

    .line 392
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    if-eqz v5, :cond_3

    goto :goto_1

    .line 397
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/datausage/DataSaverPreference;

    iput-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    goto :goto_2

    .line 395
    :cond_4
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 403
    :goto_2
    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    if-eqz v5, :cond_5

    iget-boolean v6, p0, Lcom/android/settings/datausage/DataUsageSummary;->isSecureFolderMode:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    .line 404
    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 405
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 406
    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    sget v6, Lcom/android/settings/R$string;->data_saver_title_chn:I

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(I)V

    .line 407
    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    const-class v6, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataSaverSummaryCHN;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 414
    :cond_5
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v5

    .line 415
    iget-object v6, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileSectionCategories:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_10

    .line 417
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 418
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageBaseFragment;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 419
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 421
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    move v6, v3

    goto :goto_4

    .line 422
    :cond_7
    :goto_3
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(IZ)Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-result-object v6

    .line 424
    iget-object v8, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileSectionCategories:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v7

    :goto_4
    if-eqz v1, :cond_8

    .line 428
    new-instance v8, Lcom/android/settings/datausage/DataUsageSummary$6;

    invoke-direct {v8, p0}, Lcom/android/settings/datausage/DataUsageSummary$6;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    invoke-interface {v1, v8}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 436
    :cond_8
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v8

    .line 437
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v8

    .line 439
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isEnabledHidingByOpportunisticEsim(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 440
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->isAdmin()Z

    move-result v6

    invoke-virtual {p0, v1, v6}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(IZ)Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-result-object v1

    .line 442
    iget-object v6, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileSectionCategories:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v7

    goto :goto_7

    :cond_9
    move v9, v3

    :goto_5
    if-eqz v1, :cond_d

    .line 444
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_d

    .line 445
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    .line 446
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->isAdmin()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-eq v11, v7, :cond_a

    if-ne v6, v8, :cond_b

    :cond_a
    move v11, v7

    goto :goto_6

    :cond_b
    move v11, v3

    .line 446
    :goto_6
    invoke-virtual {p0, v10, v11}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(IZ)Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-result-object v10

    .line 449
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v7, :cond_c

    .line 450
    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/DataUsageBaseFragment;->getSimName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 451
    :cond_c
    iget-object v6, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileSectionCategories:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move v6, v7

    goto :goto_5

    .line 457
    :cond_d
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasActiveSubscription()Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz v5, :cond_e

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->addWifiSection()V

    .line 467
    :cond_e
    invoke-static {v3}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isRoamingArea(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 468
    invoke-direct {p0, v2, v3}, Lcom/android/settings/datausage/DataUsageSummary;->addRoamingSection(IZ)Lcom/android/settings/datausage/TemplatePreferenceCategory;

    :cond_f
    move v3, v6

    goto :goto_8

    :cond_10
    if-eqz v5, :cond_11

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->addWifiSection()V

    .line 478
    :cond_11
    :goto_8
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 479
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_12
    if-eqz v3, :cond_13

    const-string v1, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string v2, "UDS"

    .line 483
    invoke-static {v1, v2}, Lcom/android/settings/datausage/DataUsageSummary;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "com.samsung.android.uds.SHOW_UDS_ACTIVITY"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 484
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->addUDSSection()V

    .line 488
    :cond_13
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasEthernet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 489
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->addEthernetSection()V

    .line 491
    :cond_14
    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 495
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez p1, :cond_15

    .line 496
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 498
    :cond_15
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz p1, :cond_16

    .line 499
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 504
    :cond_16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportFeatureDataUsageMobileDataOnlyApps(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 505
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 506
    new-instance p1, Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, p0}, Lcom/android/settings/network/MobileDataEnabledListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    .line 510
    :cond_17
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo p0, "onCreate - end"

    .line 513
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 520
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    sget v0, Lcom/android/settings/R$menu;->data_usage:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 523
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 550
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "restrict_background"

    .line 551
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/Preference;->getOrder()I

    move-result v1

    goto :goto_1

    .line 552
    :goto_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 553
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 560
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onMobileDataEnabledChange()V
    .locals 0

    .line 1114
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 537
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 538
    sget v0, Lcom/android/settings/R$id;->data_usage_menu_cellular_networks:I

    if-ne p1, v0, :cond_0

    .line 539
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.app.telephonyui.action.OPEN_NET_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 3

    .line 882
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 885
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isDisableMobileDataDuringVolte()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 888
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    const-string v0, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string v1, "UDS"

    .line 893
    invoke-static {v0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 899
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportPco()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 900
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 905
    :cond_2
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;->isSupportATTMobileDataAndRoaming(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 906
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSupportFeatureDataUsageMobileDataOnlyApps(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 907
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroidx/preference/SecSwitchPreference;

    if-ne p1, v0, :cond_0

    .line 611
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 612
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "mobile_data_question"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 574
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroidx/preference/Preference;

    const-string v1, "DataUsageSummary"

    const-string v2, "com.samsung.android.app.telephonyui.action.OPEN_NET_SETTINGS"

    if-ne p1, v0, :cond_1

    .line 575
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 579
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 581
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMobileDataATT tap exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 585
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 588
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingATT:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_3

    .line 589
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 593
    :try_start_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRoamingATT tap exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 599
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 604
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 529
    sget p0, Lcom/android/settings/R$id;->data_usage_menu_cellular_networks:I

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 531
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    const-string v0, "DataUsageSummary"

    const-string/jumbo v1, "onresume- start"

    .line 833
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    .line 836
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    const-string v1, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string v2, "UDS"

    .line 839
    invoke-static {v1, v2}, Lcom/android/settings/datausage/DataUsageSummary;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 840
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "udsState"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 841
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 842
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mUDSPreference:Landroidx/preference/SecPreference;

    if-eqz v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 844
    sget v1, Lcom/android/settings/R$string;->switch_on_text:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 845
    :cond_0
    sget v1, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 844
    :goto_0
    invoke-virtual {v4, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 851
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isDisableMobileDataDuringVolte()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 853
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v4, "phone"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 854
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x800

    invoke-virtual {v1, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 859
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportPco()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 860
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "background_data_by_pco"

    .line 861
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoSettingObserver:Landroid/database/ContentObserver;

    .line 860
    invoke-virtual {v1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 868
    :cond_3
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;->isSupportATTMobileDataAndRoaming(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 869
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSupportFeatureDataUsageMobileDataOnlyApps(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 870
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_5
    const-string/jumbo p0, "onresume- end"

    .line 875
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 915
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 916
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSupportFeatureDataUsageMobileDataOnlyApps(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    .line 918
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x4

    .line 919
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xf

    .line 920
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mVpnCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 918
    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 927
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 928
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSupportFeatureDataUsageMobileDataOnlyApps(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataStateListener:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    .line 930
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mVpnCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method public updateDataUsage()V
    .locals 1

    .line 1075
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    .line 1077
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v0, :cond_0

    .line 1078
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
