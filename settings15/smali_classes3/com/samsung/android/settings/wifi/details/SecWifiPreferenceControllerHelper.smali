.class public final Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mValidationUpdaters:Ljava/util/Map;

.field public final mValidatorCallback:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$1;

.field public final mValidators:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->mValidators:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->mValidationUpdaters:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$1;-><init>(Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->mValidatorCallback:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$1;

    return-void
.end method


# virtual methods
.method public final addValidator(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$ValidationUpdater;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->mValidators:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->ipAndProxyFieldsAreValid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->mValidatorCallback:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$1;

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mCallback:Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper$1;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/SecWifiPreferenceControllerHelper;->mValidationUpdaters:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
