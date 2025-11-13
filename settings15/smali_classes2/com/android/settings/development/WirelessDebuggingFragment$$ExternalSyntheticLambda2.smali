.class public final synthetic Lcom/android/settings/development/WirelessDebuggingFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/development/WirelessDebuggingFragment;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/development/WirelessDebuggingFragment;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    iput-object p2, p0, Lcom/android/settings/development/WirelessDebuggingFragment$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/development/WirelessDebuggingFragment;

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingFragment$$ExternalSyntheticLambda2;->f$1:Ljava/util/Map;

    check-cast p1, Ljava/util/Map$Entry;

    sget-object v1, Lcom/android/settings/development/WirelessDebuggingFragment;->sAdbIpAddressPreferenceController:Lcom/android/settings/development/AdbIpAddressPreferenceController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p0, v0, Lcom/android/settings/development/WirelessDebuggingFragment;->mPairedDevicesCategory:Landroidx/preference/PreferenceCategory;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/AdbPairedDevicePreference;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/debug/PairDevice;

    iput-object p0, v0, Lcom/android/settings/development/AdbPairedDevicePreference;->mPairedDevice:Landroid/debug/PairDevice;

    iget-object p1, p0, Landroid/debug/PairDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Landroid/debug/PairDevice;->connected:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f14028f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    :goto_1
    return p0
.end method
