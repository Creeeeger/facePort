.class public final Lcom/android/settings/wifi/calling/LocationPolicyDisclaimer;
.super Lcom/android/settings/wifi/calling/DisclaimerItem;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final KEY_HAS_AGREED_LOCATION_DISCLAIMER:Ljava/lang/String; = "key_has_agreed_location_disclaimer"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# virtual methods
.method public final getMessageId()I
    .locals 0

    const p0, 0x7f143270

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "LocationPolicyDisclaimer"

    return-object p0
.end method

.method public final getPrefKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_has_agreed_location_disclaimer"

    return-object p0
.end method

.method public final getTitleId()I
    .locals 0

    const p0, 0x7f143271

    return p0
.end method

.method public final shouldShow()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget v1, p0, Lcom/android/settings/wifi/calling/DisclaimerItem;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    :goto_0
    const-string v1, "show_wfc_location_privacy_policy_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v0, "shouldShow: false due to carrier config is false."

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->logd(Ljava/lang/String;)V

    return v2

    :cond_1
    const-string v1, "carrier_default_wfc_ims_enabled_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "shouldShow: false due to WFC is on as default."

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->logd(Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-super {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->shouldShow()Z

    move-result p0

    return p0
.end method
