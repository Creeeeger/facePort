.class public final Lcom/android/settings/wifi/dpp/WifiNetworkListFragment$DisableUnreachableWifiEntryPreference;
.super Lcom/android/settings/wifi/WifiEntryPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final onUpdated()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->refresh()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method
