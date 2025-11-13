.class public final synthetic Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of p0, p1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updatePreference()V

    :cond_0
    return-void
.end method
