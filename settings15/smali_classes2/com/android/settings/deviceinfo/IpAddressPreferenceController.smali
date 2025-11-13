.class public final Lcom/android/settings/deviceinfo/IpAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# virtual methods
.method public final isAvailable()Z
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
