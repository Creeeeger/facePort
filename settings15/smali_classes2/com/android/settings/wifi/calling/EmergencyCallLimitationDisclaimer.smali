.class public final Lcom/android/settings/wifi/calling/EmergencyCallLimitationDisclaimer;
.super Lcom/android/settings/wifi/calling/DisclaimerItem;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final KEY_HAS_AGREED_EMERGENCY_LIMITATION_DISCLAIMER:Ljava/lang/String; = "key_has_agreed_emergency_limitation_disclaimer"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# virtual methods
.method public final getMessageId()I
    .locals 0

    const p0, 0x7f14326e

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "EmergencyCallLimitationDisclaimer"

    return-object p0
.end method

.method public final getPrefKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_has_agreed_emergency_limitation_disclaimer"

    return-object p0
.end method

.method public final getTitleId()I
    .locals 0

    const p0, 0x7f14326f

    return p0
.end method

.method public final shouldShow()Z
    .locals 2

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
    const-string v1, "emergency_notification_delay_int"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "shouldShow: false due to carrier config is default(-1)."

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-super {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->shouldShow()Z

    move-result p0

    return p0
.end method
