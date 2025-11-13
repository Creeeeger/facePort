.class public Lcom/android/settings/network/NetworkProviderCallsSmsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NetworkProviderCallsSmsFragment.java"


# static fields
.field static final KEY_PREFERENCE_CALLS:Ljava/lang/String; = "provider_model_calls_preference"

.field static final KEY_PREFERENCE_CATEGORY_BACKUP_CALLING:Ljava/lang/String; = "provider_model_backup_calling_category"

.field static final KEY_PREFERENCE_CATEGORY_CALLING:Ljava/lang/String; = "provider_model_calling_category"

.field static final KEY_PREFERENCE_SMS:Ljava/lang/String; = "provider_model_sms_preference"

.field static final LOG_TAG:Ljava/lang/String; = "NetworkProviderCallsSmsFragment"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mNetworkProviderWifiCallingPreferenceController:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 100
    new-instance v0, Lcom/android/settings/network/NetworkProviderCallsSmsFragment$1;

    sget v1, Lcom/android/settings/R$xml;->network_provider_calls_sms:I

    invoke-direct {v0, v1}, Lcom/android/settings/network/NetworkProviderCallsSmsFragment$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/network/NetworkProviderCallsSmsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v1, Lcom/android/settings/network/telephony/CallsDefaultSubscriptionController;

    const-string/jumbo v2, "provider_model_calls_preference"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/network/telephony/CallsDefaultSubscriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;

    const-string/jumbo v2, "provider_model_sms_preference"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;

    const-string/jumbo v2, "provider_model_calling_category"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/network/NetworkProviderCallsSmsFragment;->mNetworkProviderWifiCallingPreferenceController:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;

    .line 67
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;->init(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 68
    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderCallsSmsFragment;->mNetworkProviderWifiCallingPreferenceController:Lcom/android/settings/network/telephony/NetworkProviderWifiCallingPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v1, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;

    const-string/jumbo v2, "provider_model_backup_calling_category"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingPreferenceController;->init(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NetworkProviderCallsSmsFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 87
    sget p0, Lcom/android/settings/R$xml;->network_provider_calls_sms:I

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 81
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
