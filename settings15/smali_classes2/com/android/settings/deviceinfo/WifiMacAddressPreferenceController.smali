.class public final Lcom/android/settings/deviceinfo/WifiMacAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# virtual methods
.method public final isAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050062

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
