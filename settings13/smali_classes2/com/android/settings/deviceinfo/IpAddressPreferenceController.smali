.class public Lcom/android/settings/deviceinfo/IpAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;
.source "IpAddressPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 0

    .line 40
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
