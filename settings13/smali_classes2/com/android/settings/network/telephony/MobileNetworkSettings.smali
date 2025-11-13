.class public Lcom/android/settings/network/telephony/MobileNetworkSettings;
.super Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;
.source "MobileNetworkSettings.java"


# static fields
.field static final KEY_CLICKED_PREF:Ljava/lang/String; = "key_clicked_pref"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mActiveSubscriptionsListener:Lcom/android/settings/network/ActiveSubscriptionsListener;

.field private mActiveSubscriptionsListenerCount:I

.field private mCdmaSubscriptionPreferenceController:Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

.field private mCdmaSystemSelectPreferenceController:Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

.field private mClickedPrefKey:Ljava/lang/String;

.field private mDropFirstSubscriptionChangeNotify:Z

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$2so2PxzibKAwFQHsj_YqOKr90cI(Lcom/android/settings/network/telephony/MobileNetworkSettings;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->lambda$onSubscriptionDetailChanged$1(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uo0SJudzFnocZFcYN2idJ4RZ7P4(Landroid/telephony/SubscriptionInfo;Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->lambda$onSubscriptionDetailChanged$0(Landroid/telephony/SubscriptionInfo;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r4BdkX8848GsaMwNBXy9kjpgJ9s(Lcom/android/settings/network/telephony/MobileNetworkSettings;Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->lambda$onSubscriptionDetailChanged$2(Landroid/telephony/SubscriptionInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSubscriptionDetailChanged(Lcom/android/settings/network/telephony/MobileNetworkSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->onSubscriptionDetailChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 397
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSettings$2;

    sget v1, Lcom/android/settings/R$xml;->mobile_network_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/network/telephony/MobileNetworkSettings$2;-><init>(I)V

    sput-object v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_config_mobile_networks"

    .line 89
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    return-void
.end method

.method private getContactDiscoveryFragment(I)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;
    .locals 0

    .line 410
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 411
    invoke-static {p1}, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;->getFragmentTag(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    return-object p0
.end method

.method private static synthetic lambda$onSubscriptionDetailChanged$0(Landroid/telephony/SubscriptionInfo;Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    instance-of v0, p1, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 291
    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 292
    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSubscriptionDetailChanged$1(Ljava/util/function/Consumer;)V
    .locals 0

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onSubscriptionDetailChanged$2(Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    if-nez p1, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 310
    iput p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mActiveSubscriptionsListenerCount:I

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->redrawPreferenceControllers()V

    return-void
.end method

.method private onSubscriptionDetailChanged()V
    .locals 3

    .line 274
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mDropFirstSubscriptionChangeNotify:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 275
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mDropFirstSubscriptionChangeNotify:Z

    const-string p0, "NetworkSettings"

    const-string v0, "Callback during onResume()"

    .line 276
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/settings/network/SubscriptionUtil;->getSubscriptionOrDefault(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 287
    new-instance v1, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/SubscriptionInfo;)V

    .line 297
    new-instance v2, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSettings;Ljava/util/function/Consumer;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 300
    :cond_1
    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mActiveSubscriptionsListenerCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mActiveSubscriptionsListenerCount:I

    if-eq v1, v2, :cond_2

    return-void

    .line 305
    :cond_2
    new-instance v1, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSettings;Landroid/telephony/SubscriptionInfo;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeContactDiscoveryDialog(I)V
    .locals 0

    .line 416
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getContactDiscoveryFragment(I)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 418
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method private showContactDiscoveryDialog(Landroid/telephony/SubscriptionInfo;)V
    .locals 1

    if-nez p1, :cond_0

    .line 424
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid subId request "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->onDestroy()V

    return-void

    .line 430
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 429
    invoke-static {p1, v0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 431
    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getContactDiscoveryFragment(I)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 433
    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;->newInstance(ILjava/lang/CharSequence;)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    move-result-object v0

    .line 437
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_2

    .line 438
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 439
    invoke-static {p0}, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;->getFragmentTag(I)Ljava/lang/String;

    move-result-object p0

    .line 438
    invoke-virtual {v0, p1, p0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private updateSubscriptions(Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 447
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 449
    iput p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.provider.extra.SUB_ID"

    const-string v2, "NetworkSettings"

    if-nez v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSearchableSubscriptionId(Landroid/content/Context;)I

    move-result p1

    .line 128
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "display subId from intent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "intent is null, can not get the subId from intent."

    .line 132
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 136
    invoke-static {p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSearchableSubscriptionId(Landroid/content/Context;)I

    move-result p1

    .line 135
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "display subId from getArguments(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    iget p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    new-array p0, v0, [Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 141
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 143
    new-instance v1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;I)V

    aput-object v1, p1, v0

    .line 143
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NetworkSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x623

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 332
    sget p0, Lcom/android/settings/R$xml;->mobile_network_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x11

    if-eq p1, p3, :cond_1

    const/16 p3, 0x12

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 362
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 363
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 364
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 352
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    .line 353
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 355
    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 6

    .line 150
    const-class v0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 153
    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {p1, v2}, Lcom/android/settings/network/SubscriptionUtil;->getSubscriptionOrDefault(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid subId request "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 159
    :cond_0
    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 160
    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->updateSubscriptions(Landroid/telephony/SubscriptionInfo;)V

    .line 165
    invoke-static {v1}, Lcom/android/settings/Settings$MobileNetworkActivity;->doesIntentContainOptInAction(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    invoke-direct {p0, v3}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->removeContactDiscoveryDialog(I)V

    .line 171
    :cond_1
    invoke-static {v1}, Lcom/android/settings/Settings$MobileNetworkActivity;->doesIntentContainOptInAction(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 173
    invoke-static {p1, v1}, Lcom/android/settings/network/SubscriptionUtil;->getSubscriptionOrDefault(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 172
    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->showContactDiscoveryDialog(Landroid/telephony/SubscriptionInfo;)V

    .line 176
    :cond_2
    const-class v1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    .line 177
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    if-eqz v1, :cond_3

    .line 179
    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->init(I)V

    .line 181
    :cond_3
    const-class v1, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->init(I)V

    .line 182
    const-class v1, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;->init(I)V

    .line 183
    const-class v1, Lcom/android/settings/datausage/BillingCyclePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/BillingCyclePreferenceController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/BillingCyclePreferenceController;->init(I)V

    .line 184
    const-class v1, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->init(I)V

    .line 185
    const-class v1, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->init(I)V

    .line 186
    const-class v1, Lcom/android/settings/network/telephony/DisabledSubscriptionController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/DisabledSubscriptionController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->init(I)V

    .line 187
    const-class v1, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const/16 v3, 0x12

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->init(ILandroidx/fragment/app/Fragment;I)V

    .line 189
    const-class v1, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;->init(I)V

    .line 190
    const-class v1, Lcom/android/settings/network/telephony/NrDisabledInDsdsFooterPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/NrDisabledInDsdsFooterPreferenceController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NrDisabledInDsdsFooterPreferenceController;->init(I)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->init(Landroidx/fragment/app/FragmentManager;I)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    new-instance v1, Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    .line 193
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    .line 192
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->setWifiPickerTrackerHelper(Lcom/android/settings/wifi/WifiPickerTrackerHelper;)V

    .line 195
    const-class p1, Lcom/android/settings/network/telephony/RoamingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/RoamingPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->init(Landroidx/fragment/app/FragmentManager;I)V

    .line 196
    const-class p1, Lcom/android/settings/network/telephony/ApnPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/ApnPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/ApnPreferenceController;->init(I)V

    .line 197
    const-class p1, Lcom/android/settings/network/telephony/CarrierPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/CarrierPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/CarrierPreferenceController;->init(I)V

    .line 198
    const-class p1, Lcom/android/settings/network/telephony/DataUsagePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DataUsagePreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->init(I)V

    .line 199
    const-class p1, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->init(I)V

    .line 200
    const-class p1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->init(I)V

    .line 201
    const-class p1, Lcom/android/settings/network/telephony/DataServiceSetupPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DataServiceSetupPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/DataServiceSetupPreferenceController;->init(I)V

    .line 202
    const-class p1, Lcom/android/settings/network/telephony/Enable2gPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/Enable2gPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->init(I)Lcom/android/settings/network/telephony/Enable2gPreferenceController;

    .line 203
    const-class p1, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->init(Landroidx/lifecycle/Lifecycle;I)V

    .line 205
    const-class p1, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->init(I)Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    move-result-object p1

    .line 208
    const-class v0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->init(I)Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;

    move-result-object v0

    .line 210
    const-class v1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    .line 211
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 212
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->init(I)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    move-result-object v1

    .line 213
    invoke-virtual {v1, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->addListener(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    move-result-object v0

    .line 214
    const-class v1, Lcom/android/settings/network/telephony/NetworkPreferenceCategoryController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/NetworkPreferenceCategoryController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkPreferenceCategoryController;->init(I)Lcom/android/settings/network/telephony/NetworkPreferenceCategoryController;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 215
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    .line 216
    const-class v0, Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mCdmaSystemSelectPreferenceController:Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    .line 217
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->init(Landroidx/preference/PreferenceManager;I)V

    .line 218
    const-class v0, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mCdmaSubscriptionPreferenceController:Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    .line 219
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->init(Landroidx/preference/PreferenceManager;I)V

    .line 221
    const-class v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    .line 222
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->init(I)Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    move-result-object v0

    .line 223
    const-class v1, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    .line 224
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v3}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->init(I)Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    move-result-object v1

    .line 225
    const-class v3, Lcom/android/settings/network/telephony/CallingPreferenceCategoryController;

    invoke-virtual {p0, v3}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v3

    check-cast v3, Lcom/android/settings/network/telephony/CallingPreferenceCategoryController;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/settingslib/core/AbstractPreferenceController;

    aput-object p1, v5, v4

    aput-object v0, v5, v2

    const/4 p1, 0x2

    aput-object v1, v5, p1

    .line 226
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 225
    invoke-virtual {v3, p1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    .line 228
    const-class p1, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->init(I)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    move-result-object p1

    .line 229
    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->addListener(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    .line 230
    const-class p1, Lcom/android/settings/network/telephony/Enhanced4gCallingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/Enhanced4gCallingPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->init(I)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    move-result-object p1

    .line 231
    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->addListener(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    .line 232
    const-class p1, Lcom/android/settings/network/telephony/Enhanced4gAdvancedCallingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/Enhanced4gAdvancedCallingPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->init(I)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    move-result-object p1

    .line 233
    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->addListener(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    .line 234
    const-class p1, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->init(Landroidx/fragment/app/FragmentManager;I)V

    .line 235
    const-class p1, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;

    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, p0}, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->init(I)Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "NetworkSettings"

    const-string/jumbo v1, "onCreate:+"

    .line 240
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->getPreferenceControllersAsList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->setTelephonyAvailabilityStatus(Ljava/util/Collection;)Lcom/android/settings/network/telephony/TelephonyStatusControlSession;

    move-result-object v0

    .line 245
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 246
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user"

    .line 247
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mUserManager:Landroid/os/UserManager;

    .line 248
    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 249
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 251
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->close()V

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->onRestoreInstance(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 376
    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    sget v0, Lcom/android/settings/R$id;->edit_sim_name:I

    sget v1, Lcom/android/settings/R$string;->mobile_network_sim_name:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108052a

    .line 379
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 380
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 382
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mActiveSubscriptionsListener:Lcom/android/settings/network/ActiveSubscriptionsListener;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->stop()V

    .line 320
    :cond_0
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onExpandButtonClick()V
    .locals 0

    .line 63
    invoke-super {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->onExpandButtonClick()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 387
    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->edit_sim_name:I

    if-ne v0, v1, :cond_0

    .line 389
    iget p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {p1}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->newInstance(I)Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;

    move-result-object p1

    .line 390
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "RenameMobileNetwork"

    .line 389
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 394
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cdma_system_select_key"

    .line 109
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cdma_subscription_key"

    .line 110
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 111
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x11

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 115
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    :cond_3
    return v1
.end method

.method onRestoreInstance(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_clicked_pref"

    .line 326
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 258
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResume() subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mActiveSubscriptionsListener:Lcom/android/settings/network/ActiveSubscriptionsListener;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSettings$1;

    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/network/telephony/MobileNetworkSettings$1;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSettings;Landroid/os/Looper;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mActiveSubscriptionsListener:Lcom/android/settings/network/ActiveSubscriptionsListener;

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mDropFirstSubscriptionChangeNotify:Z

    .line 270
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mActiveSubscriptionsListener:Lcom/android/settings/network/ActiveSubscriptionsListener;

    invoke-virtual {p0}, Lcom/android/settings/network/ActiveSubscriptionsListener;->start()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 342
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 343
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    const-string v0, "key_clicked_pref"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
