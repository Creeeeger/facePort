.class public final Lcom/android/settings/network/InternetPreferenceRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final airplaneModeOnFlow:Lkotlinx/coroutines/flow/Flow;

.field public final connectivityRepository:Lcom/android/settings/network/ConnectivityRepository;

.field public final context:Landroid/content/Context;

.field public final dataSubscriptionRepository:Lcom/android/settings/network/telephony/DataSubscriptionRepository;

.field public final wifiRepository:Lcom/android/settings/wifi/repository/WifiRepository;

.field public final wifiSummaryRepository:Lcom/android/settings/wifi/WifiSummaryRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    new-instance v0, Lcom/android/settings/network/ConnectivityRepository;

    invoke-direct {v0, p1}, Lcom/android/settings/network/ConnectivityRepository;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/wifi/WifiSummaryRepository;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/WifiSummaryRepository;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/settings/network/telephony/DataSubscriptionRepository;

    invoke-direct {v2, p1}, Lcom/android/settings/network/telephony/DataSubscriptionRepository;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/settings/wifi/repository/WifiRepository;

    invoke-direct {v3, p1}, Lcom/android/settings/wifi/repository/WifiRepository;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const-string v4, "<this>"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanDelegate;

    const/4 v5, 0x0

    const-string v6, "airplane_mode_on"

    invoke-direct {v4, p1, v6, v5}, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanDelegate;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 v5, 0x1

    invoke-static {p1, v6, v5}, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalChangeFlowKt;->settingsGlobalChangeFlow(Landroid/content/Context;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    new-instance v6, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanKt$settingsGlobalBooleanFlow$$inlined$map$1;

    invoke-direct {v6, v5, v4}, Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanKt$settingsGlobalBooleanFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settingslib/spaprivileged/settingsprovider/SettingsGlobalBooleanDelegate;)V

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    const-string v5, "context"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/InternetPreferenceRepository;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/network/InternetPreferenceRepository;->connectivityRepository:Lcom/android/settings/network/ConnectivityRepository;

    iput-object v1, p0, Lcom/android/settings/network/InternetPreferenceRepository;->wifiSummaryRepository:Lcom/android/settings/wifi/WifiSummaryRepository;

    iput-object v2, p0, Lcom/android/settings/network/InternetPreferenceRepository;->dataSubscriptionRepository:Lcom/android/settings/network/telephony/DataSubscriptionRepository;

    iput-object v3, p0, Lcom/android/settings/network/InternetPreferenceRepository;->wifiRepository:Lcom/android/settings/wifi/repository/WifiRepository;

    iput-object v4, p0, Lcom/android/settings/network/InternetPreferenceRepository;->airplaneModeOnFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
