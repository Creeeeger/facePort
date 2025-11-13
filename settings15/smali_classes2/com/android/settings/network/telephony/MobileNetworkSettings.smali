.class public Lcom/android/settings/network/telephony/MobileNetworkSettings;
.super Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;


# static fields
.field static final KEY_CLICKED_PREF:Ljava/lang/String; = "key_clicked_pref"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mClickedPrefKey:Ljava/lang/String;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

.field public mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

.field public mSubId:I

.field public mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSettings$1;

    const v1, 0x7f1700e2

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_mobile_networks"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->mHiddenControllerList:Ljava/util/List;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    invoke-static/range {p1 .. p1}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    new-array v0, v1, [Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const-string v4, "android.provider.extra.SUB_ID"

    const-string v5, "NetworkSettings"

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getActiveSubscriptionIdList(Landroid/content/Context;)[I

    move-result-object v8

    array-length v9, v8

    if-lt v9, v3, :cond_1

    aget v2, v8, v1

    :cond_1
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "display subId from intent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v6, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {v0, v1, v5}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "intent is null, can not get subId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v6, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const-string v2, " from intent."

    invoke-static {v0, v1, v2, v5}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getActiveSubscriptionIdList(Landroid/content/Context;)[I

    move-result-object v8

    array-length v9, v8

    if-lt v9, v3, :cond_4

    aget v2, v8, v1

    :cond_4
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "display subId from getArguments(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v6, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {v0, v1, v5}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/settings/network/MobileNetworkRepository;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/MobileNetworkRepository;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    iget-object v0, v6, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSettings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance v8, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;

    const-string v0, "network_mode_eid_info"

    invoke-direct {v8, v7, v0}, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget v0, v6, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v8, p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkEidPreferenceController;->init(Landroidx/fragment/app/Fragment;I)V

    new-instance v9, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    iget v0, v6, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-direct {v9, v7, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/content/Context;I)V

    new-instance v10, Lcom/android/settings/network/telephony/RoamingPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget v5, v6, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const-string v2, "button_roaming_key"

    move-object v0, v10

    move-object/from16 v1, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/telephony/RoamingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;I)V

    new-instance v11, Lcom/android/settings/network/telephony/CallsDefaultSubscriptionController;

    const-string v0, "calls_preference"

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v11, v7, v0, v1, p0}, Lcom/android/settings/network/telephony/CallsDefaultSubscriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;)V

    new-instance v12, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;

    const-string v0, "sms_preference"

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v12, v7, v0, v1, p0}, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;)V

    new-instance v13, Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget v5, v6, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const-string v2, "mobile_data_enable"

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;I)V

    new-instance v14, Lcom/android/settings/network/telephony/ConvertToEsimPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget v5, v6, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const-string v2, "convert_to_esim"

    move-object v0, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/telephony/ConvertToEsimPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;I)V

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    filled-new-array/range {v2 .. v8}, [Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NetworkSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x623

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700e2

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x11

    if-eq p1, p3, :cond_1

    const/16 p3, 0x12

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const-string v1, "NetworkSettings"

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const-string v0, "Invalid subId, get the default subscription to show."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {p1, v0}, Lcom/android/settings/network/SubscriptionUtil;->getSubscriptionOrDefault(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid subId request "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {p1, p0, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Show NetworkSettings fragment for subId"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {v0, v3, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v3, "android.provider.extra.SUB_ID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_6

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    iput v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const-string v4, "android.telephony.ims.action.SHOW_CAPABILITY_DISCOVERY_OPT_IN"

    const-string v5, "discovery_dialog:"

    if-ne v3, v2, :cond_2

    sget v3, Lcom/android/settings/Settings$MobileNetworkActivity;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    :cond_3
    sget v2, Lcom/android/settings/Settings$MobileNetworkActivity;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    iget-object v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "showContactDiscoveryDialog, Invalid subId request "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    iget-object v1, v2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    new-instance v2, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    invoke-direct {v2}, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "sub_id_key"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "carrier_name_key"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    move-object v0, v2

    :cond_5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_6
    :goto_0
    const-class v0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->init(I)V

    const-class v0, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;->init(I)V

    const-class v0, Lcom/android/settings/datausage/BillingCyclePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/BillingCyclePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/BillingCyclePreferenceController;->init(I)V

    const-class v0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->init(I)V

    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v2

    const-string v3, "store"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "factory"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "defaultCreationExtras"

    invoke-static {v2, v3, v0, v1, v2}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/lifecycle/viewmodel/CreationExtras;Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    move-result-object v0

    const-class v1, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v3, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

    const-class v1, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->init(ILcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;)V

    const-class v0, Lcom/android/settings/network/telephony/DisabledSubscriptionController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/DisabledSubscriptionController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->init(I)V

    const-class v0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->init(I)V

    const-class v0, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;->init(I)V

    const-class v0, Lcom/android/settings/network/telephony/NrDisabledInDsdsFooterPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/NrDisabledInDsdsFooterPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NrDisabledInDsdsFooterPreferenceController;->init(I)V

    const-class v0, Lcom/android/settings/network/telephony/MobileNetworkSpnPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/MobileNetworkSpnPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkSpnPreferenceController;->init(Landroidx/fragment/app/Fragment;I)V

    const-class v0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkPhoneNumberPreferenceController;->init(Landroidx/fragment/app/Fragment;I)V

    const-class v0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkImeiPreferenceController;->init(Landroidx/fragment/app/Fragment;I)V

    const-class v0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    iget-object v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iget-object v4, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->init(Landroidx/fragment/app/FragmentManager;ILcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V

    new-instance v1, Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->setWifiPickerTrackerHelper(Lcom/android/settings/wifi/WifiPickerTrackerHelper;)V

    :cond_7
    const-class p1, Lcom/android/settings/network/telephony/RoamingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/RoamingPreferenceController;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    iget-object v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->init(Landroidx/fragment/app/FragmentManager;ILcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V

    :cond_8
    const-class p1, Lcom/android/settings/network/telephony/SatelliteSettingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/SatelliteSettingPreferenceController;

    if-eqz p1, :cond_9

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/SatelliteSettingPreferenceController;->init(I)V

    :cond_9
    const-class p1, Lcom/android/settings/network/telephony/ApnPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/ApnPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/ApnPreferenceController;->init(I)V

    const-class p1, Lcom/android/settings/network/telephony/CarrierPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/CarrierPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/CarrierPreferenceController;->init(I)V

    const-class p1, Lcom/android/settings/network/telephony/DataUsagePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DataUsagePreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->init(I)V

    const-class p1, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->init(I)V

    const-class p1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->init(ILandroidx/fragment/app/FragmentManager;)V

    const-class p1, Lcom/android/settings/network/telephony/DataServiceSetupPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DataServiceSetupPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/DataServiceSetupPreferenceController;->init(I)V

    const-class p1, Lcom/android/settings/network/telephony/Enable2gPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/Enable2gPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->init(I)Lcom/android/settings/network/telephony/Enable2gPreferenceController;

    const-class p1, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->init(Landroidx/lifecycle/Lifecycle;I)V

    const-class p1, Lcom/android/settings/network/telephony/CallingPreferenceCategoryController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/CallingPreferenceCategoryController;

    const-class v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->init(ILcom/android/settings/network/telephony/CallingPreferenceCategoryController;)Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    const-class v0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->init(I)Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;

    move-result-object v0

    const-class v1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->init(I)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->addListener(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    move-result-object v0

    const-class v1, Lcom/android/settings/network/telephony/NetworkPreferenceCategoryController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/NetworkPreferenceCategoryController;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkPreferenceCategoryController;->init(I)Lcom/android/settings/network/telephony/NetworkPreferenceCategoryController;

    move-result-object v1

    filled-new-array {v0}, [Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    const-class v0, Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->init(Landroidx/preference/PreferenceManager;I)V

    const-class v0, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->init(Landroidx/preference/PreferenceManager;I)V

    const-class v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->init(ILcom/android/settings/network/telephony/CallingPreferenceCategoryController;)Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    move-result-object p1

    const-class v0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->init(I)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->addListener(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    const-class v0, Lcom/android/settings/network/telephony/Enhanced4gCallingPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/Enhanced4gCallingPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->init(I)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->addListener(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    const-class v0, Lcom/android/settings/network/telephony/Enhanced4gAdvancedCallingPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/Enhanced4gAdvancedCallingPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->init(I)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->addListener(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    const-class p1, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->init(Landroidx/fragment/app/FragmentManager;I)V

    const-class p1, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->init(I)V

    const-class p1, Lcom/android/settings/network/telephony/TransferEsimPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/TransferEsimPreferenceController;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/TransferEsimPreferenceController;->init(ILcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;)V

    const-class p1, Lcom/android/settings/network/telephony/ConvertToEsimPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/ConvertToEsimPreferenceController;

    if-eqz p1, :cond_a

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/ConvertToEsimPreferenceController;->init(ILcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;)V

    :cond_a
    const-class p1, Lcom/android/settings/network/telephony/AbstractSubscriptionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->useAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/AbstractSubscriptionPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/AbstractSubscriptionPreferenceController;->init(I)V

    goto :goto_1

    :cond_b
    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onAvailableSubInfoChanged(Ljava/util/List;)V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    iget-object v3, v2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget v4, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const-string v5, "NetworkSettings"

    if-ne v3, v4, :cond_0

    iput-object v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Set subInfo for subId "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {p1, v0, v5}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    if-ne v4, v3, :cond_1

    iget-boolean v3, v2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isDefaultSubscriptionSelection:Z

    if-eqz v3, :cond_1

    iput-object v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    const-string v2, "Set subInfo to default subInfo."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSettings;Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "NetworkSettings"

    const-string v1, "onCreate:+"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->getPreferenceControllersAsList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;-><init>(Ljava/util/Collection;Landroidx/lifecycle/Lifecycle;)V

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->close()V

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->onRestoreInstance(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const v0, 0x7f0a0592

    const v1, 0x7f141816

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080576

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0592

    if-ne v0, v1, :cond_0

    iget p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "subscription_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "RenameMobileNetwork"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/MobileNetworkRepository;->removeRegister(Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;)V

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cdma_system_select_key"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cdma_subscription_key"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x11

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    :cond_3
    return v1
.end method

.method public onRestoreInstance(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_clicked_pref"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, p0, p0, v1}, Lcom/android/settings/network/MobileNetworkRepository;->addRegister(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;I)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkRepository;->updateEntity()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume() subId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const-string v1, "NetworkSettings"

    invoke-static {v0, p0, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_clicked_pref"

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/android/settings/network/MobileNetworkListFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/network/MobileNetworkListFragment$Companion$SearchIndexProvider;

    invoke-static {p0}, Lcom/android/settings/network/MobileNetworkListFragment$Companion;->collectAirplaneModeAndFinishIfOn(Lcom/android/settings/SettingsPreferenceFragment;)V

    return-void
.end method
