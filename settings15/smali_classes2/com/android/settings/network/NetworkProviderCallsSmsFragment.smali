.class public Lcom/android/settings/network/NetworkProviderCallsSmsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final KEY_PREFERENCE_CALLS:Ljava/lang/String; = "provider_model_calls_preference"

.field static final KEY_PREFERENCE_CATEGORY_CALLING:Ljava/lang/String; = "provider_model_calling_category"

.field static final KEY_PREFERENCE_SMS:Ljava/lang/String; = "provider_model_sms_preference"

.field static final LOG_TAG:Ljava/lang/String; = "NetworkProviderCallsSmsFragment"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mNetworkProviderWifiCallingPreferenceController:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/network/NetworkProviderCallsSmsFragment$1;

    const v1, 0x7f1700f2

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/network/NetworkProviderCallsSmsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/network/telephony/CallsDefaultSubscriptionController;

    const-string v2, "provider_model_calls_preference"

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/android/settings/network/telephony/CallsDefaultSubscriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;

    const-string v2, "provider_model_sms_preference"

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;

    const-string v2, "provider_model_calling_category"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/network/NetworkProviderCallsSmsFragment;->mNetworkProviderWifiCallingPreferenceController:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;->init(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsFragment;->mNetworkProviderWifiCallingPreferenceController:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NetworkProviderCallsSmsFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7cd

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700f2

    return p0
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
