.class public Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsEnabler;
.super Ljava/lang/Object;
.source "WifiDevelopmentSettingsEnabler.java"


# static fields
.field private static wifiDevelopmentSettingsEnabled:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static isWifiDevelopmentSettingsEnabled()Z
    .locals 1

    .line 25
    sget-boolean v0, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsEnabler;->wifiDevelopmentSettingsEnabled:Z

    return v0
.end method

.method public static setWifiDevelopmentSettingsEnabled(Z)V
    .locals 0

    .line 29
    sput-boolean p0, Lcom/samsung/android/settings/wifi/develop/WifiDevelopmentSettingsEnabler;->wifiDevelopmentSettingsEnabled:Z

    return-void
.end method
