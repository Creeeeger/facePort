.class public interface abstract Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;


# virtual methods
.method public abstract onNumSavedNetworksChanged()V
.end method

.method public abstract onNumSavedSubscriptionsChanged()V
.end method

.method public onWifiEntriesChanged()V
    .locals 0

    return-void
.end method

.method public onWifiEntriesChanged(I)V
    .locals 0

    invoke-interface {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;->onWifiEntriesChanged()V

    return-void
.end method
