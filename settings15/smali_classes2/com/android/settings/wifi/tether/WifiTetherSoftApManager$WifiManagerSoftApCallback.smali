.class public final Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiManagerSoftApCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# instance fields
.field public mMyClass:Ljava/lang/ref/WeakReference;


# virtual methods
.method public final onConnectedClientsChanged(Ljava/util/List;)V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiManagerSoftApCallback;->mMyClass:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mWifiTetherSoftApCallback:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSoftApState:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->access$000(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/icu/text/MessageFormat;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f143706

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "count"

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final onStateChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiManagerSoftApCallback;->mMyClass:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->mWifiTetherSoftApCallback:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    iput p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSoftApState:I

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->handleWifiApStateChanged(II)V

    return-void
.end method
